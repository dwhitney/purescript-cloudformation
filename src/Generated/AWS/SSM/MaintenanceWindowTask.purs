module CloudFormation.AWS.SSM.MaintenanceWindowTask where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import Record (merge)


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
type MaintenanceWindowTask =
  { "MaxErrors" :: String
  , "Priority" :: Int
  , "MaxConcurrency" :: String
  , "Targets" :: Array Target
  , "TaskArn" :: String
  , "WindowId" :: String
  , "TaskType" :: String
  , "Description" :: Maybe String
  , "ServiceRoleArn" :: Maybe String
  , "Name" :: Maybe String
  , "TaskInvocationParameters" :: Maybe TaskInvocationParameters
  , "TaskParameters" :: Maybe Json
  , "LoggingInfo" :: Maybe LoggingInfo
  }

maintenanceWindowTask :: { "MaxErrors" :: String, "Priority" :: Int, "MaxConcurrency" :: String, "Targets" :: Array Target, "TaskArn" :: String, "WindowId" :: String, "TaskType" :: String } -> MaintenanceWindowTask
maintenanceWindowTask required =
  merge required
    { "Description" : Nothing
    , "ServiceRoleArn" : Nothing
    , "Name" : Nothing
    , "TaskInvocationParameters" : Nothing
    , "TaskParameters" : Nothing
    , "LoggingInfo" : Nothing
    }

-- | `AWS::SSM::MaintenanceWindowTask.MaintenanceWindowStepFunctionsParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters.html
-- |
-- | - `Input`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters-input
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters.html#cfn-ssm-maintenancewindowtask-maintenancewindowstepfunctionsparameters-name
type MaintenanceWindowStepFunctionsParameters =
  { "Input" :: Maybe String
  , "Name" :: Maybe String
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
  { "MaintenanceWindowRunCommandParameters" :: Maybe MaintenanceWindowRunCommandParameters
  , "MaintenanceWindowAutomationParameters" :: Maybe MaintenanceWindowAutomationParameters
  , "MaintenanceWindowStepFunctionsParameters" :: Maybe MaintenanceWindowStepFunctionsParameters
  , "MaintenanceWindowLambdaParameters" :: Maybe MaintenanceWindowLambdaParameters
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
  { "Parameters" :: Maybe Json
  , "DocumentVersion" :: Maybe String
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
  { "NotificationArn" :: String
  , "NotificationType" :: Maybe String
  , "NotificationEvents" :: Maybe (Array String)
  }

notificationConfig :: { "NotificationArn" :: String } -> NotificationConfig
notificationConfig required =
  merge required
    { "NotificationType" : Nothing
    , "NotificationEvents" : Nothing
    }

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
  { "ClientContext" :: Maybe String
  , "Qualifier" :: Maybe String
  , "Payload" :: Maybe String
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
  { "TimeoutSeconds" :: Maybe Int
  , "Comment" :: Maybe String
  , "OutputS3KeyPrefix" :: Maybe String
  , "Parameters" :: Maybe Json
  , "DocumentHashType" :: Maybe String
  , "ServiceRoleArn" :: Maybe String
  , "NotificationConfig" :: Maybe NotificationConfig
  , "OutputS3BucketName" :: Maybe String
  , "DocumentHash" :: Maybe String
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
  { "Key" :: String
  , "Values" :: Maybe (Array String)
  }

target :: { "Key" :: String } -> Target
target required =
  merge required
    { "Values" : Nothing
    }

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
  { "S3Bucket" :: String
  , "Region" :: String
  , "S3Prefix" :: Maybe String
  }

loggingInfo :: { "S3Bucket" :: String, "Region" :: String } -> LoggingInfo
loggingInfo required =
  merge required
    { "S3Prefix" : Nothing
    }