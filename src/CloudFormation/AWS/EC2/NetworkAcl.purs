module CloudFormation.AWS.EC2.NetworkAcl where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::NetworkAcl`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html#cfn-ec2-networkacl-tags
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html#cfn-ec2-networkacl-vpcid
type NetworkAcl =
  { "VpcId" :: String
  , "Tags" :: Maybe (Array Tag)
  }

networkAcl :: { "VpcId" :: String } -> NetworkAcl
networkAcl required =
  merge required
    { "Tags" : Nothing
    }