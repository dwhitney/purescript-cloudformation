module CloudFormation.AWS.EC2.VPCCidrBlock where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "VpcId" :: Value String
  , "AmazonProvidedIpv6CidrBlock" :: Maybe (Value Boolean)
  , "CidrBlock" :: Maybe (Value String)
  }

derive instance newtypeVPCCidrBlock :: Newtype VPCCidrBlock _
derive newtype instance writeVPCCidrBlock :: WriteForeign VPCCidrBlock
instance resourceVPCCidrBlock :: Resource VPCCidrBlock where type_ _ = "AWS::EC2::VPCCidrBlock"

vpccPCCidrBlock :: { "VpcId" :: Value String } -> VPCCidrBlock
vpccPCCidrBlock required = VPCCidrBlock
  (merge required
    { "AmazonProvidedIpv6CidrBlock" : Nothing
    , "CidrBlock" : Nothing
    })