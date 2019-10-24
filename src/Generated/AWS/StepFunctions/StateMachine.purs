module CloudFormation.AWS.StepFunctions.StateMachine where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "DefinitionString" :: String
  , "RoleArn" :: String
  , "StateMachineName" :: Maybe String
  , "Tags" :: Maybe (Array TagsEntry)
  }

derive instance newtypeStateMachine :: Newtype StateMachine _
instance resourceStateMachine :: Resource StateMachine where type_ _ = "AWS::StepFunctions::StateMachine"

stateMachine :: { "DefinitionString" :: String, "RoleArn" :: String } -> StateMachine
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
  { "Value" :: String
  , "Key" :: String
  }

tagsEntry :: { "Value" :: String, "Key" :: String } -> TagsEntry
tagsEntry required =
  required