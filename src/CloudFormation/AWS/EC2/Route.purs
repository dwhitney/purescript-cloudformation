module CloudFormation.AWS.EC2.Route where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Route =
  { "RouteTableId" :: String
  , "DestinationCidrBlock" :: Maybe String
  , "DestinationIpv6CidrBlock" :: Maybe String
  , "EgressOnlyInternetGatewayId" :: Maybe String
  , "GatewayId" :: Maybe String
  , "InstanceId" :: Maybe String
  , "NatGatewayId" :: Maybe String
  , "NetworkInterfaceId" :: Maybe String
  , "TransitGatewayId" :: Maybe String
  , "VpcPeeringConnectionId" :: Maybe String
  }

route :: { "RouteTableId" :: String } -> Route
route required =
  merge required
    { "DestinationCidrBlock" : Nothing
    , "DestinationIpv6CidrBlock" : Nothing
    , "EgressOnlyInternetGatewayId" : Nothing
    , "GatewayId" : Nothing
    , "InstanceId" : Nothing
    , "NatGatewayId" : Nothing
    , "NetworkInterfaceId" : Nothing
    , "TransitGatewayId" : Nothing
    , "VpcPeeringConnectionId" : Nothing
    }