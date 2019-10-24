module AWS.CloudFormation.CustomResource where 




type CustomResource =
  { "ServiceToken" :: String
  }

customResource :: { "ServiceToken" :: String } -> CustomResource
customResource required =
  required