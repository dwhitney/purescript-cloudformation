module CloudFormation.AWS.SNS.Topic where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SNS::Topic`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html
-- |
-- | - `DisplayName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-displayname
-- | - `KmsMasterKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-kmsmasterkeyid
-- | - `Subscription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-subscription
-- | - `TopicName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-topic.html#cfn-sns-topic-topicname
newtype Topic = Topic
  { "DisplayName" :: Maybe (Value String)
  , "KmsMasterKeyId" :: Maybe (Value String)
  , "Subscription" :: Maybe (Value (Array Subscription))
  , "TopicName" :: Maybe (Value String)
  }

derive instance newtypeTopic :: Newtype Topic _
derive newtype instance writeTopic :: WriteForeign Topic
instance resourceTopic :: Resource Topic where type_ _ = "AWS::SNS::Topic"

topic :: Topic
topic = Topic
  { "DisplayName" : Nothing
  , "KmsMasterKeyId" : Nothing
  , "Subscription" : Nothing
  , "TopicName" : Nothing
  }

-- | `AWS::SNS::Topic.Subscription`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html
-- |
-- | - `Endpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html#cfn-sns-topic-subscription-endpoint
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sns-subscription.html#cfn-sns-topic-subscription-protocol
type Subscription =
  { "Endpoint" :: Value String
  , "Protocol" :: Value String
  }

subscription :: { "Endpoint" :: Value String, "Protocol" :: Value String } -> Subscription
subscription required =
  required