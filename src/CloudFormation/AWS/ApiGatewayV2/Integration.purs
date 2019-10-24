module CloudFormation.AWS.ApiGatewayV2.Integration where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Integration =
  { "ApiId" :: String
  , "IntegrationType" :: String
  , "Description" :: Maybe String
  , "TemplateSelectionExpression" :: Maybe String
  , "ConnectionType" :: Maybe String
  , "IntegrationMethod" :: Maybe String
  , "PassthroughBehavior" :: Maybe String
  , "RequestParameters" :: Maybe Foreign
  , "IntegrationUri" :: Maybe String
  , "CredentialsArn" :: Maybe String
  , "RequestTemplates" :: Maybe Foreign
  , "TimeoutInMillis" :: Maybe Int
  , "ContentHandlingStrategy" :: Maybe String
  }

integration :: { "ApiId" :: String, "IntegrationType" :: String } -> Integration
integration required =
  merge required
    { "Description" : Nothing
    , "TemplateSelectionExpression" : Nothing
    , "ConnectionType" : Nothing
    , "IntegrationMethod" : Nothing
    , "PassthroughBehavior" : Nothing
    , "RequestParameters" : Nothing
    , "IntegrationUri" : Nothing
    , "CredentialsArn" : Nothing
    , "RequestTemplates" : Nothing
    , "TimeoutInMillis" : Nothing
    , "ContentHandlingStrategy" : Nothing
    }