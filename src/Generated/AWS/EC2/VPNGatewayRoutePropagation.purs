module CloudFormation.AWS.EC2.VPNGatewayRoutePropagation where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::VPNGatewayRoutePropagation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html
-- |
-- | - `RouteTableIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html#cfn-ec2-vpngatewayrouteprop-routetableids
-- | - `VpnGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html#cfn-ec2-vpngatewayrouteprop-vpngatewayid
newtype VPNGatewayRoutePropagation = VPNGatewayRoutePropagation
  { "RouteTableIds" :: Value (Array String)
  , "VpnGatewayId" :: Value String
  }

derive instance newtypeVPNGatewayRoutePropagation :: Newtype VPNGatewayRoutePropagation _
derive newtype instance writeVPNGatewayRoutePropagation :: WriteForeign VPNGatewayRoutePropagation
instance resourceVPNGatewayRoutePropagation :: Resource VPNGatewayRoutePropagation where type_ _ = "AWS::EC2::VPNGatewayRoutePropagation"

vpngPNGatewayRoutePropagation :: { "RouteTableIds" :: Value (Array String), "VpnGatewayId" :: Value String } -> VPNGatewayRoutePropagation
vpngPNGatewayRoutePropagation required = VPNGatewayRoutePropagation
  required