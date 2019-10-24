module CloudFormation.AWS.SNS.Subscription where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::SNS::Subscription`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sns-subscription.html-- |
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
type Subscription =
  { "Protocol" :: String
  , "TopicArn" :: String
  , "DeliveryPolicy" :: Maybe Foreign
  , "Endpoint" :: Maybe String
  , "FilterPolicy" :: Maybe Foreign
  , "RawMessageDelivery" :: Maybe Boolean
  , "Region" :: Maybe String
  }

subscription :: { "Protocol" :: String, "TopicArn" :: String } -> Subscription
subscription required =
  merge required
    { "DeliveryPolicy" : Nothing
    , "Endpoint" : Nothing
    , "FilterPolicy" : Nothing
    , "RawMessageDelivery" : Nothing
    , "Region" : Nothing
    }