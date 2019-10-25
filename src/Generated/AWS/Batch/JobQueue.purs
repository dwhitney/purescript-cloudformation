module CloudFormation.AWS.Batch.JobQueue where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ComputeEnvironmentOrder" :: Value (Array ComputeEnvironmentOrder)
  , "Priority" :: Value Int
  , "State" :: Maybe (Value String)
  , "JobQueueName" :: Maybe (Value String)
  }

derive instance newtypeJobQueue :: Newtype JobQueue _
derive newtype instance writeJobQueue :: WriteForeign JobQueue
instance resourceJobQueue :: Resource JobQueue where type_ _ = "AWS::Batch::JobQueue"

jobQueue :: { "ComputeEnvironmentOrder" :: Value (Array ComputeEnvironmentOrder), "Priority" :: Value Int } -> JobQueue
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
  { "ComputeEnvironment" :: Value String
  , "Order" :: Value Int
  }

computeEnvironmentOrder :: { "ComputeEnvironment" :: Value String, "Order" :: Value Int } -> ComputeEnvironmentOrder
computeEnvironmentOrder required =
  required