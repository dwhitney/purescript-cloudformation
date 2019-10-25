module CloudFormation.AWS.ApiGateway.Method where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "HttpMethod" :: Value String
  , "ResourceId" :: Value String
  , "RestApiId" :: Value String
  , "ApiKeyRequired" :: Maybe (Value Boolean)
  , "AuthorizationScopes" :: Maybe (Value (Array String))
  , "AuthorizationType" :: Maybe (Value String)
  , "AuthorizerId" :: Maybe (Value String)
  , "Integration" :: Maybe (Value Integration)
  , "MethodResponses" :: Maybe (Value (Array MethodResponse))
  , "OperationName" :: Maybe (Value String)
  , "RequestModels" :: Maybe (Value (Object String))
  , "RequestParameters" :: Maybe (Value (Object Boolean))
  , "RequestValidatorId" :: Maybe (Value String)
  }

derive instance newtypeMethod :: Newtype Method _
derive newtype instance writeMethod :: WriteForeign Method
instance resourceMethod :: Resource Method where type_ _ = "AWS::ApiGateway::Method"

method :: { "HttpMethod" :: Value String, "ResourceId" :: Value String, "RestApiId" :: Value String } -> Method
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
  { "StatusCode" :: Value String
  , "ContentHandling" :: Maybe (Value String)
  , "ResponseParameters" :: Maybe (Value (Object String))
  , "ResponseTemplates" :: Maybe (Value (Object String))
  , "SelectionPattern" :: Maybe (Value String)
  }

integrationResponse :: { "StatusCode" :: Value String } -> IntegrationResponse
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
  { "CacheKeyParameters" :: Maybe (Value (Array String))
  , "CacheNamespace" :: Maybe (Value String)
  , "ConnectionId" :: Maybe (Value String)
  , "ConnectionType" :: Maybe (Value String)
  , "ContentHandling" :: Maybe (Value String)
  , "Credentials" :: Maybe (Value String)
  , "IntegrationHttpMethod" :: Maybe (Value String)
  , "IntegrationResponses" :: Maybe (Value (Array IntegrationResponse))
  , "PassthroughBehavior" :: Maybe (Value String)
  , "RequestParameters" :: Maybe (Value (Object String))
  , "RequestTemplates" :: Maybe (Value (Object String))
  , "TimeoutInMillis" :: Maybe (Value Int)
  , "Type" :: Maybe (Value String)
  , "Uri" :: Maybe (Value String)
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
  { "StatusCode" :: Value String
  , "ResponseModels" :: Maybe (Value (Object String))
  , "ResponseParameters" :: Maybe (Value (Object Boolean))
  }

methodResponse :: { "StatusCode" :: Value String } -> MethodResponse
methodResponse required =
  (merge required
    { "ResponseModels" : Nothing
    , "ResponseParameters" : Nothing
    })