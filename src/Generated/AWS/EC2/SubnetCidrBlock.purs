module CloudFormation.AWS.EC2.SubnetCidrBlock where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::SubnetCidrBlock`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html
-- |
-- | - `Ipv6CidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html#cfn-ec2-subnetcidrblock-ipv6cidrblock
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html#cfn-ec2-subnetcidrblock-subnetid
newtype SubnetCidrBlock = SubnetCidrBlock
  { "Ipv6CidrBlock" :: String
  , "SubnetId" :: String
  }

derive instance newtypeSubnetCidrBlock :: Newtype SubnetCidrBlock _
instance resourceSubnetCidrBlock :: Resource SubnetCidrBlock where type_ _ = "AWS::EC2::SubnetCidrBlock"

subnetCidrBlock :: { "Ipv6CidrBlock" :: String, "SubnetId" :: String } -> SubnetCidrBlock
subnetCidrBlock required = SubnetCidrBlock
  required