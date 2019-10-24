module CloudFormation.AWS.ApiGatewayV2.Api where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import Record (merge)


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
type Api =
  { "RouteSelectionExpression" :: String
  , "ProtocolType" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  , "Version" :: Maybe String
  , "DisableSchemaValidation" :: Maybe Boolean
  , "Tags" :: Maybe Json
  , "ApiKeySelectionExpression" :: Maybe String
  }

api :: { "RouteSelectionExpression" :: String, "ProtocolType" :: String, "Name" :: String } -> Api
api required =
  merge required
    { "Description" : Nothing
    , "Version" : Nothing
    , "DisableSchemaValidation" : Nothing
    , "Tags" : Nothing
    , "ApiKeySelectionExpression" : Nothing
    }