module CloudFormation.AWS.ApiGatewayV2.Model where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


-- | `AWS::ApiGatewayV2::Model`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-description
-- | - `ContentType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-contenttype
-- | - `Schema`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-schema
-- | - `ApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-apiid
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html#cfn-apigatewayv2-model-name
type Model =
  { "Schema" :: Foreign
  , "ApiId" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  , "ContentType" :: Maybe String
  }

model :: { "Schema" :: Foreign, "ApiId" :: String, "Name" :: String } -> Model
model required =
  merge required
    { "Description" : Nothing
    , "ContentType" : Nothing
    }