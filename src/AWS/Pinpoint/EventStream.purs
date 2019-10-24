module AWS.Pinpoint.EventStream where 




type EventStream =
  { "ApplicationId" :: String
  , "DestinationStreamArn" :: String
  , "RoleArn" :: String
  }

eventStream :: { "ApplicationId" :: String, "DestinationStreamArn" :: String, "RoleArn" :: String } -> EventStream
eventStream required =
  required