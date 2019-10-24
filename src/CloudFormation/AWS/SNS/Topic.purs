module CloudFormation.AWS.SNS.Topic where 

import Data.Maybe (Maybe(..))


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
type Topic =
  { "DisplayName" :: Maybe String
  , "KmsMasterKeyId" :: Maybe String
  , "Subscription" :: Maybe (Array Subscription)
  , "TopicName" :: Maybe String
  }

topic :: Topic
topic =
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
  { "Endpoint" :: String
  , "Protocol" :: String
  }

subscription :: { "Endpoint" :: String, "Protocol" :: String } -> Subscription
subscription required =
  required