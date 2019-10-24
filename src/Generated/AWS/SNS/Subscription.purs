module CloudFormation.AWS.SNS.Subscription where 

import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "Protocol" :: String
  , "TopicArn" :: String
  , "DeliveryPolicy" :: Maybe CF.Json
  , "Endpoint" :: Maybe String
  , "FilterPolicy" :: Maybe CF.Json
  , "RawMessageDelivery" :: Maybe Boolean
  , "Region" :: Maybe String
  }

derive instance newtypeSubscription :: Newtype Subscription _
instance resourceSubscription :: Resource Subscription where type_ _ = "AWS::SNS::Subscription"

subscription :: { "Protocol" :: String, "TopicArn" :: String } -> Subscription
subscription required = Subscription
  (merge required
    { "DeliveryPolicy" : Nothing
    , "Endpoint" : Nothing
    , "FilterPolicy" : Nothing
    , "RawMessageDelivery" : Nothing
    , "Region" : Nothing
    })