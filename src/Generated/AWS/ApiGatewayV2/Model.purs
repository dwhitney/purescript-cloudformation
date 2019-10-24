module CloudFormation.AWS.ApiGatewayV2.Model where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApiGatewayV2::Model`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-model.html
-- |
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
newtype Model = Model
  { "Schema" :: CF.Json
  , "ApiId" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  , "ContentType" :: Maybe String
  }

derive instance newtypeModel :: Newtype Model _
instance resourceModel :: Resource Model where type_ _ = "AWS::ApiGatewayV2::Model"

model :: { "Schema" :: CF.Json, "ApiId" :: String, "Name" :: String } -> Model
model required = Model
  (merge required
    { "Description" : Nothing
    , "ContentType" : Nothing
    })