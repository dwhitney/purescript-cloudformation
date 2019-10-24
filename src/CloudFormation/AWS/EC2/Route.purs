module CloudFormation.AWS.EC2.Route where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::Route`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html-- |
-- | - `DestinationCidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-destinationcidrblock
-- | - `DestinationIpv6CidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-destinationipv6cidrblock
-- | - `EgressOnlyInternetGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-egressonlyinternetgatewayid
-- | - `GatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-gatewayid
-- | - `InstanceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-instanceid
-- | - `NatGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-natgatewayid
-- | - `NetworkInterfaceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-networkinterfaceid
-- | - `RouteTableId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-routetableid
-- | - `TransitGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-transitgatewayid
-- | - `VpcPeeringConnectionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-vpcpeeringconnectionid
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