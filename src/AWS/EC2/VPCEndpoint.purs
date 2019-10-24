module AWS.EC2.VPCEndpoint where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type VPCEndpoint =
  { "ServiceName" :: String
  , "VpcId" :: String
  , "PolicyDocument" :: Maybe Foreign
  , "PrivateDnsEnabled" :: Maybe Boolean
  , "RouteTableIds" :: Maybe (Array String)
  , "SecurityGroupIds" :: Maybe (Array String)
  , "SubnetIds" :: Maybe (Array String)
  , "VpcEndpointType" :: Maybe String
  }

vpcePCEndpoint :: { "ServiceName" :: String, "VpcId" :: String } -> VPCEndpoint
vpcePCEndpoint required =
  merge required
    { "PolicyDocument" : Nothing
    , "PrivateDnsEnabled" : Nothing
    , "RouteTableIds" : Nothing
    , "SecurityGroupIds" : Nothing
    , "SubnetIds" : Nothing
    , "VpcEndpointType" : Nothing
    }