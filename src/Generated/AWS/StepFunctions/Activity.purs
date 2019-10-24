module CloudFormation.AWS.StepFunctions.Activity where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::StepFunctions::Activity`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html#cfn-stepfunctions-activity-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html#cfn-stepfunctions-activity-name
newtype Activity = Activity
  { "Name" :: String
  , "Tags" :: Maybe (Array TagsEntry)
  }

derive instance newtypeActivity :: Newtype Activity _
instance resourceActivity :: Resource Activity where type_ _ = "AWS::StepFunctions::Activity"

activity :: { "Name" :: String } -> Activity
activity required = Activity
  (merge required
    { "Tags" : Nothing
    })

-- | `AWS::StepFunctions::Activity.TagsEntry`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-activity-tagsentry.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-activity-tagsentry.html#cfn-stepfunctions-activity-tagsentry-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-activity-tagsentry.html#cfn-stepfunctions-activity-tagsentry-key
type TagsEntry =
  { "Value" :: String
  , "Key" :: String
  }

tagsEntry :: { "Value" :: String, "Key" :: String } -> TagsEntry
tagsEntry required =
  required