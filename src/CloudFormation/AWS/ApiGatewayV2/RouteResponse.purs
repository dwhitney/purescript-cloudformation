module CloudFormation.AWS.ApiGatewayV2.RouteResponse where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ApiGatewayV2::RouteResponse`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routeresponse.html-- |
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
type RouteResponse =
  { "RouteResponseKey" :: String
  , "RouteId" :: String
  , "ApiId" :: String
  , "ResponseParameters" :: Maybe Foreign
  , "ModelSelectionExpression" :: Maybe String
  , "ResponseModels" :: Maybe Foreign
  }

routeResponse :: { "RouteResponseKey" :: String, "RouteId" :: String, "ApiId" :: String } -> RouteResponse
routeResponse required =
  merge required
    { "ResponseParameters" : Nothing
    , "ModelSelectionExpression" : Nothing
    , "ResponseModels" : Nothing
    }

-- | `AWS::ApiGatewayV2::RouteResponse.ParameterConstraints`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routeresponse-parameterconstraints.html-- |
-- | - `Required`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routeresponse-parameterconstraints.html#cfn-apigatewayv2-routeresponse-parameterconstraints-required
type ParameterConstraints =
  { "Required" :: Boolean
  }

parameterConstraints :: { "Required" :: Boolean } -> ParameterConstraints
parameterConstraints required =
  required