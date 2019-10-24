module CloudFormation.AWS.EC2.VPCCidrBlock where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::EC2::VPCCidrBlock`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html-- |
-- | - `AmazonProvidedIpv6CidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-amazonprovidedipv6cidrblock
-- | - `CidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-cidrblock
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-vpcid
type VPCCidrBlock =
  { "VpcId" :: String
  , "AmazonProvidedIpv6CidrBlock" :: Maybe Boolean
  , "CidrBlock" :: Maybe String
  }

vpccPCCidrBlock :: { "VpcId" :: String } -> VPCCidrBlock
vpccPCCidrBlock required =
  merge required
    { "AmazonProvidedIpv6CidrBlock" : Nothing
    , "CidrBlock" : Nothing
    }