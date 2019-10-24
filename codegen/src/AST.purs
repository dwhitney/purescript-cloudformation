module AST where

import Prelude

import AST.Attribute as A
import AST.Property as P
import Data.Array as Array
import Data.Maybe (Maybe(..), fromMaybe)
import Data.String as String
import Data.Symbol (SProxy(..))
import Data.Traversable (traverse)
import Data.Tuple (Tuple(..))
import Effect (Effect)
import Effect.Exception (catchException, throw)
import Foreign.Object as Object
import Record as Record
import Spec as Spec
import Utils (liftMaybe)

data File
  = File String
  | Directory String File

derive instance fileEq :: Eq File
derive instance fileOrd :: Ord File

type ResourceTypeRec =
  { file :: File
  , name :: String
  , typeName :: String
  , documentation :: String
  , properties :: Array P.Property
  , attributes :: Array A.Attribute
  }

type PropertyTypeRec =
  { file :: File
  , property :: Maybe P.Property
  , name :: String
  , typeName :: String
  , documentation :: String
  , properties :: Array P.Property
  }

data Types
  = ResourceType ResourceTypeRec 
  | PropertyType PropertyTypeRec 


specToTypes :: Spec.Spec -> Effect (Array Types)
specToTypes spec = do
  properties  <- specToPropertyTypes spec
  resources   <- specToResourceTypes spec
  pure $ properties <> resources

specToResourceTypes :: Spec.Spec -> Effect (Array Types)
specToResourceTypes { "ResourceTypes" : Just resourceTypes } = do
  traverse (\(Tuple name resourceType) -> resourceTypeToAST name resourceType) (Object.toUnfoldable resourceTypes)
specToResourceTypes _ = throw "No resources!"

specToPropertyTypes :: Spec.Spec -> Effect (Array Types)
specToPropertyTypes { "PropertyTypes" : Just propertyTypes } = do
  traverse (\(Tuple name propertyType) -> propertyTypeToAST name propertyType) (Object.toUnfoldable propertyTypes)
specToPropertyTypes _ = throw "No resources!"

resourceTypeToAST :: String -> Spec.ResourceType -> Effect Types
resourceTypeToAST name resourceType = do
  let documentation = getDocumentation resourceType
  let tokens = String.split (String.Pattern "::") name
  typeName <- liftMaybe ("Couldn't extract typeName: " <> name) $ Array.last tokens
  file <- getFile name 
  properties <- case resourceType."Properties" of
                  Nothing -> pure []
                  Just obj -> traverse (\(Tuple n p) -> propertyToAST n p) (Object.toUnfoldable obj)
  attributes <- case resourceType."Attributes" of
                  Nothing -> pure []
                  Just obj -> traverse (\(Tuple n p) -> attributeToAST n p) (Object.toUnfoldable obj)
  pure $ ResourceType { file, documentation, typeName, name, properties, attributes }

propertyTypeToAST :: String -> Spec.PropertyType -> Effect Types
propertyTypeToAST name propertyType = do
  let documentation = getDocumentation propertyType
  let tokens = String.split (String.Pattern ".") name
  typeName <- liftMaybe ("Couldn't extract typeName: " <> name) $ Array.last tokens
  file <- getFile name 
  properties <- case propertyType."Properties" of
                  Nothing -> pure []
                  Just obj -> traverse (\(Tuple n p) -> propertyToAST n p) (Object.toUnfoldable obj)
  let propertyRec = Record.delete (SProxy :: SProxy "Properties") propertyType
  property <- catchException (\_ -> pure Nothing) (propertyToAST name propertyRec <#> Just)
  pure $ PropertyType { file, documentation, typeName, name, properties, property }

getFile :: String -> Effect File
getFile name = do
  let tokens = String.split (String.Pattern "::") name
  typeName <- liftMaybe ("Couldn't extract typeName: " <> name) $ Array.last tokens
  fileTokens <- liftMaybe "no init" $ Array.init tokens
  pure $ Array.foldl (\f s -> Directory s f) (File (fileName typeName)) $ Array.reverse fileTokens 

fileName :: String -> String
fileName name =
  fromMaybe "" ((Array.head $ String.split (String.Pattern ".") name) <#> \s -> s <> ".purs")

propertyToAST :: String -> Spec.Property -> Effect P.Property
propertyToAST name p @ { "ItemType" : Just itemType, "Type" : Just "List" } = do 
  let required = getRequired p
      documentation = getDocumentation p
      containerType = P.List
      updateType = getUpdateType p 
      duplicatesAllowed = getDuplicatesAllowed p
  pure $ P.ItemType { name, documentation, required, containerType, updateType, type: itemType, duplicatesAllowed }
propertyToAST name p @ { "ItemType" : Just itemType, "Type" : Just "Map" } = do
  let required = getRequired p
      documentation = getDocumentation p
      containerType = P.Map
      updateType = getUpdateType p 
      duplicatesAllowed = getDuplicatesAllowed p
  pure $ P.ItemType { name, documentation, required, containerType, updateType, type: itemType, duplicatesAllowed }
propertyToAST name p @ { "PrimitiveItemType" : Just primitiveItemType, "Type" : Just "List" } = do
  let required = getRequired p
      documentation = getDocumentation p
      containerType = P.List
      updateType = getUpdateType p 
      duplicatesAllowed = getDuplicatesAllowed p
  primitive <- getPrimitive primitiveItemType
  pure $ P.PrimitiveItemType { name, documentation, required, containerType, updateType, primitive, duplicatesAllowed }
propertyToAST name p @ { "PrimitiveItemType" : Just primitiveItemType, "Type" : Just "Map" } = do 
  let required = getRequired p
      documentation = getDocumentation p
      containerType = P.Map
      updateType = getUpdateType p 
      duplicatesAllowed = getDuplicatesAllowed p
  primitive <- getPrimitive primitiveItemType
  pure $ P.PrimitiveItemType { name, documentation, required, containerType, updateType, primitive, duplicatesAllowed }
propertyToAST name p @ { "PrimitiveType" : Just primitiveItemType } = do
  primitive <- getPrimitive primitiveItemType
  let documentation = getDocumentation p
  pure $ P.PrimitiveType { name, documentation, required : getRequired p, primitive }
propertyToAST name p @ { "Type" : Just t } = do
  let required = getRequired p
  let documentation = getDocumentation p
  pure $ P.Type { name, documentation, required, type : t }
propertyToAST _ p = do
  let e = "Couldn't match property: " <> (show p)
  throw e

attributeToAST :: String -> Spec.Attribute -> Effect A.Attribute
attributeToAST name a @ { "ItemType" : Just itemType, "Type" : Just "List" } = do 
  let containerType = P.List
  pure $ A.ItemType { name, containerType, type: itemType }
attributeToAST name a @ { "ItemType" : Just itemType, "Type" : Just "Map" } = do
  let containerType = P.Map
  pure $ A.ItemType { name, type: itemType, containerType }
attributeToAST name a @ { "PrimitiveItemType" : Just primitiveItemType, "Type" : Just "List" } = do
  let containerType = P.List
  primitive <- getPrimitive primitiveItemType
  pure $ A.PrimitiveItemType { name, containerType, primitive }
attributeToAST name a @ { "PrimitiveItemType" : Just primitiveItemType, "Type" : Just "Map" } = do 
  let containerType = P.Map
  primitive <- getPrimitive primitiveItemType
  pure $ A.PrimitiveItemType { name, containerType, primitive }
attributeToAST name a @ { "PrimitiveType" : Just primitiveItemType } = do
  primitive <- getPrimitive primitiveItemType
  pure $ A.PrimitiveType { name, primitive }
attributeToAST name a @ { "Type" : Just t } = do
  pure $ A.Type { name, type : t }
attributeToAST _ a = do
  let e = "Couldn't match attribute: " <> (show a)
  throw e

getUpdateType :: ∀ r. { "UpdateType" :: Maybe String | r } -> P.UpdateType
getUpdateType { "UpdateType" : Just "Mutable" } = P.Mutable
getUpdateType { "UpdateType" : Just "Immutable" } = P.Immutable
getUpdateType { "UpdateType" : Just "Conditional" } = P.Conditional
getUpdateType _ = P.Unknown

getDocumentation :: ∀ r. { "Documentation" :: Maybe String | r } -> String
getDocumentation { "Documentation" : Just str } = str
getDocumentation _ = ""

getRequired :: ∀ r. { "Required" :: Maybe Boolean | r } -> Boolean
getRequired { "Required" : Just true } = true
getRequired _ = false

getDuplicatesAllowed :: ∀ r. { "DuplicatesAllowed" :: Maybe Boolean | r } -> Boolean
getDuplicatesAllowed { "DuplicatesAllowed" : Just true } = true
getDuplicatesAllowed _ = false

getPrimitive :: String -> Effect P.Primitive
getPrimitive "Boolean"    = pure P.B
getPrimitive "String"     = pure P.S
getPrimitive "Long"       = pure P.L
getPrimitive "Integer"    = pure P.I
getPrimitive "Double"     = pure P.D
getPrimitive "Timestamp"  = pure P.T
getPrimitive "Json"       = pure P.J
getPrimitive p = do
  let e = "Couldn't match Primitive: " <> (show p)
  throw e
