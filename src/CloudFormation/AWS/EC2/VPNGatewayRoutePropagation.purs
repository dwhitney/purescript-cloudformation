module CloudFormation.AWS.EC2.VPNGatewayRoutePropagation where 




type VPNGatewayRoutePropagation =
  { "RouteTableIds" :: Array String
  , "VpnGatewayId" :: String
  }

vpngPNGatewayRoutePropagation :: { "RouteTableIds" :: Array String, "VpnGatewayId" :: String } -> VPNGatewayRoutePropagation
vpngPNGatewayRoutePropagation required =
  required