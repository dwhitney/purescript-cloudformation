module CloudFormation.Resource where

import Prelude

import Data.Array as Array
import Foreign (Foreign)
import Simple.JSON (class WriteForeign, writeImpl)
import Unsafe.Coerce (unsafeCoerce)


class Resource a where
  type_ :: a -> String

data OpaqueResource = OpaqueResource String Foreign (Array String)
  
instance writeOpaqueResources :: WriteForeign OpaqueResource where
  writeImpl (OpaqueResource type' json dependsOn) | Array.length dependsOn > 0 = writeImpl { "Type" : type', "Properties" : json, "DependsOn" : dependsOn }
  writeImpl (OpaqueResource type' json _) = writeImpl { "Type" : type', "Properties" : json }

toOpaqueResource :: forall a
  . Resource a
 => WriteForeign a
 => a
 -> Array String
 -> OpaqueResource
toOpaqueResource resource dependsOn = unsafeCoerce $ OpaqueResource (type_ resource) (writeImpl resource) dependsOn

