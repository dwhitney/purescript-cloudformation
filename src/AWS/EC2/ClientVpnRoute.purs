module AWS.EC2.ClientVpnRoute where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ClientVpnRoute =
  { "ClientVpnEndpointId" :: String
  , "TargetVpcSubnetId" :: String
  , "DestinationCidrBlock" :: String
  , "Description" :: Maybe String
  }

clientVpnRoute :: { "ClientVpnEndpointId" :: String, "TargetVpcSubnetId" :: String, "DestinationCidrBlock" :: String } -> ClientVpnRoute
clientVpnRoute required =
  merge required
    { "Description" : Nothing
    }