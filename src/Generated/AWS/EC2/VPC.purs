module CloudFormation.AWS.EC2.VPC where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::VPC`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html
-- |
-- | - `CidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html#cfn-aws-ec2-vpc-cidrblock
-- | - `EnableDnsHostnames`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html#cfn-aws-ec2-vpc-EnableDnsHostnames
-- | - `EnableDnsSupport`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html#cfn-aws-ec2-vpc-EnableDnsSupport
-- | - `InstanceTenancy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html#cfn-aws-ec2-vpc-instancetenancy
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html#cfn-aws-ec2-vpc-tags
newtype VPC = VPC
  { "CidrBlock" :: Value String
  , "EnableDnsHostnames" :: Maybe (Value Boolean)
  , "EnableDnsSupport" :: Maybe (Value Boolean)
  , "InstanceTenancy" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeVPC :: Newtype VPC _
derive newtype instance writeVPC :: WriteForeign VPC
instance resourceVPC :: Resource VPC where type_ _ = "AWS::EC2::VPC"

vpcPC :: { "CidrBlock" :: Value String } -> VPC
vpcPC required = VPC
  (merge required
    { "EnableDnsHostnames" : Nothing
    , "EnableDnsSupport" : Nothing
    , "InstanceTenancy" : Nothing
    , "Tags" : Nothing
    })