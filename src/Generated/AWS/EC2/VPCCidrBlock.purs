module CloudFormation.AWS.EC2.VPCCidrBlock where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::VPCCidrBlock`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html
-- |
-- | - `AmazonProvidedIpv6CidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-amazonprovidedipv6cidrblock
-- | - `CidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-cidrblock
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-vpcid
newtype VPCCidrBlock = VPCCidrBlock
  { "VpcId" :: String
  , "AmazonProvidedIpv6CidrBlock" :: Maybe Boolean
  , "CidrBlock" :: Maybe String
  }

derive instance newtypeVPCCidrBlock :: Newtype VPCCidrBlock _
instance resourceVPCCidrBlock :: Resource VPCCidrBlock where type_ _ = "AWS::EC2::VPCCidrBlock"

vpccPCCidrBlock :: { "VpcId" :: String } -> VPCCidrBlock
vpccPCCidrBlock required = VPCCidrBlock
  (merge required
    { "AmazonProvidedIpv6CidrBlock" : Nothing
    , "CidrBlock" : Nothing
    })