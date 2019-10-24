module AWS.ApiGatewayV2.Deployment where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Deployment =
  { "ApiId" :: String
  , "Description" :: Maybe String
  , "StageName" :: Maybe String
  }

deployment :: { "ApiId" :: String } -> Deployment
deployment required =
  merge required
    { "Description" : Nothing
    , "StageName" : Nothing
    }