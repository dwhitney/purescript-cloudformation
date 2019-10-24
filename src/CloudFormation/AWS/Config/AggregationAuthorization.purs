module CloudFormation.AWS.Config.AggregationAuthorization where 




type AggregationAuthorization =
  { "AuthorizedAccountId" :: String
  , "AuthorizedAwsRegion" :: String
  }

aggregationAuthorization :: { "AuthorizedAccountId" :: String, "AuthorizedAwsRegion" :: String } -> AggregationAuthorization
aggregationAuthorization required =
  required