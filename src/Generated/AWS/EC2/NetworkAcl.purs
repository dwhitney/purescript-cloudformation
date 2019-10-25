module CloudFormation.AWS.EC2.NetworkAcl where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::NetworkAcl`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html#cfn-ec2-networkacl-tags
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl.html#cfn-ec2-networkacl-vpcid
newtype NetworkAcl = NetworkAcl
  { "VpcId" :: Value String
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeNetworkAcl :: Newtype NetworkAcl _
derive newtype instance writeNetworkAcl :: WriteForeign NetworkAcl
instance resourceNetworkAcl :: Resource NetworkAcl where type_ _ = "AWS::EC2::NetworkAcl"

networkAcl :: { "VpcId" :: Value String } -> NetworkAcl
networkAcl required = NetworkAcl
  (merge required
    { "Tags" : Nothing
    })