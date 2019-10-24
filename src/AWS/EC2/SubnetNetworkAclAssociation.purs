module AWS.EC2.SubnetNetworkAclAssociation where 




type SubnetNetworkAclAssociation =
  { "NetworkAclId" :: String
  , "SubnetId" :: String
  }

subnetNetworkAclAssociation :: { "NetworkAclId" :: String, "SubnetId" :: String } -> SubnetNetworkAclAssociation
subnetNetworkAclAssociation required =
  required