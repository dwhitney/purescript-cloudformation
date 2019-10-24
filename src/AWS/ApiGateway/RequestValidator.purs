module AWS.ApiGateway.RequestValidator where 

import Data.Maybe (Maybe(..))
import Record (merge)


type RequestValidator =
  { "RestApiId" :: String
  , "Name" :: Maybe String
  , "ValidateRequestBody" :: Maybe Boolean
  , "ValidateRequestParameters" :: Maybe Boolean
  }

requestValidator :: { "RestApiId" :: String } -> RequestValidator
requestValidator required =
  merge required
    { "Name" : Nothing
    , "ValidateRequestBody" : Nothing
    , "ValidateRequestParameters" : Nothing
    }