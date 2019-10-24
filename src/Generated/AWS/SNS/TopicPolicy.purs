module CloudFormation.AWS.SNS.TopicPolicy where 

import CloudFormation (Json)


-- | `AWS::SNS::TopicPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html
-- |
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html#cfn-sns-topicpolicy-policydocument
-- | - `Topics`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html#cfn-sns-topicpolicy-topics
type TopicPolicy =
  { "PolicyDocument" :: Json
  , "Topics" :: Array String
  }

topicPolicy :: { "PolicyDocument" :: Json, "Topics" :: Array String } -> TopicPolicy
topicPolicy required =
  required