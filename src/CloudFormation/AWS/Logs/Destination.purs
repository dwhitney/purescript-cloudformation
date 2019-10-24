module CloudFormation.AWS.Logs.Destination where 




type Destination =
  { "DestinationName" :: String
  , "DestinationPolicy" :: String
  , "RoleArn" :: String
  , "TargetArn" :: String
  }

destination :: { "DestinationName" :: String, "DestinationPolicy" :: String, "RoleArn" :: String, "TargetArn" :: String } -> Destination
destination required =
  required