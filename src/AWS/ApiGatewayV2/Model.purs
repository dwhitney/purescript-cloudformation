module AWS.ApiGatewayV2.Model where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Model =
  { "Schema" :: Foreign
  , "ApiId" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  , "ContentType" :: Maybe String
  }

model :: { "Schema" :: Foreign, "ApiId" :: String, "Name" :: String } -> Model
model required =
  merge required
    { "Description" : Nothing
    , "ContentType" : Nothing
    }