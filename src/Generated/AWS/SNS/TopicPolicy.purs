module CloudFormation.AWS.SNS.TopicPolicy where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SNS::TopicPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html
-- |
-- | - `PolicyDocument`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html#cfn-sns-topicpolicy-policydocument
-- | - `Topics`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-policy.html#cfn-sns-topicpolicy-topics
newtype TopicPolicy = TopicPolicy
  { "PolicyDocument" :: Value CF.Json
  , "Topics" :: Value (Array String)
  }

derive instance newtypeTopicPolicy :: Newtype TopicPolicy _
derive newtype instance writeTopicPolicy :: WriteForeign TopicPolicy
instance resourceTopicPolicy :: Resource TopicPolicy where type_ _ = "AWS::SNS::TopicPolicy"

topicPolicy :: { "PolicyDocument" :: Value CF.Json, "Topics" :: Value (Array String) } -> TopicPolicy
topicPolicy required = TopicPolicy
  required