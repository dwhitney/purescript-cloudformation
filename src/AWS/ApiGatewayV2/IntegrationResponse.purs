module AWS.ApiGatewayV2.IntegrationResponse where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type IntegrationResponse =
  { "IntegrationId" :: String
  , "IntegrationResponseKey" :: String
  , "ApiId" :: String
  , "ResponseTemplates" :: Maybe Foreign
  , "TemplateSelectionExpression" :: Maybe String
  , "ResponseParameters" :: Maybe Foreign
  , "ContentHandlingStrategy" :: Maybe String
  }

integrationResponse :: { "IntegrationId" :: String, "IntegrationResponseKey" :: String, "ApiId" :: String } -> IntegrationResponse
integrationResponse required =
  merge required
    { "ResponseTemplates" : Nothing
    , "TemplateSelectionExpression" : Nothing
    , "ResponseParameters" : Nothing
    , "ContentHandlingStrategy" : Nothing
    }