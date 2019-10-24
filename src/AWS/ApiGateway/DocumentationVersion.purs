module AWS.ApiGateway.DocumentationVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


type DocumentationVersion =
  { "DocumentationVersion" :: String
  , "RestApiId" :: String
  , "Description" :: Maybe String
  }

documentationVersion :: { "DocumentationVersion" :: String, "RestApiId" :: String } -> DocumentationVersion
documentationVersion required =
  merge required
    { "Description" : Nothing
    }