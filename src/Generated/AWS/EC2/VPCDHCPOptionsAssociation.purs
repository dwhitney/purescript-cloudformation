module CloudFormation.AWS.EC2.VPCDHCPOptionsAssociation where 




-- | `AWS::EC2::VPCDHCPOptionsAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-dhcp-options-assoc.html
-- |
-- | - `DhcpOptionsId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-dhcp-options-assoc.html#cfn-ec2-vpcdhcpoptionsassociation-dhcpoptionsid
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-dhcp-options-assoc.html#cfn-ec2-vpcdhcpoptionsassociation-vpcid
type VPCDHCPOptionsAssociation =
  { "DhcpOptionsId" :: String
  , "VpcId" :: String
  }

vpcdhcpoPCDHCPOptionsAssociation :: { "DhcpOptionsId" :: String, "VpcId" :: String } -> VPCDHCPOptionsAssociation
vpcdhcpoPCDHCPOptionsAssociation required =
  required