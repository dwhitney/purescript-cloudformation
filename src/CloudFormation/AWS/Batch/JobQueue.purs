module CloudFormation.AWS.Batch.JobQueue where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Batch::JobQueue`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html-- |
-- | - `ComputeEnvironmentOrder`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-computeenvironmentorder
-- | - `Priority`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-priority
-- | - `State`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-state
-- | - `JobQueueName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-jobqueuename
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

-- | `AWS::Batch::JobQueue.ComputeEnvironmentOrder`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobqueue-computeenvironmentorder.html-- |
-- | - `ComputeEnvironment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobqueue-computeenvironmentorder.html#cfn-batch-jobqueue-computeenvironmentorder-computeenvironment
-- | - `Order`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobqueue-computeenvironmentorder.html#cfn-batch-jobqueue-computeenvironmentorder-order
type ComputeEnvironmentOrder =
  { "ComputeEnvironment" :: String
  , "Order" :: Int
  }

computeEnvironmentOrder :: { "ComputeEnvironment" :: String, "Order" :: Int } -> ComputeEnvironmentOrder
computeEnvironmentOrder required =
  required