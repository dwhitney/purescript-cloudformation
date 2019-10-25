module CloudFormation.AWS.SQS.QueuePolicy where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SQS::QueuePolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html
-- |
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html#cfn-sqs-queuepolicy-policydoc
-- | - `Queues`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html#cfn-sqs-queuepolicy-queues
newtype QueuePolicy = QueuePolicy
  { "PolicyDocument" :: Value CF.Json
  , "Queues" :: Value (Array String)
  }

derive instance newtypeQueuePolicy :: Newtype QueuePolicy _
derive newtype instance writeQueuePolicy :: WriteForeign QueuePolicy
instance resourceQueuePolicy :: Resource QueuePolicy where type_ _ = "AWS::SQS::QueuePolicy"

queuePolicy :: { "PolicyDocument" :: Value CF.Json, "Queues" :: Value (Array String) } -> QueuePolicy
queuePolicy required = QueuePolicy
  required