module CloudFormation.AWS.SNS.TopicPolicy where 

import Foreign (Foreign)


-- | `AWS::SNS::TopicPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html
-- |
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html#cfn-sns-topicpolicy-policydocument
-- | - `Topics`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html#cfn-sns-topicpolicy-topics
type TopicPolicy =
  { "PolicyDocument" :: Foreign
  , "Topics" :: Array String
  }

topicPolicy :: { "PolicyDocument" :: Foreign, "Topics" :: Array String } -> TopicPolicy
topicPolicy required =
  required