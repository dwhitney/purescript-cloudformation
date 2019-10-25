module CloudFormation.AWS.ApiGatewayV2.Integration where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGatewayV2::Integration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-description
-- | - `TemplateSelectionExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-templateselectionexpression
-- | - `ConnectionType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-connectiontype
-- | - `IntegrationMethod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-integrationmethod
-- | - `PassthroughBehavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-passthroughbehavior
-- | - `RequestParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-requestparameters
-- | - `IntegrationUri`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-integrationuri
-- | - `CredentialsArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-credentialsarn
-- | - `RequestTemplates`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-requesttemplates
-- | - `TimeoutInMillis`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-timeoutinmillis
-- | - `ContentHandlingStrategy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-contenthandlingstrategy
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-apiid
-- | - `IntegrationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integration.html#cfn-apigatewayv2-integration-integrationtype
newtype Integration = Integration
  { "ApiId" :: Value String
  , "IntegrationType" :: Value String
  , "Description" :: Maybe (Value String)
  , "TemplateSelectionExpression" :: Maybe (Value String)
  , "ConnectionType" :: Maybe (Value String)
  , "IntegrationMethod" :: Maybe (Value String)
  , "PassthroughBehavior" :: Maybe (Value String)
  , "RequestParameters" :: Maybe (Value CF.Json)
  , "IntegrationUri" :: Maybe (Value String)
  , "CredentialsArn" :: Maybe (Value String)
  , "RequestTemplates" :: Maybe (Value CF.Json)
  , "TimeoutInMillis" :: Maybe (Value Int)
  , "ContentHandlingStrategy" :: Maybe (Value String)
  }

derive instance newtypeIntegration :: Newtype Integration _
derive newtype instance writeIntegration :: WriteForeign Integration
instance resourceIntegration :: Resource Integration where type_ _ = "AWS::ApiGatewayV2::Integration"

integration :: { "ApiId" :: Value String, "IntegrationType" :: Value String } -> Integration
integration required = Integration
  (merge required
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
    })