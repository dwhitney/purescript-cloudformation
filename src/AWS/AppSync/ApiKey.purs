module AWS.AppSync.ApiKey where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ApiKey =
  { "ApiId" :: String
  , "Description" :: Maybe String
  , "Expires" :: Maybe Number
  }

apiKey :: { "ApiId" :: String } -> ApiKey
apiKey required =
  merge required
    { "Description" : Nothing
    , "Expires" : Nothing
    }