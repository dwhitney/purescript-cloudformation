module CloudFormation.AWS.Glue.Job where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


-- | `AWS::Glue::Job`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html
-- |
-- | - `Connections`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-connections
-- | - `MaxRetries`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-maxretries
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-description
-- | - `Timeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-timeout
-- | - `AllocatedCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-allocatedcapacity
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-name
-- | - `Role`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-role
-- | - `DefaultArguments`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-defaultarguments
-- | - `NotificationProperty`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-notificationproperty
-- | - `WorkerType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-workertype
-- | - `LogUri`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-loguri
-- | - `Command`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-command
-- | - `GlueVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-glueversion
-- | - `ExecutionProperty`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-executionproperty
-- | - `SecurityConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-securityconfiguration
-- | - `NumberOfWorkers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-numberofworkers
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-tags
-- | - `MaxCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-job.html#cfn-glue-job-maxcapacity
type Job =
  { "Role" :: String
  , "Command" :: JobCommand
  , "Connections" :: Maybe ConnectionsList
  , "MaxRetries" :: Maybe Number
  , "Description" :: Maybe String
  , "Timeout" :: Maybe Int
  , "AllocatedCapacity" :: Maybe Number
  , "Name" :: Maybe String
  , "DefaultArguments" :: Maybe Foreign
  , "NotificationProperty" :: Maybe NotificationProperty
  , "WorkerType" :: Maybe String
  , "LogUri" :: Maybe String
  , "GlueVersion" :: Maybe String
  , "ExecutionProperty" :: Maybe ExecutionProperty
  , "SecurityConfiguration" :: Maybe String
  , "NumberOfWorkers" :: Maybe Int
  , "Tags" :: Maybe Foreign
  , "MaxCapacity" :: Maybe Number
  }

job :: { "Role" :: String, "Command" :: JobCommand } -> Job
job required =
  merge required
    { "Connections" : Nothing
    , "MaxRetries" : Nothing
    , "Description" : Nothing
    , "Timeout" : Nothing
    , "AllocatedCapacity" : Nothing
    , "Name" : Nothing
    , "DefaultArguments" : Nothing
    , "NotificationProperty" : Nothing
    , "WorkerType" : Nothing
    , "LogUri" : Nothing
    , "GlueVersion" : Nothing
    , "ExecutionProperty" : Nothing
    , "SecurityConfiguration" : Nothing
    , "NumberOfWorkers" : Nothing
    , "Tags" : Nothing
    , "MaxCapacity" : Nothing
    }

-- | `AWS::Glue::Job.ExecutionProperty`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-executionproperty.html
-- |
-- | - `MaxConcurrentRuns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-executionproperty.html#cfn-glue-job-executionproperty-maxconcurrentruns
type ExecutionProperty =
  { "MaxConcurrentRuns" :: Maybe Number
  }

executionProperty :: ExecutionProperty
executionProperty =
  { "MaxConcurrentRuns" : Nothing
  }

-- | `AWS::Glue::Job.NotificationProperty`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-notificationproperty.html
-- |
-- | - `NotifyDelayAfter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-notificationproperty.html#cfn-glue-job-notificationproperty-notifydelayafter
type NotificationProperty =
  { "NotifyDelayAfter" :: Maybe Int
  }

notificationProperty :: NotificationProperty
notificationProperty =
  { "NotifyDelayAfter" : Nothing
  }

-- | `AWS::Glue::Job.ConnectionsList`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-connectionslist.html
-- |
-- | - `Connections`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-connectionslist.html#cfn-glue-job-connectionslist-connections
type ConnectionsList =
  { "Connections" :: Maybe (Array String)
  }

connectionsList :: ConnectionsList
connectionsList =
  { "Connections" : Nothing
  }

-- | `AWS::Glue::Job.JobCommand`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-jobcommand.html
-- |
-- | - `PythonVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-jobcommand.html#cfn-glue-job-jobcommand-pythonversion
-- | - `ScriptLocation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-jobcommand.html#cfn-glue-job-jobcommand-scriptlocation
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-jobcommand.html#cfn-glue-job-jobcommand-name
type JobCommand =
  { "PythonVersion" :: Maybe String
  , "ScriptLocation" :: Maybe String
  , "Name" :: Maybe String
  }

jobCommand :: JobCommand
jobCommand =
  { "PythonVersion" : Nothing
  , "ScriptLocation" : Nothing
  , "Name" : Nothing
  }