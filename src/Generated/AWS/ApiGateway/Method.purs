module CloudFormation.AWS.ApiGateway.Method where 

import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApiGateway::Method`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html
-- |
-- | - `ApiKeyRequired`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-apikeyrequired
-- | - `AuthorizationScopes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-authorizationscopes
-- | - `AuthorizationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-authorizationtype
-- | - `AuthorizerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-authorizerid
-- | - `HttpMethod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-httpmethod
-- | - `Integration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-integration
-- | - `MethodResponses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-methodresponses
-- | - `OperationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-operationname
-- | - `RequestModels`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-requestmodels
-- | - `RequestParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-requestparameters
-- | - `RequestValidatorId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-requestvalidatorid
-- | - `ResourceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-resourceid
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-method.html#cfn-apigateway-method-restapiid
newtype Method = Method
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

derive instance newtypeMethod :: Newtype Method _
instance resourceMethod :: Resource Method where type_ _ = "AWS::ApiGateway::Method"

method :: { "HttpMethod" :: String, "ResourceId" :: String, "RestApiId" :: String } -> Method
method required = Method
  (merge required
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
    })

-- | `AWS::ApiGateway::Method.IntegrationResponse`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html
-- |
-- | - `ContentHandling`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html#cfn-apigateway-method-integrationresponse-contenthandling
-- | - `ResponseParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html#cfn-apigateway-method-integration-integrationresponse-responseparameters
-- | - `ResponseTemplates`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html#cfn-apigateway-method-integration-integrationresponse-responsetemplates
-- | - `SelectionPattern`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html#cfn-apigateway-method-integration-integrationresponse-selectionpattern
-- | - `StatusCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration-integrationresponse.html#cfn-apigateway-method-integration-integrationresponse-statuscode
type IntegrationResponse =
  { "StatusCode" :: String
  , "ContentHandling" :: Maybe String
  , "ResponseParameters" :: Maybe (Object String)
  , "ResponseTemplates" :: Maybe (Object String)
  , "SelectionPattern" :: Maybe String
  }

integrationResponse :: { "StatusCode" :: String } -> IntegrationResponse
integrationResponse required =
  (merge required
    { "ContentHandling" : Nothing
    , "ResponseParameters" : Nothing
    , "ResponseTemplates" : Nothing
    , "SelectionPattern" : Nothing
    })

-- | `AWS::ApiGateway::Method.Integration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html
-- |
-- | - `CacheKeyParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-cachekeyparameters
-- | - `CacheNamespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-cachenamespace
-- | - `ConnectionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-connectionid
-- | - `ConnectionType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-connectiontype
-- | - `ContentHandling`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-contenthandling
-- | - `Credentials`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-credentials
-- | - `IntegrationHttpMethod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-integrationhttpmethod
-- | - `IntegrationResponses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-integrationresponses
-- | - `PassthroughBehavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-passthroughbehavior
-- | - `RequestParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-requestparameters
-- | - `RequestTemplates`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-requesttemplates
-- | - `TimeoutInMillis`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-timeoutinmillis
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-type
-- | - `Uri`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-integration.html#cfn-apigateway-method-integration-uri
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

-- | `AWS::ApiGateway::Method.MethodResponse`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html
-- |
-- | - `ResponseModels`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-responsemodels
-- | - `ResponseParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-responseparameters
-- | - `StatusCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apitgateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-statuscode
type MethodResponse =
  { "StatusCode" :: String
  , "ResponseModels" :: Maybe (Object String)
  , "ResponseParameters" :: Maybe (Object Boolean)
  }

methodResponse :: { "StatusCode" :: String } -> MethodResponse
methodResponse required =
  (merge required
    { "ResponseModels" : Nothing
    , "ResponseParameters" : Nothing
    })