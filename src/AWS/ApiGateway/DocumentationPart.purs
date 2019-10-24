module AWS.ApiGateway.DocumentationPart where 

import Data.Maybe (Maybe(..))


type DocumentationPart =
  { "Location" :: Location
  , "Properties" :: String
  , "RestApiId" :: String
  }

documentationPart :: { "Location" :: Location, "Properties" :: String, "RestApiId" :: String } -> DocumentationPart
documentationPart required =
  required

type Location =
  { "Method" :: Maybe String
  , "Name" :: Maybe String
  , "Path" :: Maybe String
  , "StatusCode" :: Maybe String
  , "Type" :: Maybe String
  }

location :: Location
location =
  { "Method" : Nothing
  , "Name" : Nothing
  , "Path" : Nothing
  , "StatusCode" : Nothing
  , "Type" : Nothing
  }