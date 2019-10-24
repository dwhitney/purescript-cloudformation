module CloudFormation.AWS.EC2.VPNGatewayRoutePropagation where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::VPNGatewayRoutePropagation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html
-- |
-- | - `RouteTableIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html#cfn-ec2-vpngatewayrouteprop-routetableids
-- | - `VpnGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html#cfn-ec2-vpngatewayrouteprop-vpngatewayid
newtype VPNGatewayRoutePropagation = VPNGatewayRoutePropagation
  { "RouteTableIds" :: Array String
  , "VpnGatewayId" :: String
  }

derive instance newtypeVPNGatewayRoutePropagation :: Newtype VPNGatewayRoutePropagation _
instance resourceVPNGatewayRoutePropagation :: Resource VPNGatewayRoutePropagation where type_ _ = "AWS::EC2::VPNGatewayRoutePropagation"

vpngPNGatewayRoutePropagation :: { "RouteTableIds" :: Array String, "VpnGatewayId" :: String } -> VPNGatewayRoutePropagation
vpngPNGatewayRoutePropagation required = VPNGatewayRoutePropagation
  required