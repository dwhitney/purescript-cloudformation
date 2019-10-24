module CloudFormation.AWS.EC2.SubnetNetworkAclAssociation where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::SubnetNetworkAclAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-network-acl-assoc.html
-- |
-- | - `NetworkAclId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-network-acl-assoc.html#cfn-ec2-subnetnetworkaclassociation-networkaclid
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-network-acl-assoc.html#cfn-ec2-subnetnetworkaclassociation-associationid
newtype SubnetNetworkAclAssociation = SubnetNetworkAclAssociation
  { "NetworkAclId" :: String
  , "SubnetId" :: String
  }

derive instance newtypeSubnetNetworkAclAssociation :: Newtype SubnetNetworkAclAssociation _
instance resourceSubnetNetworkAclAssociation :: Resource SubnetNetworkAclAssociation where type_ _ = "AWS::EC2::SubnetNetworkAclAssociation"

subnetNetworkAclAssociation :: { "NetworkAclId" :: String, "SubnetId" :: String } -> SubnetNetworkAclAssociation
subnetNetworkAclAssociation required = SubnetNetworkAclAssociation
  required