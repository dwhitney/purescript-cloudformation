module CloudFormation.AWS.EC2.CustomerGateway where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::CustomerGateway`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html
-- |
-- | - `BgpAsn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html#cfn-ec2-customergateway-bgpasn
-- | - `IpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html#cfn-ec2-customergateway-ipaddress
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html#cfn-ec2-customergateway-tags
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-customer-gateway.html#cfn-ec2-customergateway-type
newtype CustomerGateway = CustomerGateway
  { "BgpAsn" :: Int
  , "IpAddress" :: String
  , "Type" :: String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeCustomerGateway :: Newtype CustomerGateway _
instance resourceCustomerGateway :: Resource CustomerGateway where type_ _ = "AWS::EC2::CustomerGateway"

customerGateway :: { "BgpAsn" :: Int, "IpAddress" :: String, "Type" :: String } -> CustomerGateway
customerGateway required = CustomerGateway
  (merge required
    { "Tags" : Nothing
    })