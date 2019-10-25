module CloudFormation.AWS.StepFunctions.Activity where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::StepFunctions::Activity`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html
-- |
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html#cfn-stepfunctions-activity-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-activity.html#cfn-stepfunctions-activity-name
newtype Activity = Activity
  { "Name" :: Value String
  , "Tags" :: Maybe (Value (Array TagsEntry))
  }

derive instance newtypeActivity :: Newtype Activity _
derive newtype instance writeActivity :: WriteForeign Activity
instance resourceActivity :: Resource Activity where type_ _ = "AWS::StepFunctions::Activity"

activity :: { "Name" :: Value String } -> Activity
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
  { "Value" :: Value String
  , "Key" :: Value String
  }

tagsEntry :: { "Value" :: Value String, "Key" :: Value String } -> TagsEntry
tagsEntry required =
  required