module CloudFormation.AWS.EC2.ClientVpnTargetNetworkAssociation where 




type ClientVpnTargetNetworkAssociation =
  { "ClientVpnEndpointId" :: String
  , "SubnetId" :: String
  }

clientVpnTargetNetworkAssociation :: { "ClientVpnEndpointId" :: String, "SubnetId" :: String } -> ClientVpnTargetNetworkAssociation
clientVpnTargetNetworkAssociation required =
  required