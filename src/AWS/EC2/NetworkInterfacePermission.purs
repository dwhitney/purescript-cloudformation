module AWS.EC2.NetworkInterfacePermission where 




type NetworkInterfacePermission =
  { "AwsAccountId" :: String
  , "NetworkInterfaceId" :: String
  , "Permission" :: String
  }

networkInterfacePermission :: { "AwsAccountId" :: String, "NetworkInterfaceId" :: String, "Permission" :: String } -> NetworkInterfacePermission
networkInterfacePermission required =
  required