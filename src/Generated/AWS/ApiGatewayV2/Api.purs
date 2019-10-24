module CloudFormation.AWS.ApiGatewayV2.Api where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "RouteSelectionExpression" :: String
  , "ProtocolType" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  , "Version" :: Maybe String
  , "DisableSchemaValidation" :: Maybe Boolean
  , "Tags" :: Maybe CF.Json
  , "ApiKeySelectionExpression" :: Maybe String
  }

derive instance newtypeApi :: Newtype Api _
instance resourceApi :: Resource Api where type_ _ = "AWS::ApiGatewayV2::Api"

api :: { "RouteSelectionExpression" :: String, "ProtocolType" :: String, "Name" :: String } -> Api
api required = Api
  (merge required
    { "Description" : Nothing
    , "Version" : Nothing
    , "DisableSchemaValidation" : Nothing
    , "Tags" : Nothing
    , "ApiKeySelectionExpression" : Nothing
    })