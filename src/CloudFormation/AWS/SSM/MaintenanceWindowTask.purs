module CloudFormation.AWS.SSM.MaintenanceWindowTask where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


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
  , "TaskParameters" :: Maybe Foreign
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

type MaintenanceWindowStepFunctionsParameters =
  { "Input" :: Maybe String
  , "Name" :: Maybe String
  }

maintenanceWindowStepFunctionsParameters :: MaintenanceWindowStepFunctionsParameters
maintenanceWindowStepFunctionsParameters =
  { "Input" : Nothing
  , "Name" : Nothing
  }

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

type MaintenanceWindowAutomationParameters =
  { "Parameters" :: Maybe Foreign
  , "DocumentVersion" :: Maybe String
  }

maintenanceWindowAutomationParameters :: MaintenanceWindowAutomationParameters
maintenanceWindowAutomationParameters =
  { "Parameters" : Nothing
  , "DocumentVersion" : Nothing
  }

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

type MaintenanceWindowRunCommandParameters =
  { "TimeoutSeconds" :: Maybe Int
  , "Comment" :: Maybe String
  , "OutputS3KeyPrefix" :: Maybe String
  , "Parameters" :: Maybe Foreign
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

type Target =
  { "Key" :: String
  , "Values" :: Maybe (Array String)
  }

target :: { "Key" :: String } -> Target
target required =
  merge required
    { "Values" : Nothing
    }

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