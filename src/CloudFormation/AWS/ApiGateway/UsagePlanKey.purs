module CloudFormation.AWS.ApiGateway.UsagePlanKey where 




type UsagePlanKey =
  { "KeyId" :: String
  , "KeyType" :: String
  , "UsagePlanId" :: String
  }

usagePlanKey :: { "KeyId" :: String, "KeyType" :: String, "UsagePlanId" :: String } -> UsagePlanKey
usagePlanKey required =
  required