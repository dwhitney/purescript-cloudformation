module AWS.ElastiCache.SecurityGroup where 




type SecurityGroup =
  { "Description" :: String
  }

securityGroup :: { "Description" :: String } -> SecurityGroup
securityGroup required =
  required