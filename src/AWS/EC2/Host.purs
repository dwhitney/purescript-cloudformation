module AWS.EC2.Host where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Host =
  { "AvailabilityZone" :: String
  , "InstanceType" :: String
  , "AutoPlacement" :: Maybe String
  , "HostRecovery" :: Maybe String
  }

host :: { "AvailabilityZone" :: String, "InstanceType" :: String } -> Host
host required =
  merge required
    { "AutoPlacement" : Nothing
    , "HostRecovery" : Nothing
    }