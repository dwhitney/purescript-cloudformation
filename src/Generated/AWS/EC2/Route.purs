module CloudFormation.AWS.EC2.Route where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::Route`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html
-- |
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
newtype Route = Route
  { "RouteTableId" :: Value String
  , "DestinationCidrBlock" :: Maybe (Value String)
  , "DestinationIpv6CidrBlock" :: Maybe (Value String)
  , "EgressOnlyInternetGatewayId" :: Maybe (Value String)
  , "GatewayId" :: Maybe (Value String)
  , "InstanceId" :: Maybe (Value String)
  , "NatGatewayId" :: Maybe (Value String)
  , "NetworkInterfaceId" :: Maybe (Value String)
  , "TransitGatewayId" :: Maybe (Value String)
  , "VpcPeeringConnectionId" :: Maybe (Value String)
  }

derive instance newtypeRoute :: Newtype Route _
derive newtype instance writeRoute :: WriteForeign Route
instance resourceRoute :: Resource Route where type_ _ = "AWS::EC2::Route"

route :: { "RouteTableId" :: Value String } -> Route
route required = Route
  (merge required
    { "DestinationCidrBlock" : Nothing
    , "DestinationIpv6CidrBlock" : Nothing
    , "EgressOnlyInternetGatewayId" : Nothing
    , "GatewayId" : Nothing
    , "InstanceId" : Nothing
    , "NatGatewayId" : Nothing
    , "NetworkInterfaceId" : Nothing
    , "TransitGatewayId" : Nothing
    , "VpcPeeringConnectionId" : Nothing
    })