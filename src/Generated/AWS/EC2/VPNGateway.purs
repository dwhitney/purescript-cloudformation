module CloudFormation.AWS.EC2.VPNGateway where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Type" :: Value String
  , "AmazonSideAsn" :: Maybe (Value Number)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeVPNGateway :: Newtype VPNGateway _
derive newtype instance writeVPNGateway :: WriteForeign VPNGateway
instance resourceVPNGateway :: Resource VPNGateway where type_ _ = "AWS::EC2::VPNGateway"

vpngPNGateway :: { "Type" :: Value String } -> VPNGateway
vpngPNGateway required = VPNGateway
  (merge required
    { "AmazonSideAsn" : Nothing
    , "Tags" : Nothing
    })