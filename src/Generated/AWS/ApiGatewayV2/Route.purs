module CloudFormation.AWS.ApiGatewayV2.Route where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "RouteKey" :: Value String
  , "ApiId" :: Value String
  , "Target" :: Maybe (Value String)
  , "RouteResponseSelectionExpression" :: Maybe (Value String)
  , "AuthorizerId" :: Maybe (Value String)
  , "RequestModels" :: Maybe (Value CF.Json)
  , "OperationName" :: Maybe (Value String)
  , "AuthorizationScopes" :: Maybe (Value (Array String))
  , "ApiKeyRequired" :: Maybe (Value Boolean)
  , "AuthorizationType" :: Maybe (Value String)
  , "ModelSelectionExpression" :: Maybe (Value String)
  , "RequestParameters" :: Maybe (Value CF.Json)
  }

derive instance newtypeRoute :: Newtype Route _
derive newtype instance writeRoute :: WriteForeign Route
instance resourceRoute :: Resource Route where type_ _ = "AWS::ApiGatewayV2::Route"

route :: { "RouteKey" :: Value String, "ApiId" :: Value String } -> Route
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
  { "Required" :: Value Boolean
  }

parameterConstraints :: { "Required" :: Value Boolean } -> ParameterConstraints
parameterConstraints required =
  required