module CloudFormation.AWS.GameLift.Build where 

import Data.Maybe (Maybe(..))


-- | `AWS::GameLift::Build`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html#cfn-gamelift-build-name
-- | - `StorageLocation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html#cfn-gamelift-build-storagelocation
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html#cfn-gamelift-build-version
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

-- | `AWS::GameLift::Build.S3Location`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html
-- |
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storage-bucket
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storage-key
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storage-rolearn
type S3Location =
  { "Bucket" :: String
  , "Key" :: String
  , "RoleArn" :: String
  }

s3Location :: { "Bucket" :: String, "Key" :: String, "RoleArn" :: String } -> S3Location
s3Location required =
  required