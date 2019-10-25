module CloudFormation.AWS.EC2.Subnet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "CidrBlock" :: Value String
  , "VpcId" :: Value String
  , "AssignIpv6AddressOnCreation" :: Maybe (Value Boolean)
  , "AvailabilityZone" :: Maybe (Value String)
  , "Ipv6CidrBlock" :: Maybe (Value String)
  , "MapPublicIpOnLaunch" :: Maybe (Value Boolean)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeSubnet :: Newtype Subnet _
derive newtype instance writeSubnet :: WriteForeign Subnet
instance resourceSubnet :: Resource Subnet where type_ _ = "AWS::EC2::Subnet"

subnet :: { "CidrBlock" :: Value String, "VpcId" :: Value String } -> Subnet
subnet required = Subnet
  (merge required
    { "AssignIpv6AddressOnCreation" : Nothing
    , "AvailabilityZone" : Nothing
    , "Ipv6CidrBlock" : Nothing
    , "MapPublicIpOnLaunch" : Nothing
    , "Tags" : Nothing
    })