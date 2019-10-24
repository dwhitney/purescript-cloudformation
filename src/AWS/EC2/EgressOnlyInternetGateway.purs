module AWS.EC2.EgressOnlyInternetGateway where 




type EgressOnlyInternetGateway =
  { "VpcId" :: String
  }

egressOnlyInternetGateway :: { "VpcId" :: String } -> EgressOnlyInternetGateway
egressOnlyInternetGateway required =
  required