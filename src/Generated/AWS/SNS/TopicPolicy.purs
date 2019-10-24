module CloudFormation.AWS.SNS.TopicPolicy where 

import CloudFormation (Json) as CF
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SNS::TopicPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html
-- |
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html#cfn-sns-topicpolicy-policydocument
-- | - `Topics`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html#cfn-sns-topicpolicy-topics
newtype TopicPolicy = TopicPolicy
  { "PolicyDocument" :: CF.Json
  , "Topics" :: Array String
  }

derive instance newtypeTopicPolicy :: Newtype TopicPolicy _
instance resourceTopicPolicy :: Resource TopicPolicy where type_ _ = "AWS::SNS::TopicPolicy"

topicPolicy :: { "PolicyDocument" :: CF.Json, "Topics" :: Array String } -> TopicPolicy
topicPolicy required = TopicPolicy
  required