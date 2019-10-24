module AWS.IoT.Thing where 

import Data.Maybe (Maybe(..))
import Foreign.Object (Object)


type Thing =
  { "AttributePayload" :: Maybe AttributePayload
  , "ThingName" :: Maybe String
  }

thing :: Thing
thing =
  { "AttributePayload" : Nothing
  , "ThingName" : Nothing
  }

type AttributePayload =
  { "Attributes" :: Maybe (Object String)
  }

attributePayload :: AttributePayload
attributePayload =
  { "Attributes" : Nothing
  }