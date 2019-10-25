module CloudFormation.AWS.ApiGatewayV2.RouteResponse where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "RouteResponseKey" :: Value String
  , "RouteId" :: Value String
  , "ApiId" :: Value String
  , "ResponseParameters" :: Maybe (Value CF.Json)
  , "ModelSelectionExpression" :: Maybe (Value String)
  , "ResponseModels" :: Maybe (Value CF.Json)
  }

derive instance newtypeRouteResponse :: Newtype RouteResponse _
derive newtype instance writeRouteResponse :: WriteForeign RouteResponse
instance resourceRouteResponse :: Resource RouteResponse where type_ _ = "AWS::ApiGatewayV2::RouteResponse"

routeResponse :: { "RouteResponseKey" :: Value String, "RouteId" :: Value String, "ApiId" :: Value String } -> RouteResponse
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
  { "Required" :: Value Boolean
  }

parameterConstraints :: { "Required" :: Value Boolean } -> ParameterConstraints
parameterConstraints required =
  required