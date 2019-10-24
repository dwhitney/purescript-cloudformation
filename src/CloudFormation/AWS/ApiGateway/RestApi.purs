module CloudFormation.AWS.ApiGateway.RestApi where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Foreign.Object (Object)


type RestApi =
  { "ApiKeySourceType" :: Maybe String
  , "BinaryMediaTypes" :: Maybe (Array String)
  , "Body" :: Maybe Foreign
  , "BodyS3Location" :: Maybe S3Location
  , "CloneFrom" :: Maybe String
  , "Description" :: Maybe String
  , "EndpointConfiguration" :: Maybe EndpointConfiguration
  , "FailOnWarnings" :: Maybe Boolean
  , "MinimumCompressionSize" :: Maybe Int
  , "Name" :: Maybe String
  , "Parameters" :: Maybe (Object String)
  , "Policy" :: Maybe Foreign
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

type EndpointConfiguration =
  { "Types" :: Maybe (Array String)
  }

endpointConfiguration :: EndpointConfiguration
endpointConfiguration =
  { "Types" : Nothing
  }

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