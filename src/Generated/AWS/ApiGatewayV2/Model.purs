module CloudFormation.AWS.ApiGatewayV2.Model where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Schema" :: Value CF.Json
  , "ApiId" :: Value String
  , "Name" :: Value String
  , "Description" :: Maybe (Value String)
  , "ContentType" :: Maybe (Value String)
  }

derive instance newtypeModel :: Newtype Model _
derive newtype instance writeModel :: WriteForeign Model
instance resourceModel :: Resource Model where type_ _ = "AWS::ApiGatewayV2::Model"

model :: { "Schema" :: Value CF.Json, "ApiId" :: Value String, "Name" :: Value String } -> Model
model required = Model
  (merge required
    { "Description" : Nothing
    , "ContentType" : Nothing
    })