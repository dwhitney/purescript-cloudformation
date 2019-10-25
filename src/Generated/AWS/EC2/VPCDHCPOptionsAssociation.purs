module CloudFormation.AWS.EC2.VPCDHCPOptionsAssociation where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::VPCDHCPOptionsAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-dhcp-options-assoc.html
-- |
-- | - `DhcpOptionsId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-dhcp-options-assoc.html#cfn-ec2-vpcdhcpoptionsassociation-dhcpoptionsid
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-dhcp-options-assoc.html#cfn-ec2-vpcdhcpoptionsassociation-vpcid
newtype VPCDHCPOptionsAssociation = VPCDHCPOptionsAssociation
  { "DhcpOptionsId" :: Value String
  , "VpcId" :: Value String
  }

derive instance newtypeVPCDHCPOptionsAssociation :: Newtype VPCDHCPOptionsAssociation _
derive newtype instance writeVPCDHCPOptionsAssociation :: WriteForeign VPCDHCPOptionsAssociation
instance resourceVPCDHCPOptionsAssociation :: Resource VPCDHCPOptionsAssociation where type_ _ = "AWS::EC2::VPCDHCPOptionsAssociation"

vpcdhcpoPCDHCPOptionsAssociation :: { "DhcpOptionsId" :: Value String, "VpcId" :: Value String } -> VPCDHCPOptionsAssociation
vpcdhcpoPCDHCPOptionsAssociation required = VPCDHCPOptionsAssociation
  required