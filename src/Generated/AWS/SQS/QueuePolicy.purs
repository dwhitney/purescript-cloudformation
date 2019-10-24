module CloudFormation.AWS.SQS.QueuePolicy where 

import CloudFormation (Json)


-- | `AWS::SQS::QueuePolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html
-- |
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html#cfn-sqs-queuepolicy-policydoc
-- | - `Queues`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html#cfn-sqs-queuepolicy-queues
type QueuePolicy =
  { "PolicyDocument" :: Json
  , "Queues" :: Array String
  }

queuePolicy :: { "PolicyDocument" :: Json, "Queues" :: Array String } -> QueuePolicy
queuePolicy required =
  required