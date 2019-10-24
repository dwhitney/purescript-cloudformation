module AWS.ApiGateway.GatewayResponse where 

import Foreign.Object (Object)
import Data.Maybe (Maybe(..))
import Record (merge)


type GatewayResponse =
  { "ResponseType" :: String
  , "RestApiId" :: String
  , "ResponseParameters" :: Maybe (Object String)
  , "ResponseTemplates" :: Maybe (Object String)
  , "StatusCode" :: Maybe String
  }

gatewayResponse :: { "ResponseType" :: String, "RestApiId" :: String } -> GatewayResponse
gatewayResponse required =
  merge required
    { "ResponseParameters" : Nothing
    , "ResponseTemplates" : Nothing
    , "StatusCode" : Nothing
    }