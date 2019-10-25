module CloudFormation.AWS.EC2.CustomerGateway where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "BgpAsn" :: Value Int
  , "IpAddress" :: Value String
  , "Type" :: Value String
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeCustomerGateway :: Newtype CustomerGateway _
derive newtype instance writeCustomerGateway :: WriteForeign CustomerGateway
instance resourceCustomerGateway :: Resource CustomerGateway where type_ _ = "AWS::EC2::CustomerGateway"

customerGateway :: { "BgpAsn" :: Value Int, "IpAddress" :: Value String, "Type" :: Value String } -> CustomerGateway
customerGateway required = CustomerGateway
  (merge required
    { "Tags" : Nothing
    })