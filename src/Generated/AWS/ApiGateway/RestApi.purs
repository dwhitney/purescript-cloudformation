module CloudFormation.AWS.ApiGateway.RestApi where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import Foreign.Object (Object)


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
type RestApi =
  { "ApiKeySourceType" :: Maybe String
  , "BinaryMediaTypes" :: Maybe (Array String)
  , "Body" :: Maybe Json
  , "BodyS3Location" :: Maybe S3Location
  , "CloneFrom" :: Maybe String
  , "Description" :: Maybe String
  , "EndpointConfiguration" :: Maybe EndpointConfiguration
  , "FailOnWarnings" :: Maybe Boolean
  , "MinimumCompressionSize" :: Maybe Int
  , "Name" :: Maybe String
  , "Parameters" :: Maybe (Object String)
  , "Policy" :: Maybe Json
  }

restApi :: RestApi
restApi =
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
  { "Types" :: Maybe (Array String)
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
  { "Bucket" :: Maybe String
  , "ETag" :: Maybe String
  , "Key" :: Maybe String
  , "Version" :: Maybe String
  }

s3Location :: S3Location
s3Location =
  { "Bucket" : Nothing
  , "ETag" : Nothing
  , "Key" : Nothing
  , "Version" : Nothing
  }