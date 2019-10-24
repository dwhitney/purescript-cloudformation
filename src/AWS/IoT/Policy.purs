module AWS.IoT.Policy where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type Policy =
  { "PolicyDocument" :: Foreign
  , "PolicyName" :: Maybe String
  }

policy :: { "PolicyDocument" :: Foreign } -> Policy
policy required =
  merge required
    { "PolicyName" : Nothing
    }