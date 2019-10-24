module CloudFormation.AWS.EC2.SubnetNetworkAclAssociation where 




-- | `AWS::EC2::SubnetNetworkAclAssociation`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-network-acl-assoc.html-- |
-- | - `NetworkAclId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-network-acl-assoc.html#cfn-ec2-subnetnetworkaclassociation-networkaclid
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet-network-acl-assoc.html#cfn-ec2-subnetnetworkaclassociation-associationid
type SubnetNetworkAclAssociation =
  { "NetworkAclId" :: String
  , "SubnetId" :: String
  }

subnetNetworkAclAssociation :: { "NetworkAclId" :: String, "SubnetId" :: String } -> SubnetNetworkAclAssociation
subnetNetworkAclAssociation required =
  required