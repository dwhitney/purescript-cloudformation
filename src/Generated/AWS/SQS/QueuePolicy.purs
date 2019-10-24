module CloudFormation.AWS.SQS.QueuePolicy where 

import CloudFormation (Json) as CF
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SQS::QueuePolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html
-- |
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html#cfn-sqs-queuepolicy-policydoc
-- | - `Queues`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html#cfn-sqs-queuepolicy-queues
newtype QueuePolicy = QueuePolicy
  { "PolicyDocument" :: CF.Json
  , "Queues" :: Array String
  }

derive instance newtypeQueuePolicy :: Newtype QueuePolicy _
instance resourceQueuePolicy :: Resource QueuePolicy where type_ _ = "AWS::SQS::QueuePolicy"

queuePolicy :: { "PolicyDocument" :: CF.Json, "Queues" :: Array String } -> QueuePolicy
queuePolicy required = QueuePolicy
  required