module CloudFormation.AWS.SQS.Queue where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SQS::Queue`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html
-- |
-- | - `ContentBasedDeduplication`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-contentbaseddeduplication
-- | - `DelaySeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-delayseconds
-- | - `FifoQueue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-fifoqueue
-- | - `KmsDataKeyReusePeriodSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-kmsdatakeyreuseperiodseconds
-- | - `KmsMasterKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-kmsmasterkeyid
-- | - `MaximumMessageSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-maxmesgsize
-- | - `MessageRetentionPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-msgretentionperiod
-- | - `QueueName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-name
-- | - `ReceiveMessageWaitTimeSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-receivemsgwaittime
-- | - `RedrivePolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-redrive
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#cfn-sqs-queue-tags
-- | - `VisibilityTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-queues.html#aws-sqs-queue-visiblitytimeout
newtype Queue = Queue
  { "ContentBasedDeduplication" :: Maybe (Value Boolean)
  , "DelaySeconds" :: Maybe (Value Int)
  , "FifoQueue" :: Maybe (Value Boolean)
  , "KmsDataKeyReusePeriodSeconds" :: Maybe (Value Int)
  , "KmsMasterKeyId" :: Maybe (Value String)
  , "MaximumMessageSize" :: Maybe (Value Int)
  , "MessageRetentionPeriod" :: Maybe (Value Int)
  , "QueueName" :: Maybe (Value String)
  , "ReceiveMessageWaitTimeSeconds" :: Maybe (Value Int)
  , "RedrivePolicy" :: Maybe (Value CF.Json)
  , "Tags" :: Maybe (Value (Array Tag))
  , "VisibilityTimeout" :: Maybe (Value Int)
  }

derive instance newtypeQueue :: Newtype Queue _
derive newtype instance writeQueue :: WriteForeign Queue
instance resourceQueue :: Resource Queue where type_ _ = "AWS::SQS::Queue"

queue :: Queue
queue = Queue
  { "ContentBasedDeduplication" : Nothing
  , "DelaySeconds" : Nothing
  , "FifoQueue" : Nothing
  , "KmsDataKeyReusePeriodSeconds" : Nothing
  , "KmsMasterKeyId" : Nothing
  , "MaximumMessageSize" : Nothing
  , "MessageRetentionPeriod" : Nothing
  , "QueueName" : Nothing
  , "ReceiveMessageWaitTimeSeconds" : Nothing
  , "RedrivePolicy" : Nothing
  , "Tags" : Nothing
  , "VisibilityTimeout" : Nothing
  }