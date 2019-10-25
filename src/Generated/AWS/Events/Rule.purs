module CloudFormation.AWS.Events.Rule where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Record (merge)
import Foreign.Object (Object)


-- | `AWS::Events::Rule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html#cfn-events-rule-description
-- | - `EventPattern`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html#cfn-events-rule-eventpattern
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html#cfn-events-rule-name
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html#cfn-events-rule-rolearn
-- | - `ScheduleExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html#cfn-events-rule-scheduleexpression
-- | - `State`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html#cfn-events-rule-state
-- | - `Targets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-events-rule.html#cfn-events-rule-targets
newtype Rule = Rule
  { "Description" :: Maybe (Value String)
  , "EventPattern" :: Maybe (Value CF.Json)
  , "Name" :: Maybe (Value String)
  , "RoleArn" :: Maybe (Value String)
  , "ScheduleExpression" :: Maybe (Value String)
  , "State" :: Maybe (Value String)
  , "Targets" :: Maybe (Value (Array Target))
  }

derive instance newtypeRule :: Newtype Rule _
derive newtype instance writeRule :: WriteForeign Rule
instance resourceRule :: Resource Rule where type_ _ = "AWS::Events::Rule"

rule :: Rule
rule = Rule
  { "Description" : Nothing
  , "EventPattern" : Nothing
  , "Name" : Nothing
  , "RoleArn" : Nothing
  , "ScheduleExpression" : Nothing
  , "State" : Nothing
  , "Targets" : Nothing
  }

-- | `AWS::Events::Rule.AwsVpcConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-awsvpcconfiguration.html
-- |
-- | - `AssignPublicIp`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-awsvpcconfiguration.html#cfn-events-rule-awsvpcconfiguration-assignpublicip
-- | - `SecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-awsvpcconfiguration.html#cfn-events-rule-awsvpcconfiguration-securitygroups
-- | - `Subnets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-awsvpcconfiguration.html#cfn-events-rule-awsvpcconfiguration-subnets
type AwsVpcConfiguration =
  { "Subnets" :: Value (Array String)
  , "AssignPublicIp" :: Maybe (Value String)
  , "SecurityGroups" :: Maybe (Value (Array String))
  }

awsVpcConfiguration :: { "Subnets" :: Value (Array String) } -> AwsVpcConfiguration
awsVpcConfiguration required =
  (merge required
    { "AssignPublicIp" : Nothing
    , "SecurityGroups" : Nothing
    })

-- | `AWS::Events::Rule.EcsParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html
-- |
-- | - `Group`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-group
-- | - `LaunchType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-launchtype
-- | - `NetworkConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-networkconfiguration
-- | - `PlatformVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-platformversion
-- | - `TaskCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-taskcount
-- | - `TaskDefinitionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-taskdefinitionarn
type EcsParameters =
  { "TaskDefinitionArn" :: Value String
  , "Group" :: Maybe (Value String)
  , "LaunchType" :: Maybe (Value String)
  , "NetworkConfiguration" :: Maybe (Value NetworkConfiguration)
  , "PlatformVersion" :: Maybe (Value String)
  , "TaskCount" :: Maybe (Value Int)
  }

ecsParameters :: { "TaskDefinitionArn" :: Value String } -> EcsParameters
ecsParameters required =
  (merge required
    { "Group" : Nothing
    , "LaunchType" : Nothing
    , "NetworkConfiguration" : Nothing
    , "PlatformVersion" : Nothing
    , "TaskCount" : Nothing
    })

-- | `AWS::Events::Rule.KinesisParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-kinesisparameters.html
-- |
-- | - `PartitionKeyPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-kinesisparameters.html#cfn-events-rule-kinesisparameters-partitionkeypath
type KinesisParameters =
  { "PartitionKeyPath" :: Value String
  }

kinesisParameters :: { "PartitionKeyPath" :: Value String } -> KinesisParameters
kinesisParameters required =
  required

-- | `AWS::Events::Rule.Target`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html
-- |
-- | - `Arn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-arn
-- | - `EcsParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-ecsparameters
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-id
-- | - `Input`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-input
-- | - `InputPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-inputpath
-- | - `InputTransformer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-inputtransformer
-- | - `KinesisParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-kinesisparameters
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-rolearn
-- | - `RunCommandParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-runcommandparameters
-- | - `SqsParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-target.html#cfn-events-rule-target-sqsparameters
type Target =
  { "Arn" :: Value String
  , "Id" :: Value String
  , "EcsParameters" :: Maybe (Value EcsParameters)
  , "Input" :: Maybe (Value String)
  , "InputPath" :: Maybe (Value String)
  , "InputTransformer" :: Maybe (Value InputTransformer)
  , "KinesisParameters" :: Maybe (Value KinesisParameters)
  , "RoleArn" :: Maybe (Value String)
  , "RunCommandParameters" :: Maybe (Value RunCommandParameters)
  , "SqsParameters" :: Maybe (Value SqsParameters)
  }

target :: { "Arn" :: Value String, "Id" :: Value String } -> Target
target required =
  (merge required
    { "EcsParameters" : Nothing
    , "Input" : Nothing
    , "InputPath" : Nothing
    , "InputTransformer" : Nothing
    , "KinesisParameters" : Nothing
    , "RoleArn" : Nothing
    , "RunCommandParameters" : Nothing
    , "SqsParameters" : Nothing
    })

-- | `AWS::Events::Rule.SqsParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-sqsparameters.html
-- |
-- | - `MessageGroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-sqsparameters.html#cfn-events-rule-sqsparameters-messagegroupid
type SqsParameters =
  { "MessageGroupId" :: Value String
  }

sqsParameters :: { "MessageGroupId" :: Value String } -> SqsParameters
sqsParameters required =
  required

-- | `AWS::Events::Rule.InputTransformer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html
-- |
-- | - `InputPathsMap`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html#cfn-events-rule-inputtransformer-inputpathsmap
-- | - `InputTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-inputtransformer.html#cfn-events-rule-inputtransformer-inputtemplate
type InputTransformer =
  { "InputTemplate" :: Value String
  , "InputPathsMap" :: Maybe (Value (Object String))
  }

inputTransformer :: { "InputTemplate" :: Value String } -> InputTransformer
inputTransformer required =
  (merge required
    { "InputPathsMap" : Nothing
    })

-- | `AWS::Events::Rule.RunCommandTarget`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandtarget.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandtarget.html#cfn-events-rule-runcommandtarget-key
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandtarget.html#cfn-events-rule-runcommandtarget-values
type RunCommandTarget =
  { "Key" :: Value String
  , "Values" :: Value (Array String)
  }

runCommandTarget :: { "Key" :: Value String, "Values" :: Value (Array String) } -> RunCommandTarget
runCommandTarget required =
  required

-- | `AWS::Events::Rule.NetworkConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-networkconfiguration.html
-- |
-- | - `AwsVpcConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-networkconfiguration.html#cfn-events-rule-networkconfiguration-awsvpcconfiguration
type NetworkConfiguration =
  { "AwsVpcConfiguration" :: Maybe (Value AwsVpcConfiguration)
  }

networkConfiguration :: NetworkConfiguration
networkConfiguration =
  { "AwsVpcConfiguration" : Nothing
  }

-- | `AWS::Events::Rule.RunCommandParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandparameters.html
-- |
-- | - `RunCommandTargets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-runcommandparameters.html#cfn-events-rule-runcommandparameters-runcommandtargets
type RunCommandParameters =
  { "RunCommandTargets" :: Value (Array RunCommandTarget)
  }

runCommandParameters :: { "RunCommandTargets" :: Value (Array RunCommandTarget) } -> RunCommandParameters
runCommandParameters required =
  required