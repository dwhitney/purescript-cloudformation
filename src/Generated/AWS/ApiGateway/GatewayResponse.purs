module CloudFormation.AWS.ApiGateway.GatewayResponse where 

import CloudFormation (Value)
import Foreign.Object (Object)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGateway::GatewayResponse`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-gatewayresponse.html
-- |
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
newtype GatewayResponse = GatewayResponse
  { "ResponseType" :: Value String
  , "RestApiId" :: Value String
  , "ResponseParameters" :: Maybe (Value (Object String))
  , "ResponseTemplates" :: Maybe (Value (Object String))
  , "StatusCode" :: Maybe (Value String)
  }

derive instance newtypeGatewayResponse :: Newtype GatewayResponse _
derive newtype instance writeGatewayResponse :: WriteForeign GatewayResponse
instance resourceGatewayResponse :: Resource GatewayResponse where type_ _ = "AWS::ApiGateway::GatewayResponse"

gatewayResponse :: { "ResponseType" :: Value String, "RestApiId" :: Value String } -> GatewayResponse
gatewayResponse required = GatewayResponse
  (merge required
    { "ResponseParameters" : Nothing
    , "ResponseTemplates" : Nothing
    , "StatusCode" : Nothing
    })