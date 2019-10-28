module CloudFormation where

import Prelude

import CloudFormation.Resource (OpaqueResource)
import Data.Maybe (Maybe)
import Data.Newtype (class Newtype, unwrap, wrap)
import Foreign (Foreign)
import Foreign.Object (Object)
import Simple.JSON (class WriteForeign, writeImpl, writeJSON)

newtype Json = Json String
derive instance ntJson :: Newtype Json _
derive newtype instance writeJson :: WriteForeign Json

data Value a
  = Value a
  | OpaqueValue Foreign
  | Ref String
  | GetAtt String String
  | Join (Value a) (Array (Value a))
  | ImportValue (Value a)

instance writeValue :: (WriteForeign a) => WriteForeign (Value a) where
  writeImpl = case _ of
    Value a         -> writeImpl a
    OpaqueValue a   -> a
    Ref id          -> writeImpl { "Ref" : id }
    GetAtt r a      -> writeImpl { "Fn::GetAtt" : [r, a] }
    Join d vs       -> writeImpl { "Fn::Join" : ([ d ] <> vs) }
    ImportValue a   -> writeImpl { "Fn::ImportValue" : a }


newtype Export a = Export (Value a)
derive instance newtypeExport :: Newtype (Export a) _
instance writeExport :: WriteForeign a =>  WriteForeign (Export a) where writeImpl (Export export) = writeImpl { "Name" : export }

data Output a = Output (Value a) (Maybe (Export a)) (Maybe String)
instance writeOutput :: WriteForeign a => WriteForeign (Output a) where
  writeImpl (Output value export description) = writeImpl
    { "Description" : description
    , "Value" : value
    , "Export" : export
    }

toOpaqueOutput :: ∀ a. WriteForeign a => Output a -> OpaqueOutput
toOpaqueOutput = wrap <<< writeImpl

newtype OpaqueOutput = OpaqueOutput Foreign
derive instance newtypeOpaqueOutput :: Newtype OpaqueOutput _
instance writeOpaqueOutput :: WriteForeign OpaqueOutput where writeImpl = unwrap

type Template =
  { "Resources" :: Object OpaqueResource
  , "Outputs" :: Maybe (Object OpaqueOutput)
  }

writeTemplate :: Template -> String
writeTemplate template = writeJSON template

   
