module CloudFormation.AWS.SQS.Queue where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import CloudFormation.Tag (Tag)


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
type Queue =
  { "ContentBasedDeduplication" :: Maybe Boolean
  , "DelaySeconds" :: Maybe Int
  , "FifoQueue" :: Maybe Boolean
  , "KmsDataKeyReusePeriodSeconds" :: Maybe Int
  , "KmsMasterKeyId" :: Maybe String
  , "MaximumMessageSize" :: Maybe Int
  , "MessageRetentionPeriod" :: Maybe Int
  , "QueueName" :: Maybe String
  , "ReceiveMessageWaitTimeSeconds" :: Maybe Int
  , "RedrivePolicy" :: Maybe Foreign
  , "Tags" :: Maybe (Array Tag)
  , "VisibilityTimeout" :: Maybe Int
  }

queue :: Queue
queue =
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