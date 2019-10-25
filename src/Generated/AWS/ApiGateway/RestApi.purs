module CloudFormation.AWS.ApiGateway.RestApi where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Foreign.Object (Object)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApiGateway::RestApi`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html
-- |
-- | - `ApiKeySourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-apikeysourcetype
-- | - `BinaryMediaTypes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-binarymediatypes
-- | - `Body`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-body
-- | - `BodyS3Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-bodys3location
-- | - `CloneFrom`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-clonefrom
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-description
-- | - `EndpointConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-endpointconfiguration
-- | - `FailOnWarnings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-failonwarnings
-- | - `MinimumCompressionSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-minimumcompressionsize
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-name
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-parameters
-- | - `Policy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigateway-restapi.html#cfn-apigateway-restapi-policy
newtype RestApi = RestApi
  { "ApiKeySourceType" :: Maybe (Value String)
  , "BinaryMediaTypes" :: Maybe (Value (Array String))
  , "Body" :: Maybe (Value CF.Json)
  , "BodyS3Location" :: Maybe (Value S3Location)
  , "CloneFrom" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "EndpointConfiguration" :: Maybe (Value EndpointConfiguration)
  , "FailOnWarnings" :: Maybe (Value Boolean)
  , "MinimumCompressionSize" :: Maybe (Value Int)
  , "Name" :: Maybe (Value String)
  , "Parameters" :: Maybe (Value (Object String))
  , "Policy" :: Maybe (Value CF.Json)
  }

derive instance newtypeRestApi :: Newtype RestApi _
derive newtype instance writeRestApi :: WriteForeign RestApi
instance resourceRestApi :: Resource RestApi where type_ _ = "AWS::ApiGateway::RestApi"

restApi :: RestApi
restApi = RestApi
  { "ApiKeySourceType" : Nothing
  , "BinaryMediaTypes" : Nothing
  , "Body" : Nothing
  , "BodyS3Location" : Nothing
  , "CloneFrom" : Nothing
  , "Description" : Nothing
  , "EndpointConfiguration" : Nothing
  , "FailOnWarnings" : Nothing
  , "MinimumCompressionSize" : Nothing
  , "Name" : Nothing
  , "Parameters" : Nothing
  , "Policy" : Nothing
  }

-- | `AWS::ApiGateway::RestApi.EndpointConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html
-- |
-- | - `Types`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-endpointconfiguration.html#cfn-apigateway-restapi-endpointconfiguration-types
type EndpointConfiguration =
  { "Types" :: Maybe (Value (Array String))
  }

endpointConfiguration :: EndpointConfiguration
endpointConfiguration =
  { "Types" : Nothing
  }

-- | `AWS::ApiGateway::RestApi.S3Location`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html
-- |
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html#cfn-apigateway-restapi-s3location-bucket
-- | - `ETag`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html#cfn-apigateway-restapi-s3location-etag
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html#cfn-apigateway-restapi-s3location-key
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-restapi-s3location.html#cfn-apigateway-restapi-s3location-version
type S3Location =
  { "Bucket" :: Maybe (Value String)
  , "ETag" :: Maybe (Value String)
  , "Key" :: Maybe (Value String)
  , "Version" :: Maybe (Value String)
  }

s3Location :: S3Location
s3Location =
  { "Bucket" : Nothing
  , "ETag" : Nothing
  , "Key" : Nothing
  , "Version" : Nothing
  }