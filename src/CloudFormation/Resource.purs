module CloudFormation.Resource where

import Prelude

import Foreign (Foreign)
import Simple.JSON (class WriteForeign, writeImpl)
import Unsafe.Coerce (unsafeCoerce)


class Resource a where
  type_ :: a -> String

data OpaqueResource = OpaqueResource String Foreign
  
instance writeOpaqueResources :: WriteForeign OpaqueResource where
  writeImpl (OpaqueResource type' json) = writeImpl { "Type" : type', "Properties" : json }

toOpaqueResource :: forall a
  . Resource a
 => WriteForeign a
 => a
 -> OpaqueResource
toOpaqueResource resource = unsafeCoerce $ OpaqueResource (type_ resource) (writeImpl resource)

