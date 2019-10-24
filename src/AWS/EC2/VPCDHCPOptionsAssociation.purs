module AWS.EC2.VPCDHCPOptionsAssociation where 




type VPCDHCPOptionsAssociation =
  { "DhcpOptionsId" :: String
  , "VpcId" :: String
  }

vpcdhcpoPCDHCPOptionsAssociation :: { "DhcpOptionsId" :: String, "VpcId" :: String } -> VPCDHCPOptionsAssociation
vpcdhcpoPCDHCPOptionsAssociation required =
  required