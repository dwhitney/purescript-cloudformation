module CloudFormation.AWS.ApiGatewayV2.Route where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApiGatewayV2::Route`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html
-- |
-- | - `Target`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-target
-- | - `RouteResponseSelectionExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-routeresponseselectionexpression
-- | - `AuthorizerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-authorizerid
-- | - `RequestModels`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-requestmodels
-- | - `OperationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-operationname
-- | - `AuthorizationScopes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-authorizationscopes
-- | - `ApiKeyRequired`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-apikeyrequired
-- | - `RouteKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-routekey
-- | - `AuthorizationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-authorizationtype
-- | - `ModelSelectionExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-modelselectionexpression
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-apiid
-- | - `RequestParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-route.html#cfn-apigatewayv2-route-requestparameters
newtype Route = Route
  { "RouteKey" :: String
  , "ApiId" :: String
  , "Target" :: Maybe String
  , "RouteResponseSelectionExpression" :: Maybe String
  , "AuthorizerId" :: Maybe String
  , "RequestModels" :: Maybe CF.Json
  , "OperationName" :: Maybe String
  , "AuthorizationScopes" :: Maybe (Array String)
  , "ApiKeyRequired" :: Maybe Boolean
  , "AuthorizationType" :: Maybe String
  , "ModelSelectionExpression" :: Maybe String
  , "RequestParameters" :: Maybe CF.Json
  }

derive instance newtypeRoute :: Newtype Route _
instance resourceRoute :: Resource Route where type_ _ = "AWS::ApiGatewayV2::Route"

route :: { "RouteKey" :: String, "ApiId" :: String } -> Route
route required = Route
  (merge required
    { "Target" : Nothing
    , "RouteResponseSelectionExpression" : Nothing
    , "AuthorizerId" : Nothing
    , "RequestModels" : Nothing
    , "OperationName" : Nothing
    , "AuthorizationScopes" : Nothing
    , "ApiKeyRequired" : Nothing
    , "AuthorizationType" : Nothing
    , "ModelSelectionExpression" : Nothing
    , "RequestParameters" : Nothing
    })

-- | `AWS::ApiGatewayV2::Route.ParameterConstraints`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-route-parameterconstraints.html
-- |
-- | - `Required`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-route-parameterconstraints.html#cfn-apigatewayv2-route-parameterconstraints-required
type ParameterConstraints =
  { "Required" :: Boolean
  }

parameterConstraints :: { "Required" :: Boolean } -> ParameterConstraints
parameterConstraints required =
  required