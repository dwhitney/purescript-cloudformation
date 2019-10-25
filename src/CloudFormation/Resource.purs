module CloudFormation.Resource where

import Prelude

import Data.Tuple (Tuple(..))
import Foreign (Foreign)
import Foreign.Object as Object
import Prim.RowList as RL
import Record.Extra (class MapRecord, mapRecord)
import Simple.JSON (class WriteForeign, writeJSON, writeImpl)
import Unsafe.Coerce (unsafeCoerce)


class Resource a where
  type_ :: a -> String

data OpaqueResource = OpaqueResource String Foreign
  
instance writeOpaqueResources :: WriteForeign OpaqueResource where
  writeImpl (OpaqueResource type' json) = writeImpl { "Type" : type', "Properties" : json }

toOpaque :: forall a
  . Resource a
 => WriteForeign a
 => a
 -> OpaqueResource
toOpaque resource = unsafeCoerce $ OpaqueResource (type_ resource) (writeImpl resource)

type Template a = ( "Type" :: String, "Properties" :: a )

writeTemplate :: Array (Tuple String OpaqueResource) -> String
writeTemplate tuples =
  writeJSON $ { "Resources" : Object.fromFoldable tuples }
   
