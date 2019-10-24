module AWS.SQS.Queue where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Tag


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