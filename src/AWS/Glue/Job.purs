module AWS.Glue.Job where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


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

type ExecutionProperty =
  { "MaxConcurrentRuns" :: Maybe Number
  }

executionProperty :: ExecutionProperty
executionProperty =
  { "MaxConcurrentRuns" : Nothing
  }

type NotificationProperty =
  { "NotifyDelayAfter" :: Maybe Int
  }

notificationProperty :: NotificationProperty
notificationProperty =
  { "NotifyDelayAfter" : Nothing
  }

type ConnectionsList =
  { "Connections" :: Maybe (Array String)
  }

connectionsList :: ConnectionsList
connectionsList =
  { "Connections" : Nothing
  }

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