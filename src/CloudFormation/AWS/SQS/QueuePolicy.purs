module CloudFormation.AWS.SQS.QueuePolicy where 

import Foreign (Foreign)


-- | `AWS::SQS::QueuePolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html
-- |
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html#cfn-sqs-queuepolicy-policydoc
-- | - `Queues`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sqs-policy.html#cfn-sqs-queuepolicy-queues
type QueuePolicy =
  { "PolicyDocument" :: Foreign
  , "Queues" :: Array String
  }

queuePolicy :: { "PolicyDocument" :: Foreign, "Queues" :: Array String } -> QueuePolicy
queuePolicy required =
  required