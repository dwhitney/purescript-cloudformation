module CloudFormation.AWS.DMS.EventSubscription where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::DMS::EventSubscription`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html
-- |
-- | - `SourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html#cfn-dms-eventsubscription-sourcetype
-- | - `EventCategories`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html#cfn-dms-eventsubscription-eventcategories
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html#cfn-dms-eventsubscription-enabled
-- | - `SubscriptionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html#cfn-dms-eventsubscription-subscriptionname
-- | - `SnsTopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html#cfn-dms-eventsubscription-snstopicarn
-- | - `SourceIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html#cfn-dms-eventsubscription-sourceids
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-eventsubscription.html#cfn-dms-eventsubscription-tags
newtype EventSubscription = EventSubscription
  { "SnsTopicArn" :: Value String
  , "SourceType" :: Maybe (Value String)
  , "EventCategories" :: Maybe (Value (Array String))
  , "Enabled" :: Maybe (Value Boolean)
  , "SubscriptionName" :: Maybe (Value String)
  , "SourceIds" :: Maybe (Value (Array String))
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeEventSubscription :: Newtype EventSubscription _
derive newtype instance writeEventSubscription :: WriteForeign EventSubscription
instance resourceEventSubscription :: Resource EventSubscription where type_ _ = "AWS::DMS::EventSubscription"

eventSubscription :: { "SnsTopicArn" :: Value String } -> EventSubscription
eventSubscription required = EventSubscription
  (merge required
    { "SourceType" : Nothing
    , "EventCategories" : Nothing
    , "Enabled" : Nothing
    , "SubscriptionName" : Nothing
    , "SourceIds" : Nothing
    , "Tags" : Nothing
    })