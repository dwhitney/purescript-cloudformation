module AWS.ApiGateway.Method where 

import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import Record (merge)


type Method =
  { "HttpMethod" :: String
  , "ResourceId" :: String
  , "RestApiId" :: String
  , "ApiKeyRequired" :: Maybe Boolean
  , "AuthorizationScopes" :: Maybe (Array String)
  , "AuthorizationType" :: Maybe String
  , "AuthorizerId" :: Maybe String
  , "Integration" :: Maybe Integration
  , "MethodResponses" :: Maybe (Array MethodResponse)
  , "OperationName" :: Maybe String
  , "RequestModels" :: Maybe (Object String)
  , "RequestParameters" :: Maybe (Object Boolean)
  , "RequestValidatorId" :: Maybe String
  }

method :: { "HttpMethod" :: String, "ResourceId" :: String, "RestApiId" :: String } -> Method
method required =
  merge required
    { "ApiKeyRequired" : Nothing
    , "AuthorizationScopes" : Nothing
    , "AuthorizationType" : Nothing
    , "AuthorizerId" : Nothing
    , "Integration" : Nothing
    , "MethodResponses" : Nothing
    , "OperationName" : Nothing
    , "RequestModels" : Nothing
    , "RequestParameters" : Nothing
    , "RequestValidatorId" : Nothing
    }

type IntegrationResponse =
  { "StatusCode" :: String
  , "ContentHandling" :: Maybe String
  , "ResponseParameters" :: Maybe (Object String)
  , "ResponseTemplates" :: Maybe (Object String)
  , "SelectionPattern" :: Maybe String
  }

integrationResponse :: { "StatusCode" :: String } -> IntegrationResponse
integrationResponse required =
  merge required
    { "ContentHandling" : Nothing
    , "ResponseParameters" : Nothing
    , "ResponseTemplates" : Nothing
    , "SelectionPattern" : Nothing
    }

type Integration =
  { "CacheKeyParameters" :: Maybe (Array String)
  , "CacheNamespace" :: Maybe String
  , "ConnectionId" :: Maybe String
  , "ConnectionType" :: Maybe String
  , "ContentHandling" :: Maybe String
  , "Credentials" :: Maybe String
  , "IntegrationHttpMethod" :: Maybe String
  , "IntegrationResponses" :: Maybe (Array IntegrationResponse)
  , "PassthroughBehavior" :: Maybe String
  , "RequestParameters" :: Maybe (Object String)
  , "RequestTemplates" :: Maybe (Object String)
  , "TimeoutInMillis" :: Maybe Int
  , "Type" :: Maybe String
  , "Uri" :: Maybe String
  }

integration :: Integration
integration =
  { "CacheKeyParameters" : Nothing
  , "CacheNamespace" : Nothing
  , "ConnectionId" : Nothing
  , "ConnectionType" : Nothing
  , "ContentHandling" : Nothing
  , "Credentials" : Nothing
  , "IntegrationHttpMethod" : Nothing
  , "IntegrationResponses" : Nothing
  , "PassthroughBehavior" : Nothing
  , "RequestParameters" : Nothing
  , "RequestTemplates" : Nothing
  , "TimeoutInMillis" : Nothing
  , "Type" : Nothing
  , "Uri" : Nothing
  }

type MethodResponse =
  { "StatusCode" :: String
  , "ResponseModels" :: Maybe (Object String)
  , "ResponseParameters" :: Maybe (Object Boolean)
  }

methodResponse :: { "StatusCode" :: String } -> MethodResponse
methodResponse required =
  merge required
    { "ResponseModels" : Nothing
    , "ResponseParameters" : Nothing
    }