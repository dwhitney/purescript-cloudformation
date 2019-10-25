module CloudFormation.AWS.SNS.Subscription where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SNS::Subscription`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html
-- |
-- | - `DeliveryPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#cfn-sns-subscription-deliverypolicy
-- | - `Endpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#cfn-sns-endpoint
-- | - `FilterPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#cfn-sns-subscription-filterpolicy
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#cfn-sns-protocol
-- | - `RawMessageDelivery`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#cfn-sns-subscription-rawmessagedelivery
-- | - `Region`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#cfn-sns-subscription-region
-- | - `TopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html#topicarn
newtype Subscription = Subscription
  { "Protocol" :: Value String
  , "TopicArn" :: Value String
  , "DeliveryPolicy" :: Maybe (Value CF.Json)
  , "Endpoint" :: Maybe (Value String)
  , "FilterPolicy" :: Maybe (Value CF.Json)
  , "RawMessageDelivery" :: Maybe (Value Boolean)
  , "Region" :: Maybe (Value String)
  }

derive instance newtypeSubscription :: Newtype Subscription _
derive newtype instance writeSubscription :: WriteForeign Subscription
instance resourceSubscription :: Resource Subscription where type_ _ = "AWS::SNS::Subscription"

subscription :: { "Protocol" :: Value String, "TopicArn" :: Value String } -> Subscription
subscription required = Subscription
  (merge required
    { "DeliveryPolicy" : Nothing
    , "Endpoint" : Nothing
    , "FilterPolicy" : Nothing
    , "RawMessageDelivery" : Nothing
    , "Region" : Nothing
    })