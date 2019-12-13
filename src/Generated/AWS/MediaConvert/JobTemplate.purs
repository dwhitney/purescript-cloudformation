module CloudFormation.AWS.MediaConvert.JobTemplate where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::MediaConvert::JobTemplate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html
-- |
-- | - `Category`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-category
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-description
-- | - `AccelerationSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-accelerationsettings
-- | - `Priority`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-priority
-- | - `StatusUpdateInterval`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-statusupdateinterval
-- | - `SettingsJson`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-settingsjson
-- | - `Queue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-queue
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-mediaconvert-jobtemplate.html#cfn-mediaconvert-jobtemplate-name
newtype JobTemplate = JobTemplate
  { "SettingsJson" :: Value CF.Json
  , "Category" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "AccelerationSettings" :: Maybe (Value AccelerationSettings)
  , "Priority" :: Maybe (Value Int)
  , "StatusUpdateInterval" :: Maybe (Value String)
  , "Queue" :: Maybe (Value String)
  , "Tags" :: Maybe (Value CF.Json)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeJobTemplate :: Newtype JobTemplate _
derive newtype instance writeJobTemplate :: WriteForeign JobTemplate
instance resourceJobTemplate :: Resource JobTemplate where type_ _ = "AWS::MediaConvert::JobTemplate"

jobTemplate :: { "SettingsJson" :: Value CF.Json } -> JobTemplate
jobTemplate required = JobTemplate
  (merge required
    { "Category" : Nothing
    , "Description" : Nothing
    , "AccelerationSettings" : Nothing
    , "Priority" : Nothing
    , "StatusUpdateInterval" : Nothing
    , "Queue" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    })

-- | `AWS::MediaConvert::JobTemplate.AccelerationSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconvert-jobtemplate-accelerationsettings.html
-- |
-- | - `Mode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconvert-jobtemplate-accelerationsettings.html#cfn-mediaconvert-jobtemplate-accelerationsettings-mode
type AccelerationSettings =
  { "Mode" :: Value String
  }

accelerationSettings :: { "Mode" :: Value String } -> AccelerationSettings
accelerationSettings required =
  required