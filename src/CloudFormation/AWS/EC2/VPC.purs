module CloudFormation.AWS.EC2.VPC where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::EC2::VPC`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc.html-- |
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
type VPC =
  { "CidrBlock" :: String
  , "EnableDnsHostnames" :: Maybe Boolean
  , "EnableDnsSupport" :: Maybe Boolean
  , "InstanceTenancy" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

vpcPC :: { "CidrBlock" :: String } -> VPC
vpcPC required =
  merge required
    { "EnableDnsHostnames" : Nothing
    , "EnableDnsSupport" : Nothing
    , "InstanceTenancy" : Nothing
    , "Tags" : Nothing
    }