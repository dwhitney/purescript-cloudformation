module CloudFormation.AWS.EC2.NatGateway where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::NatGateway`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html
-- |
-- | - `AllocationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-allocationid
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-subnetid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-tags
type NatGateway =
  { "AllocationId" :: String
  , "SubnetId" :: String
  , "Tags" :: Maybe (Array Tag)
  }

natGateway :: { "AllocationId" :: String, "SubnetId" :: String } -> NatGateway
natGateway required =
  merge required
    { "Tags" : Nothing
    }