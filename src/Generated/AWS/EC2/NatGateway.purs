module CloudFormation.AWS.EC2.NatGateway where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "AllocationId" :: String
  , "SubnetId" :: String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeNatGateway :: Newtype NatGateway _
instance resourceNatGateway :: Resource NatGateway where type_ _ = "AWS::EC2::NatGateway"

natGateway :: { "AllocationId" :: String, "SubnetId" :: String } -> NatGateway
natGateway required = NatGateway
  (merge required
    { "Tags" : Nothing
    })