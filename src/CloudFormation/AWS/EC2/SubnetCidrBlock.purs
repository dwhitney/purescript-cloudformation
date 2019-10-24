module CloudFormation.AWS.EC2.SubnetCidrBlock where 




-- | `AWS::EC2::SubnetCidrBlock`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html-- |
-- | - `Ipv6CidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html#cfn-ec2-subnetcidrblock-ipv6cidrblock
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html#cfn-ec2-subnetcidrblock-subnetid
type SubnetCidrBlock =
  { "Ipv6CidrBlock" :: String
  , "SubnetId" :: String
  }

subnetCidrBlock :: { "Ipv6CidrBlock" :: String, "SubnetId" :: String } -> SubnetCidrBlock
subnetCidrBlock required =
  required