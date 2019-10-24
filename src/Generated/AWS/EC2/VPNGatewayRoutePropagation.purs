module CloudFormation.AWS.EC2.VPNGatewayRoutePropagation where 




-- | `AWS::EC2::VPNGatewayRoutePropagation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html
-- |
-- | - `RouteTableIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html#cfn-ec2-vpngatewayrouteprop-routetableids
-- | - `VpnGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gatewayrouteprop.html#cfn-ec2-vpngatewayrouteprop-vpngatewayid
type VPNGatewayRoutePropagation =
  { "RouteTableIds" :: Array String
  , "VpnGatewayId" :: String
  }

vpngPNGatewayRoutePropagation :: { "RouteTableIds" :: Array String, "VpnGatewayId" :: String } -> VPNGatewayRoutePropagation
vpngPNGatewayRoutePropagation required =
  required