module CloudFormation.AWS.EC2.Subnet where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::Subnet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html
-- |
-- | - `AssignIpv6AddressOnCreation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-assignipv6addressoncreation
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-availabilityzone
-- | - `CidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-cidrblock
-- | - `Ipv6CidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-ipv6cidrblock
-- | - `MapPublicIpOnLaunch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-mappubliciponlaunch
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-tags
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-awsec2subnet-prop-vpcid
newtype Subnet = Subnet
  { "CidrBlock" :: String
  , "VpcId" :: String
  , "AssignIpv6AddressOnCreation" :: Maybe Boolean
  , "AvailabilityZone" :: Maybe String
  , "Ipv6CidrBlock" :: Maybe String
  , "MapPublicIpOnLaunch" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeSubnet :: Newtype Subnet _
instance resourceSubnet :: Resource Subnet where type_ _ = "AWS::EC2::Subnet"

subnet :: { "CidrBlock" :: String, "VpcId" :: String } -> Subnet
subnet required = Subnet
  (merge required
    { "AssignIpv6AddressOnCreation" : Nothing
    , "AvailabilityZone" : Nothing
    , "Ipv6CidrBlock" : Nothing
    , "MapPublicIpOnLaunch" : Nothing
    , "Tags" : Nothing
    })