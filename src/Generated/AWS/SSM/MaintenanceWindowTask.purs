module CloudFormation.AWS.SSM.MaintenanceWindowTask where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SSM::MaintenanceWindowTask`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html
-- |
-- | - `MaxErrors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-maxerrors
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-description
-- | - `ServiceRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-servicerolearn
-- | - `Priority`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-priority
-- | - `MaxConcurrency`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-maxconcurrency
-- | - `Targets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-targets
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-name
-- | - `TaskArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-taskarn
-- | - `TaskInvocationParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters
-- | - `WindowId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-windowid
-- | - `TaskParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-taskparameters
-- | - `TaskType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-tasktype
-- | - `LoggingInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindowtask.html#cfn-ssm-maintenancewindowtask-logginginfo
newtype MaintenanceWindowTask = MaintenanceWindowTask
  { "MaxErrors" :: Value String
  , "Priority" :: Value Int
  , "MaxConcurrency" :: Value String
  , "Targets" :: Value (Array Target)
  , "TaskArn" :: Value String
  , "WindowId" :: Value String
  , "TaskType" :: Value String
  , "Description" :: Maybe (Value String)
  , "ServiceRoleArn" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  , "TaskInvocationParameters" :: Maybe (Value TaskInvocationParameters)
  , "TaskParameters" :: Maybe (Value CF.Json)
  , "LoggingInfo" :: Maybe (Value LoggingInfo)
  }

derive instance newtypeMaintenanceWindowTask :: Newtype MaintenanceWindowTask _
derive newtype instance writeMaintenanceWindowTask :: WriteForeign MaintenanceWindowTask
instance resourceMaintenanceWindowTask :: Resource MaintenanceWindowTask where type_ _ = "AWS::SSM::MaintenanceWindowTask"

maintenanceWindowTask :: { "MaxErrors" :: Value String, "Priority" :: Value Int, "MaxConcurrency" :: Value String, "Targets" :: Value (Array Target), "TaskArn" :: Value String, "WindowId" :: Value String, "TaskType" :: Value String } -> MaintenanceWindowTask
maintenanceWindowTask required = MaintenanceWindowTask
  (merge required
    { "Description" : Nothing
    , "ServiceRoleArn" : Nothing
    , "Name" : Nothing
    , "TaskInvocationParameters" : Nothing
    , "TaskParameters" : Nothing
    , "LoggingInfo" : Nothing
    })

-- | `AWS::SSM::MaintenanceWindowTask.MaintenanceWindowStepFunctionsParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters.html
-- |
-- | - `Input`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters-input
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters-name
type MaintenanceWindowStepFunctionsParameters =
  { "Input" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  }

maintenanceWindowStepFunctionsParameters :: MaintenanceWindowStepFunctionsParameters
maintenanceWindowStepFunctionsParameters =
  { "Input" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::SSM::MaintenanceWindowTask.TaskInvocationParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html
-- |
-- | - `MaintenanceWindowRunCommandParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowruncommandparameters
-- | - `MaintenanceWindowAutomationParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowautomationparameters
-- | - `MaintenanceWindowStepFunctionsParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowstepfunctionsparameters
-- | - `MaintenanceWindowLambdaParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-taskinvocationparameters.html#cfn-ssm-maintenancewindowtask-taskinvocationparameters-maintenancewindowlambdaparameters
type TaskInvocationParameters =
  { "MaintenanceWindowRunCommandParameters" :: Maybe (Value MaintenanceWindowRunCommandParameters)
  , "MaintenanceWindowAutomationParameters" :: Maybe (Value MaintenanceWindowAutomationParameters)
  , "MaintenanceWindowStepFunctionsParameters" :: Maybe (Value MaintenanceWindowStepFunctionsParameters)
  , "MaintenanceWindowLambdaParameters" :: Maybe (Value MaintenanceWindowLambdaParameters)
  }

taskInvocationParameters :: TaskInvocationParameters
taskInvocationParameters =
  { "MaintenanceWindowRunCommandParameters" : Nothing
  , "MaintenanceWindowAutomationParameters" : Nothing
  , "MaintenanceWindowStepFunctionsParameters" : Nothing
  , "MaintenanceWindowLambdaParameters" : Nothing
  }

-- | `AWS::SSM::MaintenanceWindowTask.MaintenanceWindowAutomationParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowautomationparameters.html
-- |
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowautomationparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowautomationparameters-parameters
-- | - `DocumentVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowautomationparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowautomationparameters-documentversion
type MaintenanceWindowAutomationParameters =
  { "Parameters" :: Maybe (Value CF.Json)
  , "DocumentVersion" :: Maybe (Value String)
  }

maintenanceWindowAutomationParameters :: MaintenanceWindowAutomationParameters
maintenanceWindowAutomationParameters =
  { "Parameters" : Nothing
  , "DocumentVersion" : Nothing
  }

-- | `AWS::SSM::MaintenanceWindowTask.NotificationConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html
-- |
-- | - `NotificationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html#cfn-ssm-maintenancewindowtask-notificationconfig-notificationarn
-- | - `NotificationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html#cfn-ssm-maintenancewindowtask-notificationconfig-notificationtype
-- | - `NotificationEvents`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-notificationconfig.html#cfn-ssm-maintenancewindowtask-notificationconfig-notificationevents
type NotificationConfig =
  { "NotificationArn" :: Value String
  , "NotificationType" :: Maybe (Value String)
  , "NotificationEvents" :: Maybe (Value (Array String))
  }

notificationConfig :: { "NotificationArn" :: Value String } -> NotificationConfig
notificationConfig required =
  (merge required
    { "NotificationType" : Nothing
    , "NotificationEvents" : Nothing
    })

-- | `AWS::SSM::MaintenanceWindowTask.MaintenanceWindowLambdaParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowlambdaparameters.html
-- |
-- | - `ClientContext`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowlambdaparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowlambdaparameters-clientcontext
-- | - `Qualifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowlambdaparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowlambdaparameters-qualifier
-- | - `Payload`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowlambdaparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowlambdaparameters-payload
type MaintenanceWindowLambdaParameters =
  { "ClientContext" :: Maybe (Value String)
  , "Qualifier" :: Maybe (Value String)
  , "Payload" :: Maybe (Value String)
  }

maintenanceWindowLambdaParameters :: MaintenanceWindowLambdaParameters
maintenanceWindowLambdaParameters =
  { "ClientContext" : Nothing
  , "Qualifier" : Nothing
  , "Payload" : Nothing
  }

-- | `AWS::SSM::MaintenanceWindowTask.MaintenanceWindowRunCommandParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html
-- |
-- | - `TimeoutSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-timeoutseconds
-- | - `Comment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-comment
-- | - `OutputS3KeyPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-outputs3keyprefix
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-parameters
-- | - `DocumentHashType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-documenthashtype
-- | - `ServiceRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-servicerolearn
-- | - `NotificationConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-notificationconfig
-- | - `OutputS3BucketName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-outputs3bucketname
-- | - `DocumentHash`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowruncommandparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowruncommandparameters-documenthash
type MaintenanceWindowRunCommandParameters =
  { "TimeoutSeconds" :: Maybe (Value Int)
  , "Comment" :: Maybe (Value String)
  , "OutputS3KeyPrefix" :: Maybe (Value String)
  , "Parameters" :: Maybe (Value CF.Json)
  , "DocumentHashType" :: Maybe (Value String)
  , "ServiceRoleArn" :: Maybe (Value String)
  , "NotificationConfig" :: Maybe (Value NotificationConfig)
  , "OutputS3BucketName" :: Maybe (Value String)
  , "DocumentHash" :: Maybe (Value String)
  }

maintenanceWindowRunCommandParameters :: MaintenanceWindowRunCommandParameters
maintenanceWindowRunCommandParameters =
  { "TimeoutSeconds" : Nothing
  , "Comment" : Nothing
  , "OutputS3KeyPrefix" : Nothing
  , "Parameters" : Nothing
  , "DocumentHashType" : Nothing
  , "ServiceRoleArn" : Nothing
  , "NotificationConfig" : Nothing
  , "OutputS3BucketName" : Nothing
  , "DocumentHash" : Nothing
  }

-- | `AWS::SSM::MaintenanceWindowTask.Target`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html
-- |
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html#cfn-ssm-maintenancewindowtask-target-values
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-target.html#cfn-ssm-maintenancewindowtask-target-key
type Target =
  { "Key" :: Value String
  , "Values" :: Maybe (Value (Array String))
  }

target :: { "Key" :: Value String } -> Target
target required =
  (merge required
    { "Values" : Nothing
    })

-- | `AWS::SSM::MaintenanceWindowTask.LoggingInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-logginginfo.html
-- |
-- | - `S3Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-logginginfo.html#cfn-ssm-maintenancewindowtask-logginginfo-s3bucket
-- | - `Region`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-logginginfo.html#cfn-ssm-maintenancewindowtask-logginginfo-region
-- | - `S3Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-logginginfo.html#cfn-ssm-maintenancewindowtask-logginginfo-s3prefix
type LoggingInfo =
  { "S3Bucket" :: Value String
  , "Region" :: Value String
  , "S3Prefix" :: Maybe (Value String)
  }

loggingInfo :: { "S3Bucket" :: Value String, "Region" :: Value String } -> LoggingInfo
loggingInfo required =
  (merge required
    { "S3Prefix" : Nothing
    })