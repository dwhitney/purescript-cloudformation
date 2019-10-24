module CloudFormation.AWS.ApiGatewayV2.Integration where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import Record (merge)


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
type Integration =
  { "ApiId" :: String
  , "IntegrationType" :: String
  , "Description" :: Maybe String
  , "TemplateSelectionExpression" :: Maybe String
  , "ConnectionType" :: Maybe String
  , "IntegrationMethod" :: Maybe String
  , "PassthroughBehavior" :: Maybe String
  , "RequestParameters" :: Maybe Json
  , "IntegrationUri" :: Maybe String
  , "CredentialsArn" :: Maybe String
  , "RequestTemplates" :: Maybe Json
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