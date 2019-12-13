module CloudFormation.AWS.GameLift.Build where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Record (merge)


-- | `AWS::GameLift::Build`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html#cfn-gamelift-build-name
-- | - `OperatingSystem`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html#cfn-gamelift-build-operatingsystem
-- | - `StorageLocation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html#cfn-gamelift-build-storagelocation
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-build.html#cfn-gamelift-build-version
newtype Build = Build
  { "Name" :: Maybe (Value String)
  , "OperatingSystem" :: Maybe (Value String)
  , "StorageLocation" :: Maybe (Value S3Location)
  , "Version" :: Maybe (Value String)
  }

derive instance newtypeBuild :: Newtype Build _
derive newtype instance writeBuild :: WriteForeign Build
instance resourceBuild :: Resource Build where type_ _ = "AWS::GameLift::Build"

build :: Build
build = Build
  { "Name" : Nothing
  , "OperatingSystem" : Nothing
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
-- | - `ObjectVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-object-verison
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-build-storagelocation.html#cfn-gamelift-build-storage-rolearn
type S3Location =
  { "Bucket" :: Value String
  , "Key" :: Value String
  , "RoleArn" :: Value String
  , "ObjectVersion" :: Maybe (Value String)
  }

s3Location :: { "Bucket" :: Value String, "Key" :: Value String, "RoleArn" :: Value String } -> S3Location
s3Location required =
  (merge required
    { "ObjectVersion" : Nothing
    })