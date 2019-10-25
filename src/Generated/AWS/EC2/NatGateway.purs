module CloudFormation.AWS.EC2.NatGateway where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::NatGateway`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html
-- |
-- | - `AllocationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-allocationid
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-subnetid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-tags
newtype NatGateway = NatGateway
  { "AllocationId" :: Value String
  , "SubnetId" :: Value String
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeNatGateway :: Newtype NatGateway _
derive newtype instance writeNatGateway :: WriteForeign NatGateway
instance resourceNatGateway :: Resource NatGateway where type_ _ = "AWS::EC2::NatGateway"

natGateway :: { "AllocationId" :: Value String, "SubnetId" :: Value String } -> NatGateway
natGateway required = NatGateway
  (merge required
    { "Tags" : Nothing
    })