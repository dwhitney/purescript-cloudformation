module CloudFormation.AWS.EC2.SubnetCidrBlock where 




type SubnetCidrBlock =
  { "Ipv6CidrBlock" :: String
  , "SubnetId" :: String
  }

subnetCidrBlock :: { "Ipv6CidrBlock" :: String, "SubnetId" :: String } -> SubnetCidrBlock
subnetCidrBlock required =
  required