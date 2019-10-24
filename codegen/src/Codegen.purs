module Codegen where

import Prelude

import AST (File(..), Types(..), getDocumentation, specToTypes)
import AST.Property (Primitive)
import AST.Property as P
import Data.Array as Array
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..), fromMaybe, isJust)
import Data.String as String
import Data.String.Regex as Regex
import Data.String.Regex.Flags as Flags
import Data.String.Regex.Unsafe as UR
import Data.Traversable (traverse_)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Effect.Console as Console
import Node.Encoding (Encoding(..))
import Node.FS.Sync as FS
import Node.Path (FilePath)
import Spec (getSpec)

typesAndFunction :: Types -> String
typesAndFunction t = do 
  let types = typeToPS t
  let function = typeToFunction t
  Array.intercalate "\n\n" $ Array.filter (\s -> s /= "") [ types, function ]

getImports :: Types -> Array String
getImports (ResourceType { name, typeName, documentation, properties, attributes }) = 
  bind properties getImportsFromProperty <> getMergeImport properties
getImports (PropertyType { name, typeName, documentation, properties, property }) = do
  let p = fromMaybe [] (property <#> getImportsFromProperty)
  p <> (bind properties getImportsFromProperty) <> getMergeImport properties

getImportsFromProperty :: P.Property -> Array String
getImportsFromProperty p@(P.PrimitiveItemType { containerType : P.List, primitive }) = getImportsFromPrimitive primitive <> getMaybeImport p
getImportsFromProperty p@(P.PrimitiveItemType { containerType : P.Map, primitive }) = [ "import Foreign.Object (Object)" ] <> getImportsFromPrimitive primitive <> getMaybeImport p
getImportsFromProperty p@(P.PrimitiveType { primitive }) = getImportsFromPrimitive primitive <> getMaybeImport p
getImportsFromProperty p@(P.ItemType { type: t, containerType : P.List }) = getImportsFromType t <> getMaybeImport p
getImportsFromProperty p@(P.ItemType { type: t, containerType : P.Map }) = [ "import Foreign.Object (Object)" ] <> getImportsFromType t <> getMaybeImport p
getImportsFromProperty p@(P.Type { type: t }) = getImportsFromType t <> getMaybeImport p

getMaybeImport :: P.Property -> Array String
getMaybeImport property | isRequired property = []
getMaybeImport _  = [ "import Data.Maybe (Maybe(..))" ]

getImportsFromType :: String -> Array String
getImportsFromType "Tag" = [ "import CloudFormation.Tag (Tag)" ]
getImportsFromType _ = []

getMergeImport :: Array P.Property -> Array String
getMergeImport properties = do
  let { yes, no } = Array.partition isRequired properties
  if Array.length yes == 0 || Array.length no == 0
    then []
    else [ "import Record (merge)" ]

getImportsFromPrimitive :: P.Primitive -> Array String
getImportsFromPrimitive P.J = [ "import Foreign (Foreign)" ]
getImportsFromPrimitive _ = []

typeToPS :: Types -> String
typeToPS t@(ResourceType { name, typeName, documentation, properties, attributes }) = do 
  let docs = getTypeDocumentation t
  let sortedProps = Array.sortWith sortByRequired properties
  Array.intercalate "\n"
    [ docs
    , "type " <> propertyTypeName name typeName <> " ="
    , "  { " <> (Array.intercalate "\n  , " $ map (fieldToPS typeName) sortedProps  )
    , "  }"
    ]
typeToPS (PropertyType { name, typeName, documentation, properties, property : Just property } )  = do 
  case property of
    P.PrimitiveItemType { primitive, containerType } -> do 
      let container = case containerType of
                        P.List -> "Array"
                        P.Map  -> "Object"
      "type " <> propertyTypeName name typeName <> " = " <> container <> " " <> (primitiveToPS primitive)
    P.ItemType { type: t, containerType } -> do 
      let container = case containerType of
                        P.List -> "Array"
                        P.Map  -> "Object"
      "type " <> propertyTypeName name typeName <> " = " <> container <> " " <> t
    P.Type { type: t } -> do
      "type " <> propertyTypeName name typeName <> " = " <> t
    P.PrimitiveType { primitive } -> do
      "type " <> propertyTypeName name typeName <> " = " <> (primitiveToPS primitive)
typeToPS t@(PropertyType { name, typeName, documentation, properties, property : Nothing }) = do 
  let docs = getTypeDocumentation t
  let sortedProps = Array.sortWith sortByRequired properties
  Array.intercalate "\n"
    [ docs
    , "type " <> propertyTypeName name typeName <> " ="
    , "  { " <> (Array.intercalate "\n  , " $ map (fieldToPS typeName) sortedProps  )
    , "  }"
    ]

getTypeDocumentation :: Types -> String
getTypeDocumentation (ResourceType { name, documentation, properties }) = do
  let top = "-- | `" <> name <> "`" <> documentation <>   "-- |\n"  
  let props = Array.intercalate "\n" $ map getPropertyDocumentation properties
  top <> props
getTypeDocumentation (PropertyType { name, documentation, properties }) = do 
  let top = "-- | `" <> name <> "`" <> documentation <>   "-- |\n"  
  let props = Array.intercalate "\n" $ map getPropertyDocumentation properties
  top <> props

propertyTypeName :: String -> String -> String
propertyTypeName name typeName = fromMaybe typeName do
  last <- Array.last $ String.split (String.Pattern "::") name
  let tokens = String.split (String.Pattern ".") last
  a <- Array.index tokens 0
  b <- Array.index tokens 1
  if a == b
    then Just (typeName <> "_")
    else Just (typeName)
  

sortByRequired :: P.Property -> Int
sortByRequired p = if isRequired p then 0 else 1

isRequired :: P.Property -> Boolean 
isRequired (P.PrimitiveItemType { required }) = required
isRequired (P.PrimitiveType     { required }) = required
isRequired (P.ItemType          { required }) = required
isRequired (P.Type              { required }) = required

getPropertyDocumentation :: P.Property -> String
getPropertyDocumentation (P.PrimitiveItemType { name, documentation }) | documentation /= "" = "-- | - `" <> name <> "`\n-- |   - " <> documentation 
getPropertyDocumentation (P.PrimitiveType     { name, documentation }) | documentation /= "" = "-- | - `" <> name <> "`\n-- |   - " <> documentation 
getPropertyDocumentation (P.ItemType          { name, documentation }) | documentation /= "" = "-- | - `" <> name <> "`\n-- |   - " <> documentation 
getPropertyDocumentation (P.Type              { name, documentation }) | documentation /= "" = "-- | - `" <> name <> "`\n-- |   - " <> documentation 
getPropertyDocumentation _ = ""



fieldToPS :: String -> P.Property -> String
fieldToPS _ (P.PrimitiveItemType { name: n, required : true, containerType : P.List, primitive }) = 
  (fieldName n) <> " :: Array " <> (primitiveToPS primitive)
fieldToPS _ (P.PrimitiveItemType { name: n, required : false, containerType : P.List, primitive }) = 
  (fieldName n) <> " :: Maybe (Array " <> (primitiveToPS primitive) <> ")"
fieldToPS _ (P.PrimitiveItemType { name: n, required : true, containerType : P.Map, primitive }) = 
  (fieldName n) <> " :: Object " <> (primitiveToPS primitive)
fieldToPS _ (P.PrimitiveItemType { name: n, required : false, containerType : P.Map, primitive }) = 
  (fieldName n) <> " :: Maybe (Object " <> (primitiveToPS primitive) <> ")"
fieldToPS _ (P.PrimitiveType { name: n, required : true, primitive }) = 
  (fieldName n) <> " :: " <> (primitiveToPS primitive)
fieldToPS _ (P.PrimitiveType { name: n, required : false, primitive }) = 
  (fieldName n) <> " :: Maybe " <> (primitiveToPS primitive)
fieldToPS parentTypeName (P.ItemType { name: n, type: t, required: true, containerType : P.List }) =
  (fieldName n) <> " :: Array " <> propertyFieldTypeName parentTypeName t
fieldToPS parentTypeName (P.ItemType { name: n, type: t, required: false, containerType : P.List }) =
  (fieldName n) <> " :: Maybe (Array " <> propertyFieldTypeName parentTypeName t <> ")"
fieldToPS parentTypeName (P.ItemType { name: n, type: t, required: true, containerType : P.Map }) =
  (fieldName n) <> " :: Object " <> propertyFieldTypeName parentTypeName t
fieldToPS parentTypeName (P.ItemType { name: n, type: t, required: false, containerType : P.Map }) =
  (fieldName n) <> " :: Maybe (Object " <> propertyFieldTypeName parentTypeName t <> ")"
fieldToPS parentTypeName (P.Type { name: n, required: true, type: t }) =
  (fieldName n) <> " :: " <> propertyFieldTypeName parentTypeName t
fieldToPS parentTypeName (P.Type { name: n, required: false, type: t }) =
  (fieldName n) <> " :: Maybe " <> propertyFieldTypeName parentTypeName t

propertyFieldTypeName :: String -> String -> String
propertyFieldTypeName parentTypeName typeName | parentTypeName == typeName = typeName <> "_"
propertyFieldTypeName _ typeName = typeName

typeByName :: String -> Array Types -> Maybe Types
typeByName name types = do
  Array.find (\t -> getName t == name) types
  where
    getName (ResourceType { name: n }) = n
    getName (PropertyType { name: n }) = n

typeToFunction :: Types -> String
typeToFunction (ResourceType { name, typeName, documentation, properties, attributes }) =
  Array.intercalate "\n"
    [ functionName (propertyTypeName name typeName) <> " :: " <> (fromMaybe typeName $ ((requiredRecord typeName properties) <#> \s -> s <> " -> " <> typeName))
    , functionBody name typeName properties
    ]
typeToFunction (PropertyType { name, typeName, documentation, properties, property : Just property }) = "" -- no function if this is a "property" and not a "PropertyType" this happens with AWS::Transfer::User.SshPublicKey - it's just a type alias for String
typeToFunction (PropertyType { name, typeName, documentation, properties }) = 
  Array.intercalate "\n"
    [ functionName (propertyTypeName name typeName) <> " :: " <> (fromMaybe (propertyTypeName name typeName) $ ((requiredRecord typeName properties) <#> \s -> s <> " -> " <> (propertyTypeName name typeName)))
    , functionBody name typeName properties
    ]

functionBody :: String ->  String -> Array P.Property -> String
functionBody name typeName properties | Array.length properties == 0 = do
  functionName  (propertyTypeName name typeName) <> " = {}"
functionBody name typeName properties = do 
  let { yes: required } = Array.partition isRequired properties
  if Array.length required > 0
    then Array.intercalate "\n"
          [ functionName (propertyTypeName name typeName) <> " required ="
          , defaultRequiredRecord properties
          ]
    else Array.intercalate "\n"
          [ functionName (propertyTypeName name typeName) <> " ="
          , defaultRequiredRecord properties
          ]

requiredRecord :: String -> Array P.Property -> Maybe String
requiredRecord parentTypeName properties = do
  let { yes: required } = Array.partition isRequired properties
  if Array.length required == 0
    then Nothing
    else Just ("{ " <> (Array.intercalate ", " $ map (fieldToPS parentTypeName) required) <> " }")

defaultRequiredRecord :: Array P.Property -> String
defaultRequiredRecord properties = do
  let { yes: required, no: notRequired } = Array.partition isRequired properties
  if Array.length notRequired == 0
    then "  required"
    else if Array.length required > 0 
            then Array.intercalate "\n"
                [ "  merge required"
                , "    { " <> (Array.intercalate "\n    , " $ map (\p -> (fieldName $ propertyName p) <> " : Nothing") notRequired)
                , "    }"
                ]
            else Array.intercalate "\n"
                [ "  { " <> (Array.intercalate "\n  , " $ map (\p -> (fieldName $ propertyName p) <> " : Nothing") notRequired)
                , "  }"
                ]


propertyName :: P.Property -> String
propertyName (P.PrimitiveItemType { name }) = name
propertyName (P.PrimitiveType     { name }) = name
propertyName (P.ItemType          { name }) = name
propertyName (P.Type              { name }) = name

functionName :: String -> String
functionName name = do
  let regex = UR.unsafeRegex "(^[A-Z]+).*" Flags.noFlags
  let replaced = Regex.replace' regex (\match subs -> do
        let first = String.toLower $ fromMaybe "" $ Array.head subs
        first <> (String.drop 1 match)
      ) name 
  if replaced == "instance"
    then "instance_"
    else replaced

fieldName :: String -> String
fieldName name = do
  let regex = UR.unsafeRegex "^[A-Z]+.*" Flags.noFlags
  if isJust $ Regex.match regex name
    then "\"" <> name <> "\""
    else name

primitiveToPS :: Primitive -> String
primitiveToPS P.B = "Boolean"
primitiveToPS P.S = "String"
primitiveToPS P.L = "Number"
primitiveToPS P.I = "Int"
primitiveToPS P.D = "Number"
primitiveToPS P.T = "String"
primitiveToPS P.J = "Foreign"

getFile :: Types -> File
getFile (ResourceType { file }) = file
getFile (PropertyType { file }) = file

getModuleName :: File -> String
getModuleName file = do 
  let name = String.replace (String.Pattern ".purs") (String.Replacement "") $ go "" file
  "CloudFormation." <> name
  where
    go name (Directory n next) | name /= "" = go (name <> "." <> n) next
    go name (Directory n next)              = go (n) next
    go name (File n)           | name /= "" = name <> "." <> n
    go name (File n)                        = n

codegen :: Array File -> Effect (Map File (Array Types))
codegen ignore = do
  spec      <- getSpec
  types     <- specToTypes spec
  let typeMap = 
        Array.foldl (\m t -> 
          case (Map.lookup (getFile t) m) of
            Nothing -> Map.insert (getFile t) [t] m
            Just array -> Map.insert (getFile t) ([t] <> array) m
        ) mempty types
  pure $ Map.filterKeys (\key -> Array.notElem key ignore) typeMap

write :: FilePath -> Map File (Array Types) -> Effect Unit
write basePath typeMap = do 
  let (tuples :: Array (Tuple File (Array Types))) = Map.toUnfoldable typeMap
  traverse_ (\(Tuple file types) -> do
    let imports = Array.intercalate "\n" $ Array.nub $ bind types getImports
    let moduleName = "module " <> (getModuleName file) <> " where \n\n" <> imports <> "\n" 
    go basePath (toCode moduleName types) file
  ) tuples
  where
    toCode :: String -> Array Types -> String
    toCode moduleName types = do
      Array.intercalate "\n\n" $ 
        [ moduleName ] <>
        map typesAndFunction types


    go :: FilePath -> String -> File -> Effect Unit
    go path code (Directory name next) = do
      let nextPath = path <> "/" <> name
      mkDir nextPath
      go nextPath code next
    go path code (File name) = do
      mkDir path
      let filePath = path <> "/" <> name
      Console.log ("Writing: " <> filePath)
      FS.writeTextFile UTF8 filePath code
   
    mkDir :: FilePath -> Effect Unit
    mkDir path = do
      exists <- FS.exists path
      if exists
        then pure unit
        else FS.mkdir path
