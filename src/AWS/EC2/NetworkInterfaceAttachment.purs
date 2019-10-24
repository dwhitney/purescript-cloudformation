module AWS.EC2.NetworkInterfaceAttachment where 

import Data.Maybe (Maybe(..))
import Record (merge)


type NetworkInterfaceAttachment =
  { "DeviceIndex" :: String
  , "InstanceId" :: String
  , "NetworkInterfaceId" :: String
  , "DeleteOnTermination" :: Maybe Boolean
  }

networkInterfaceAttachment :: { "DeviceIndex" :: String, "InstanceId" :: String, "NetworkInterfaceId" :: String } -> NetworkInterfaceAttachment
networkInterfaceAttachment required =
  merge required
    { "DeleteOnTermination" : Nothing
    }