module CloudFormation.AWS.ApiGateway.GatewayResponse where 

import Foreign.Object (Object)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ApiGateway::GatewayResponse`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-gatewayresponse.html-- |
-- | - `ResponseParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-gatewayresponse.html#cfn-apigateway-gatewayresponse-responseparameters
-- | - `ResponseTemplates`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-gatewayresponse.html#cfn-apigateway-gatewayresponse-responsetemplates
-- | - `ResponseType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-gatewayresponse.html#cfn-apigateway-gatewayresponse-responsetype
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-gatewayresponse.html#cfn-apigateway-gatewayresponse-restapiid
-- | - `StatusCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-gatewayresponse.html#cfn-apigateway-gatewayresponse-statuscode
type GatewayResponse =
  { "ResponseType" :: String
  , "RestApiId" :: String
  , "ResponseParameters" :: Maybe (Object String)
  , "ResponseTemplates" :: Maybe (Object String)
  , "StatusCode" :: Maybe String
  }

gatewayResponse :: { "ResponseType" :: String, "RestApiId" :: String } -> GatewayResponse
gatewayResponse required =
  merge required
    { "ResponseParameters" : Nothing
    , "ResponseTemplates" : Nothing
    , "StatusCode" : Nothing
    }