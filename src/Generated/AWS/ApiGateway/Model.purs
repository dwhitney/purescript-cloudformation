module CloudFormation.AWS.ApiGateway.Model where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGateway::Model`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html
-- |
-- | - `ContentType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-contenttype
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-description
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-name
-- | - `RestApiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-restapiid
-- | - `Schema`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-model.html#cfn-apigateway-model-schema
newtype Model = Model
  { "RestApiId" :: Value String
  , "ContentType" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  , "Schema" :: Maybe (Value CF.Json)
  }

derive instance newtypeModel :: Newtype Model _
derive newtype instance writeModel :: WriteForeign Model
instance resourceModel :: Resource Model where type_ _ = "AWS::ApiGateway::Model"

model :: { "RestApiId" :: Value String } -> Model
model required = Model
  (merge required
    { "ContentType" : Nothing
    , "Description" : Nothing
    , "Name" : Nothing
    , "Schema" : Nothing
    })