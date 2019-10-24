module CloudFormation.AWS.Batch.JobQueue where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Batch::JobQueue`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html
-- |
-- | - `ComputeEnvironmentOrder`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-computeenvironmentorder
-- | - `Priority`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-priority
-- | - `State`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-state
-- | - `JobQueueName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobqueue.html#cfn-batch-jobqueue-jobqueuename
newtype JobQueue = JobQueue
  { "ComputeEnvironmentOrder" :: Array ComputeEnvironmentOrder
  , "Priority" :: Int
  , "State" :: Maybe String
  , "JobQueueName" :: Maybe String
  }

derive instance newtypeJobQueue :: Newtype JobQueue _
instance resourceJobQueue :: Resource JobQueue where type_ _ = "AWS::Batch::JobQueue"

jobQueue :: { "ComputeEnvironmentOrder" :: Array ComputeEnvironmentOrder, "Priority" :: Int } -> JobQueue
jobQueue required = JobQueue
  (merge required
    { "State" : Nothing
    , "JobQueueName" : Nothing
    })

-- | `AWS::Batch::JobQueue.ComputeEnvironmentOrder`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobqueue-computeenvironmentorder.html
-- |
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