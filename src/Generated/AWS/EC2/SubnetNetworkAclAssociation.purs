module CloudFormation.AWS.EC2.SubnetNetworkAclAssociation where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::SubnetNetworkAclAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-network-acl-assoc.html
-- |
-- | - `NetworkAclId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-network-acl-assoc.html#cfn-ec2-subnetnetworkaclassociation-networkaclid
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-network-acl-assoc.html#cfn-ec2-subnetnetworkaclassociation-associationid
newtype SubnetNetworkAclAssociation = SubnetNetworkAclAssociation
  { "NetworkAclId" :: Value String
  , "SubnetId" :: Value String
  }

derive instance newtypeSubnetNetworkAclAssociation :: Newtype SubnetNetworkAclAssociation _
derive newtype instance writeSubnetNetworkAclAssociation :: WriteForeign SubnetNetworkAclAssociation
instance resourceSubnetNetworkAclAssociation :: Resource SubnetNetworkAclAssociation where type_ _ = "AWS::EC2::SubnetNetworkAclAssociation"

subnetNetworkAclAssociation :: { "NetworkAclId" :: Value String, "SubnetId" :: Value String } -> SubnetNetworkAclAssociation
subnetNetworkAclAssociation required = SubnetNetworkAclAssociation
  required