module CloudFormation.AWS.ApiGatewayV2.RouteResponse where 

import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApiGatewayV2::RouteResponse`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html
-- |
-- | - `RouteResponseKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-routeresponsekey
-- | - `ResponseParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-responseparameters
-- | - `RouteId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-routeid
-- | - `ModelSelectionExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-modelselectionexpression
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-apiid
-- | - `ResponseModels`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html#cfn-apigatewayv2-routeresponse-responsemodels
newtype RouteResponse = RouteResponse
  { "RouteResponseKey" :: String
  , "RouteId" :: String
  , "ApiId" :: String
  , "ResponseParameters" :: Maybe CF.Json
  , "ModelSelectionExpression" :: Maybe String
  , "ResponseModels" :: Maybe CF.Json
  }

derive instance newtypeRouteResponse :: Newtype RouteResponse _
instance resourceRouteResponse :: Resource RouteResponse where type_ _ = "AWS::ApiGatewayV2::RouteResponse"

routeResponse :: { "RouteResponseKey" :: String, "RouteId" :: String, "ApiId" :: String } -> RouteResponse
routeResponse required = RouteResponse
  (merge required
    { "ResponseParameters" : Nothing
    , "ModelSelectionExpression" : Nothing
    , "ResponseModels" : Nothing
    })

-- | `AWS::ApiGatewayV2::RouteResponse.ParameterConstraints`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routeresponse-parameterconstraints.html
-- |
-- | - `Required`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routeresponse-parameterconstraints.html#cfn-apigatewayv2-routeresponse-parameterconstraints-required
type ParameterConstraints =
  { "Required" :: Boolean
  }

parameterConstraints :: { "Required" :: Boolean } -> ParameterConstraints
parameterConstraints required =
  required