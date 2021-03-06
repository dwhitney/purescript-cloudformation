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
-- | - `LoggingConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-loggingconfiguration
-- | - `StateMachineName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-statemachinename
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-rolearn
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-tags
-- | - `StateMachineType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-stepfunctions-statemachine.html#cfn-stepfunctions-statemachine-statemachinetype
newtype StateMachine = StateMachine
  { "DefinitionString" :: Value String
  , "RoleArn" :: Value String
  , "LoggingConfiguration" :: Maybe (Value LoggingConfiguration)
  , "StateMachineName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array TagsEntry))
  , "StateMachineType" :: Maybe (Value String)
  }

derive instance newtypeStateMachine :: Newtype StateMachine _
derive newtype instance writeStateMachine :: WriteForeign StateMachine
instance resourceStateMachine :: Resource StateMachine where type_ _ = "AWS::StepFunctions::StateMachine"

stateMachine :: { "DefinitionString" :: Value String, "RoleArn" :: Value String } -> StateMachine
stateMachine required = StateMachine
  (merge required
    { "LoggingConfiguration" : Nothing
    , "StateMachineName" : Nothing
    , "Tags" : Nothing
    , "StateMachineType" : Nothing
    })

-- | `AWS::StepFunctions::StateMachine.LogDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination.html
-- |
-- | - `CloudWatchLogsLogGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination.html#cfn-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup
type LogDestination =
  { "CloudWatchLogsLogGroup" :: Maybe (Value CloudWatchLogsLogGroup)
  }

logDestination :: LogDestination
logDestination =
  { "CloudWatchLogsLogGroup" : Nothing
  }

-- | `AWS::StepFunctions::StateMachine.CloudWatchLogsLogGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup.html
-- |
-- | - `LogGroupArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup.html#cfn-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup-loggrouparn
type CloudWatchLogsLogGroup =
  { "LogGroupArn" :: Value String
  }

cloudWatchLogsLogGroup :: { "LogGroupArn" :: Value String } -> CloudWatchLogsLogGroup
cloudWatchLogsLogGroup required =
  required

-- | `AWS::StepFunctions::StateMachine.LoggingConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html
-- |
-- | - `IncludeExecutionData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html#cfn-stepfunctions-statemachine-loggingconfiguration-includeexecutiondata
-- | - `Destinations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html#cfn-stepfunctions-statemachine-loggingconfiguration-destinations
-- | - `Level`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-loggingconfiguration.html#cfn-stepfunctions-statemachine-loggingconfiguration-level
type LoggingConfiguration =
  { "IncludeExecutionData" :: Maybe (Value Boolean)
  , "Destinations" :: Maybe (Value (Array LogDestination))
  , "Level" :: Maybe (Value String)
  }

loggingConfiguration :: LoggingConfiguration
loggingConfiguration =
  { "IncludeExecutionData" : Nothing
  , "Destinations" : Nothing
  , "Level" : Nothing
  }

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