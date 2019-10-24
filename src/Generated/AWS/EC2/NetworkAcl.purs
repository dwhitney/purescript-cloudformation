module CloudFormation.AWS.EC2.NetworkAcl where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::NetworkAcl`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html#cfn-ec2-networkacl-tags
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html#cfn-ec2-networkacl-vpcid
newtype NetworkAcl = NetworkAcl
  { "VpcId" :: String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeNetworkAcl :: Newtype NetworkAcl _
instance resourceNetworkAcl :: Resource NetworkAcl where type_ _ = "AWS::EC2::NetworkAcl"

networkAcl :: { "VpcId" :: String } -> NetworkAcl
networkAcl required = NetworkAcl
  (merge required
    { "Tags" : Nothing
    })