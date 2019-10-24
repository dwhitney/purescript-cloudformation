module CloudFormation.AWS.ApiGatewayV2.Api where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Api =
  { "RouteSelectionExpression" :: String
  , "ProtocolType" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  , "Version" :: Maybe String
  , "DisableSchemaValidation" :: Maybe Boolean
  , "Tags" :: Maybe Foreign
  , "ApiKeySelectionExpression" :: Maybe String
  }

api :: { "RouteSelectionExpression" :: String, "ProtocolType" :: String, "Name" :: String } -> Api
api required =
  merge required
    { "Description" : Nothing
    , "Version" : Nothing
    , "DisableSchemaValidation" : Nothing
    , "Tags" : Nothing
    , "ApiKeySelectionExpression" : Nothing
    }