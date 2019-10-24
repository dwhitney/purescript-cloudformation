module AWS.ApiGatewayV2.RouteResponse where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type RouteResponse =
  { "RouteResponseKey" :: String
  , "RouteId" :: String
  , "ApiId" :: String
  , "ResponseParameters" :: Maybe Foreign
  , "ModelSelectionExpression" :: Maybe String
  , "ResponseModels" :: Maybe Foreign
  }

routeResponse :: { "RouteResponseKey" :: String, "RouteId" :: String, "ApiId" :: String } -> RouteResponse
routeResponse required =
  merge required
    { "ResponseParameters" : Nothing
    , "ModelSelectionExpression" : Nothing
    , "ResponseModels" : Nothing
    }

type ParameterConstraints =
  { "Required" :: Boolean
  }

parameterConstraints :: { "Required" :: Boolean } -> ParameterConstraints
parameterConstraints required =
  required