module CloudFormation.AWS.ApiGatewayV2.IntegrationResponse where 

import CloudFormation (Json)
import Data.Maybe (Maybe(..))
import Record (merge)


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
type IntegrationResponse =
  { "IntegrationId" :: String
  , "IntegrationResponseKey" :: String
  , "ApiId" :: String
  , "ResponseTemplates" :: Maybe Json
  , "TemplateSelectionExpression" :: Maybe String
  , "ResponseParameters" :: Maybe Json
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