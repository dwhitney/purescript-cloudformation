module CloudFormation.AWS.ApiGatewayV2.IntegrationResponse where 

import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApiGatewayV2::IntegrationResponse`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html
-- |
-- | - `ResponseTemplates`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html#cfn-apigatewayv2-integrationresponse-responsetemplates
-- | - `TemplateSelectionExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html#cfn-apigatewayv2-integrationresponse-templateselectionexpression
-- | - `ResponseParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html#cfn-apigatewayv2-integrationresponse-responseparameters
-- | - `ContentHandlingStrategy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html#cfn-apigatewayv2-integrationresponse-contenthandlingstrategy
-- | - `IntegrationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html#cfn-apigatewayv2-integrationresponse-integrationid
-- | - `IntegrationResponseKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html#cfn-apigatewayv2-integrationresponse-integrationresponsekey
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-integrationresponse.html#cfn-apigatewayv2-integrationresponse-apiid
newtype IntegrationResponse = IntegrationResponse
  { "IntegrationId" :: String
  , "IntegrationResponseKey" :: String
  , "ApiId" :: String
  , "ResponseTemplates" :: Maybe CF.Json
  , "TemplateSelectionExpression" :: Maybe String
  , "ResponseParameters" :: Maybe CF.Json
  , "ContentHandlingStrategy" :: Maybe String
  }

derive instance newtypeIntegrationResponse :: Newtype IntegrationResponse _
instance resourceIntegrationResponse :: Resource IntegrationResponse where type_ _ = "AWS::ApiGatewayV2::IntegrationResponse"

integrationResponse :: { "IntegrationId" :: String, "IntegrationResponseKey" :: String, "ApiId" :: String } -> IntegrationResponse
integrationResponse required = IntegrationResponse
  (merge required
    { "ResponseTemplates" : Nothing
    , "TemplateSelectionExpression" : Nothing
    , "ResponseParameters" : Nothing
    , "ContentHandlingStrategy" : Nothing
    })