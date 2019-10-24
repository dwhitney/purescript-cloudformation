module AWS.Events.Rule where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)
import Foreign.Object (Object)


type Rule =
  { "Description" :: Maybe String
  , "EventPattern" :: Maybe Foreign
  , "Name" :: Maybe String
  , "RoleArn" :: Maybe String
  , "ScheduleExpression" :: Maybe String
  , "State" :: Maybe String
  , "Targets" :: Maybe (Array Target)
  }

rule :: Rule
rule =
  { "Description" : Nothing
  , "EventPattern" : Nothing
  , "Name" : Nothing
  , "RoleArn" : Nothing
  , "ScheduleExpression" : Nothing
  , "State" : Nothing
  , "Targets" : Nothing
  }

type AwsVpcConfiguration =
  { "Subnets" :: Array String
  , "AssignPublicIp" :: Maybe String
  , "SecurityGroups" :: Maybe (Array String)
  }

awsVpcConfiguration :: { "Subnets" :: Array String } -> AwsVpcConfiguration
awsVpcConfiguration required =
  merge required
    { "AssignPublicIp" : Nothing
    , "SecurityGroups" : Nothing
    }

type EcsParameters =
  { "TaskDefinitionArn" :: String
  , "Group" :: Maybe String
  , "LaunchType" :: Maybe String
  , "NetworkConfiguration" :: Maybe NetworkConfiguration
  , "PlatformVersion" :: Maybe String
  , "TaskCount" :: Maybe Int
  }

ecsParameters :: { "TaskDefinitionArn" :: String } -> EcsParameters
ecsParameters required =
  merge required
    { "Group" : Nothing
    , "LaunchType" : Nothing
    , "NetworkConfiguration" : Nothing
    , "PlatformVersion" : Nothing
    , "TaskCount" : Nothing
    }

type KinesisParameters =
  { "PartitionKeyPath" :: String
  }

kinesisParameters :: { "PartitionKeyPath" :: String } -> KinesisParameters
kinesisParameters required =
  required

type Target =
  { "Arn" :: String
  , "Id" :: String
  , "EcsParameters" :: Maybe EcsParameters
  , "Input" :: Maybe String
  , "InputPath" :: Maybe String
  , "InputTransformer" :: Maybe InputTransformer
  , "KinesisParameters" :: Maybe KinesisParameters
  , "RoleArn" :: Maybe String
  , "RunCommandParameters" :: Maybe RunCommandParameters
  , "SqsParameters" :: Maybe SqsParameters
  }

target :: { "Arn" :: String, "Id" :: String } -> Target
target required =
  merge required
    { "EcsParameters" : Nothing
    , "Input" : Nothing
    , "InputPath" : Nothing
    , "InputTransformer" : Nothing
    , "KinesisParameters" : Nothing
    , "RoleArn" : Nothing
    , "RunCommandParameters" : Nothing
    , "SqsParameters" : Nothing
    }

type SqsParameters =
  { "MessageGroupId" :: String
  }

sqsParameters :: { "MessageGroupId" :: String } -> SqsParameters
sqsParameters required =
  required

type InputTransformer =
  { "InputTemplate" :: String
  , "InputPathsMap" :: Maybe (Object String)
  }

inputTransformer :: { "InputTemplate" :: String } -> InputTransformer
inputTransformer required =
  merge required
    { "InputPathsMap" : Nothing
    }

type RunCommandTarget =
  { "Key" :: String
  , "Values" :: Array String
  }

runCommandTarget :: { "Key" :: String, "Values" :: Array String } -> RunCommandTarget
runCommandTarget required =
  required

type NetworkConfiguration =
  { "AwsVpcConfiguration" :: Maybe AwsVpcConfiguration
  }

networkConfiguration :: NetworkConfiguration
networkConfiguration =
  { "AwsVpcConfiguration" : Nothing
  }

type RunCommandParameters =
  { "RunCommandTargets" :: Array RunCommandTarget
  }

runCommandParameters :: { "RunCommandTargets" :: Array RunCommandTarget } -> RunCommandParameters
runCommandParameters required =
  required