module CloudFormation.AWS.DMS.EventSubscription where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


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
type EventSubscription =
  { "SnsTopicArn" :: String
  , "SourceType" :: Maybe String
  , "EventCategories" :: Maybe (Array String)
  , "Enabled" :: Maybe Boolean
  , "SubscriptionName" :: Maybe String
  , "SourceIds" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  }

eventSubscription :: { "SnsTopicArn" :: String } -> EventSubscription
eventSubscription required =
  merge required
    { "SourceType" : Nothing
    , "EventCategories" : Nothing
    , "Enabled" : Nothing
    , "SubscriptionName" : Nothing
    , "SourceIds" : Nothing
    , "Tags" : Nothing
    }