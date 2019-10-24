module AWS.EC2.VPCGatewayAttachment where 

import Data.Maybe (Maybe(..))
import Record (merge)


type VPCGatewayAttachment =
  { "VpcId" :: String
  , "InternetGatewayId" :: Maybe String
  , "VpnGatewayId" :: Maybe String
  }

vpcgPCGatewayAttachment :: { "VpcId" :: String } -> VPCGatewayAttachment
vpcgPCGatewayAttachment required =
  merge required
    { "InternetGatewayId" : Nothing
    , "VpnGatewayId" : Nothing
    }