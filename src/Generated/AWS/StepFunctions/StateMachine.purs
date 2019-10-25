module CloudFormation.AWS.StepFunctions.StateMachine where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::StepFunctions::StateMachine`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html
-- |
-- | - `DefinitionString`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-definitionstring
-- | - `StateMachineName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-statemachinename
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-rolearn
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-tags
newtype StateMachine = StateMachine
  { "DefinitionString" :: Value String
  , "RoleArn" :: Value String
  , "StateMachineName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array TagsEntry))
  }

derive instance newtypeStateMachine :: Newtype StateMachine _
derive newtype instance writeStateMachine :: WriteForeign StateMachine
instance resourceStateMachine :: Resource StateMachine where type_ _ = "AWS::StepFunctions::StateMachine"

stateMachine :: { "DefinitionString" :: Value String, "RoleArn" :: Value String } -> StateMachine
stateMachine required = StateMachine
  (merge required
    { "StateMachineName" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::StepFunctions::StateMachine.TagsEntry`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-tagsentry.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-tagsentry.html#cfn-stepfunctions-statemachine-tagsentry-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-tagsentry.html#cfn-stepfunctions-statemachine-tagsentry-key
type TagsEntry =
  { "Value" :: Value String
  , "Key" :: Value String
  }

tagsEntry :: { "Value" :: Value String, "Key" :: Value String } -> TagsEntry
tagsEntry required =
  required