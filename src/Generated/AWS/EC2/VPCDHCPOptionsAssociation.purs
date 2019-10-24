module CloudFormation.AWS.EC2.VPCDHCPOptionsAssociation where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::VPCDHCPOptionsAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-dhcp-options-assoc.html
-- |
-- | - `DhcpOptionsId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-dhcp-options-assoc.html#cfn-ec2-vpcdhcpoptionsassociation-dhcpoptionsid
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-dhcp-options-assoc.html#cfn-ec2-vpcdhcpoptionsassociation-vpcid
newtype VPCDHCPOptionsAssociation = VPCDHCPOptionsAssociation
  { "DhcpOptionsId" :: String
  , "VpcId" :: String
  }

derive instance newtypeVPCDHCPOptionsAssociation :: Newtype VPCDHCPOptionsAssociation _
instance resourceVPCDHCPOptionsAssociation :: Resource VPCDHCPOptionsAssociation where type_ _ = "AWS::EC2::VPCDHCPOptionsAssociation"

vpcdhcpoPCDHCPOptionsAssociation :: { "DhcpOptionsId" :: String, "VpcId" :: String } -> VPCDHCPOptionsAssociation
vpcdhcpoPCDHCPOptionsAssociation required = VPCDHCPOptionsAssociation
  required