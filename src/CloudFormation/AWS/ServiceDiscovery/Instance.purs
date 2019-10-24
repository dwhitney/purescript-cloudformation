module CloudFormation.AWS.ServiceDiscovery.Instance where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type Instance =
  { "InstanceAttributes" :: Foreign
  , "ServiceId" :: String
  , "InstanceId" :: Maybe String
  }

instance_ :: { "InstanceAttributes" :: Foreign, "ServiceId" :: String } -> Instance
instance_ required =
  merge required
    { "InstanceId" : Nothing
    }