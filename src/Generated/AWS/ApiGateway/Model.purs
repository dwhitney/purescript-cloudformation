module CloudFormation.AWS.ApiGateway.Model where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "RestApiId" :: String
  , "ContentType" :: Maybe String
  , "Description" :: Maybe String
  , "Name" :: Maybe String
  , "Schema" :: Maybe CF.Json
  }

derive instance newtypeModel :: Newtype Model _
instance resourceModel :: Resource Model where type_ _ = "AWS::ApiGateway::Model"

model :: { "RestApiId" :: String } -> Model
model required = Model
  (merge required
    { "ContentType" : Nothing
    , "Description" : Nothing
    , "Name" : Nothing
    , "Schema" : Nothing
    })