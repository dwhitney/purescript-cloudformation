module CloudFormation.AWS.EC2.VPNConnection where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::EC2::VPNConnection`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html
-- |
-- | - `CustomerGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-customergatewayid
-- | - `StaticRoutesOnly`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-StaticRoutesOnly
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-tags
-- | - `TransitGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-transitgatewayid
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-type
-- | - `VpnGatewayId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-vpngatewayid
-- | - `VpnTunnelOptionsSpecifications`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-connection.html#cfn-ec2-vpnconnection-vpntunneloptionsspecifications
type VPNConnection =
  { "CustomerGatewayId" :: String
  , "Type" :: String
  , "StaticRoutesOnly" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tag)
  , "TransitGatewayId" :: Maybe String
  , "VpnGatewayId" :: Maybe String
  , "VpnTunnelOptionsSpecifications" :: Maybe (Array VpnTunnelOptionsSpecification)
  }

vpncPNConnection :: { "CustomerGatewayId" :: String, "Type" :: String } -> VPNConnection
vpncPNConnection required =
  merge required
    { "StaticRoutesOnly" : Nothing
    , "Tags" : Nothing
    , "TransitGatewayId" : Nothing
    , "VpnGatewayId" : Nothing
    , "VpnTunnelOptionsSpecifications" : Nothing
    }

-- | `AWS::EC2::VPNConnection.VpnTunnelOptionsSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html
-- |
-- | - `PreSharedKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html#cfn-ec2-vpnconnection-vpntunneloptionsspecification-presharedkey
-- | - `TunnelInsideCidr`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html#cfn-ec2-vpnconnection-vpntunneloptionsspecification-tunnelinsidecidr
type VpnTunnelOptionsSpecification =
  { "PreSharedKey" :: Maybe String
  , "TunnelInsideCidr" :: Maybe String
  }

vpnTunnelOptionsSpecification :: VpnTunnelOptionsSpecification
vpnTunnelOptionsSpecification =
  { "PreSharedKey" : Nothing
  , "TunnelInsideCidr" : Nothing
  }