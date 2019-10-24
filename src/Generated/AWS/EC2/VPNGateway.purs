module CloudFormation.AWS.EC2.VPNGateway where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::VPNGateway`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gateway.html
-- |
-- | - `AmazonSideAsn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gateway.html#cfn-ec2-vpngateway-amazonsideasn
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gateway.html#cfn-ec2-vpngateway-tags
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpn-gateway.html#cfn-ec2-vpngateway-type
newtype VPNGateway = VPNGateway
  { "Type" :: String
  , "AmazonSideAsn" :: Maybe Number
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeVPNGateway :: Newtype VPNGateway _
instance resourceVPNGateway :: Resource VPNGateway where type_ _ = "AWS::EC2::VPNGateway"

vpngPNGateway :: { "Type" :: String } -> VPNGateway
vpngPNGateway required = VPNGateway
  (merge required
    { "AmazonSideAsn" : Nothing
    , "Tags" : Nothing
    })