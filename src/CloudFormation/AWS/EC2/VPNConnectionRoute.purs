module CloudFormation.AWS.EC2.VPNConnectionRoute where 




type VPNConnectionRoute =
  { "DestinationCidrBlock" :: String
  , "VpnConnectionId" :: String
  }

vpncPNConnectionRoute :: { "DestinationCidrBlock" :: String, "VpnConnectionId" :: String } -> VPNConnectionRoute
vpncPNConnectionRoute required =
  required