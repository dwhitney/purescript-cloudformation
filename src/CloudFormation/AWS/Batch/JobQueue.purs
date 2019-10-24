module CloudFormation.AWS.Batch.JobQueue where 

import Data.Maybe (Maybe(..))
import Record (merge)


type JobQueue =
  { "ComputeEnvironmentOrder" :: Array ComputeEnvironmentOrder
  , "Priority" :: Int
  , "State" :: Maybe String
  , "JobQueueName" :: Maybe String
  }

jobQueue :: { "ComputeEnvironmentOrder" :: Array ComputeEnvironmentOrder, "Priority" :: Int } -> JobQueue
jobQueue required =
  merge required
    { "State" : Nothing
    , "JobQueueName" : Nothing
    }

type ComputeEnvironmentOrder =
  { "ComputeEnvironment" :: String
  , "Order" :: Int
  }

computeEnvironmentOrder :: { "ComputeEnvironment" :: String, "Order" :: Int } -> ComputeEnvironmentOrder
computeEnvironmentOrder required =
  required