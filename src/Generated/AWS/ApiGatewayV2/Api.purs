module CloudFormation.AWS.ApiGatewayV2.Api where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGatewayV2::Api`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html
-- |
-- | - `RouteSelectionExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-routeselectionexpression
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-description
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-version
-- | - `ProtocolType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-protocoltype
-- | - `DisableSchemaValidation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-disableschemavalidation
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-name
-- | - `ApiKeySelectionExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-api.html#cfn-apigatewayv2-api-apikeyselectionexpression
newtype Api = Api
  { "RouteSelectionExpression" :: Value String
  , "ProtocolType" :: Value String
  , "Name" :: Value String
  , "Description" :: Maybe (Value String)
  , "Version" :: Maybe (Value String)
  , "DisableSchemaValidation" :: Maybe (Value Boolean)
  , "Tags" :: Maybe (Value CF.Json)
  , "ApiKeySelectionExpression" :: Maybe (Value String)
  }

derive instance newtypeApi :: Newtype Api _
derive newtype instance writeApi :: WriteForeign Api
instance resourceApi :: Resource Api where type_ _ = "AWS::ApiGatewayV2::Api"

api :: { "RouteSelectionExpression" :: Value String, "ProtocolType" :: Value String, "Name" :: Value String } -> Api
api required = Api
  (merge required
    { "Description" : Nothing
    , "Version" : Nothing
    , "DisableSchemaValidation" : Nothing
    , "Tags" : Nothing
    , "ApiKeySelectionExpression" : Nothing
    })