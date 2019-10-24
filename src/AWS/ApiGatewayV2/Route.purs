module AWS.ApiGatewayV2.Route where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Route =
  { "RouteKey" :: String
  , "ApiId" :: String
  , "Target" :: Maybe String
  , "RouteResponseSelectionExpression" :: Maybe String
  , "AuthorizerId" :: Maybe String
  , "RequestModels" :: Maybe Foreign
  , "OperationName" :: Maybe String
  , "AuthorizationScopes" :: Maybe (Array String)
  , "ApiKeyRequired" :: Maybe Boolean
  , "AuthorizationType" :: Maybe String
  , "ModelSelectionExpression" :: Maybe String
  , "RequestParameters" :: Maybe Foreign
  }

route :: { "RouteKey" :: String, "ApiId" :: String } -> Route
route required =
  merge required
    { "Target" : Nothing
    , "RouteResponseSelectionExpression" : Nothing
    , "AuthorizerId" : Nothing
    , "RequestModels" : Nothing
    , "OperationName" : Nothing
    , "AuthorizationScopes" : Nothing
    , "ApiKeyRequired" : Nothing
    , "AuthorizationType" : Nothing
    , "ModelSelectionExpression" : Nothing
    , "RequestParameters" : Nothing
    }

type ParameterConstraints =
  { "Required" :: Boolean
  }

parameterConstraints :: { "Required" :: Boolean } -> ParameterConstraints
parameterConstraints required =
  required