module CloudFormation where

import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign, writeImpl)

newtype Json = Json String
derive instance ntJson :: Newtype Json _
derive newtype instance writeJson :: WriteForeign Json

data Value a
  = Value a
  | Ref String

instance writeValue :: (WriteForeign a) => WriteForeign (Value a) where
  writeImpl = case _ of
    Value a -> writeImpl a
    Ref id  -> writeImpl { "Ref" : id }
