module CloudFormation.AWS.GameLift.Build where 

import Data.Maybe (Maybe(..))


type Build =
  { "Name" :: Maybe String
  , "StorageLocation" :: Maybe S3Location
  , "Version" :: Maybe String
  }

build :: Build
build =
  { "Name" : Nothing
  , "StorageLocation" : Nothing
  , "Version" : Nothing
  }

type S3Location =
  { "Bucket" :: String
  , "Key" :: String
  , "RoleArn" :: String
  }

s3Location :: { "Bucket" :: String, "Key" :: String, "RoleArn" :: String } -> S3Location
s3Location required =
  required