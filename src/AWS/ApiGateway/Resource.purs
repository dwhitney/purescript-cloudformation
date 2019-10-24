module AWS.ApiGateway.Resource where 




type Resource =
  { "ParentId" :: String
  , "PathPart" :: String
  , "RestApiId" :: String
  }

resource :: { "ParentId" :: String, "PathPart" :: String, "RestApiId" :: String } -> Resource
resource required =
  required