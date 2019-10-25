module CloudFormation.AWS.EC2.VPNConnection where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype VPNConnection = VPNConnection
  { "CustomerGatewayId" :: Value String
  , "Type" :: Value String
  , "StaticRoutesOnly" :: Maybe (Value Boolean)
  , "Tags" :: Maybe (Value (Array Tag))
  , "TransitGatewayId" :: Maybe (Value String)
  , "VpnGatewayId" :: Maybe (Value String)
  , "VpnTunnelOptionsSpecifications" :: Maybe (Value (Array VpnTunnelOptionsSpecification))
  }

derive instance newtypeVPNConnection :: Newtype VPNConnection _
derive newtype instance writeVPNConnection :: WriteForeign VPNConnection
instance resourceVPNConnection :: Resource VPNConnection where type_ _ = "AWS::EC2::VPNConnection"

vpncPNConnection :: { "CustomerGatewayId" :: Value String, "Type" :: Value String } -> VPNConnection
vpncPNConnection required = VPNConnection
  (merge required
    { "StaticRoutesOnly" : Nothing
    , "Tags" : Nothing
    , "TransitGatewayId" : Nothing
    , "VpnGatewayId" : Nothing
    , "VpnTunnelOptionsSpecifications" : Nothing
    })

-- | `AWS::EC2::VPNConnection.VpnTunnelOptionsSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html
-- |
-- | - `PreSharedKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html#cfn-ec2-vpnconnection-vpntunneloptionsspecification-presharedkey
-- | - `TunnelInsideCidr`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html#cfn-ec2-vpnconnection-vpntunneloptionsspecification-tunnelinsidecidr
type VpnTunnelOptionsSpecification =
  { "PreSharedKey" :: Maybe (Value String)
  , "TunnelInsideCidr" :: Maybe (Value String)
  }

vpnTunnelOptionsSpecification :: VpnTunnelOptionsSpecification
vpnTunnelOptionsSpecification =
  { "PreSharedKey" : Nothing
  , "TunnelInsideCidr" : Nothing
  }