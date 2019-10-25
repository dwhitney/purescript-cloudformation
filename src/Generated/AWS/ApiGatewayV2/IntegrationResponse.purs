module CloudFormation.AWS.ApiGatewayV2.IntegrationResponse where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "IntegrationId" :: Value String
  , "IntegrationResponseKey" :: Value String
  , "ApiId" :: Value String
  , "ResponseTemplates" :: Maybe (Value CF.Json)
  , "TemplateSelectionExpression" :: Maybe (Value String)
  , "ResponseParameters" :: Maybe (Value CF.Json)
  , "ContentHandlingStrategy" :: Maybe (Value String)
  }

derive instance newtypeIntegrationResponse :: Newtype IntegrationResponse _
derive newtype instance writeIntegrationResponse :: WriteForeign IntegrationResponse
instance resourceIntegrationResponse :: Resource IntegrationResponse where type_ _ = "AWS::ApiGatewayV2::IntegrationResponse"

integrationResponse :: { "IntegrationId" :: Value String, "IntegrationResponseKey" :: Value String, "ApiId" :: Value String } -> IntegrationResponse
integrationResponse required = IntegrationResponse
  (merge required
    { "ResponseTemplates" : Nothing
    , "TemplateSelectionExpression" : Nothing
    , "ResponseParameters" : Nothing
    , "ContentHandlingStrategy" : Nothing
    })