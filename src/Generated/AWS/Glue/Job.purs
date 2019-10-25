module CloudFormation.AWS.Glue.Job where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype Job = Job
  { "Role" :: Value String
  , "Command" :: Value JobCommand
  , "Connections" :: Maybe (Value ConnectionsList)
  , "MaxRetries" :: Maybe (Value Number)
  , "Description" :: Maybe (Value String)
  , "Timeout" :: Maybe (Value Int)
  , "AllocatedCapacity" :: Maybe (Value Number)
  , "Name" :: Maybe (Value String)
  , "DefaultArguments" :: Maybe (Value CF.Json)
  , "NotificationProperty" :: Maybe (Value NotificationProperty)
  , "WorkerType" :: Maybe (Value String)
  , "LogUri" :: Maybe (Value String)
  , "GlueVersion" :: Maybe (Value String)
  , "ExecutionProperty" :: Maybe (Value ExecutionProperty)
  , "SecurityConfiguration" :: Maybe (Value String)
  , "NumberOfWorkers" :: Maybe (Value Int)
  , "Tags" :: Maybe (Value CF.Json)
  , "MaxCapacity" :: Maybe (Value Number)
  }

derive instance newtypeJob :: Newtype Job _
derive newtype instance writeJob :: WriteForeign Job
instance resourceJob :: Resource Job where type_ _ = "AWS::Glue::Job"

job :: { "Role" :: Value String, "Command" :: Value JobCommand } -> Job
job required = Job
  (merge required
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
    })

-- | `AWS::Glue::Job.ExecutionProperty`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-executionproperty.html
-- |
-- | - `MaxConcurrentRuns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-job-executionproperty.html#cfn-glue-job-executionproperty-maxconcurrentruns
type ExecutionProperty =
  { "MaxConcurrentRuns" :: Maybe (Value Number)
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
  { "NotifyDelayAfter" :: Maybe (Value Int)
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
  { "Connections" :: Maybe (Value (Array String))
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
  { "PythonVersion" :: Maybe (Value String)
  , "ScriptLocation" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  }

jobCommand :: JobCommand
jobCommand =
  { "PythonVersion" : Nothing
  , "ScriptLocation" : Nothing
  , "Name" : Nothing
  }