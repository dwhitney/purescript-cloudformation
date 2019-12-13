module CloudFormation.AWS.GameLift.Script where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::GameLift::Script`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-script.html
-- |
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-script.html#cfn-gamelift-script-version
-- | - `StorageLocation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-script.html#cfn-gamelift-script-storagelocation
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-gamelift-script.html#cfn-gamelift-script-name
newtype Script = Script
  { "StorageLocation" :: Value S3Location
  , "Version" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeScript :: Newtype Script _
derive newtype instance writeScript :: WriteForeign Script
instance resourceScript :: Resource Script where type_ _ = "AWS::GameLift::Script"

script :: { "StorageLocation" :: Value S3Location } -> Script
script required = Script
  (merge required
    { "Version" : Nothing
    , "Name" : Nothing
    })

-- | `AWS::GameLift::Script.S3Location`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html
-- |
-- | - `ObjectVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html#cfn-gamelift-script-s3location-objectversion
-- | - `Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html#cfn-gamelift-script-s3location-bucket
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html#cfn-gamelift-script-s3location-key
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-script-s3location.html#cfn-gamelift-script-s3location-rolearn
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