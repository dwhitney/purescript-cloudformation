module CloudFormation.AWS.RDS.EventSubscription where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::RDS::EventSubscription`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html
-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html#cfn-rds-eventsubscription-enabled
-- | - `EventCategories`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html#cfn-rds-eventsubscription-eventcategories
-- | - `SnsTopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html#cfn-rds-eventsubscription-snstopicarn
-- | - `SourceIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html#cfn-rds-eventsubscription-sourceids
-- | - `SourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html#cfn-rds-eventsubscription-sourcetype
newtype EventSubscription = EventSubscription
  { "SnsTopicArn" :: Value String
  , "Enabled" :: Maybe (Value Boolean)
  , "EventCategories" :: Maybe (Value (Array String))
  , "SourceIds" :: Maybe (Value (Array String))
  , "SourceType" :: Maybe (Value String)
  }

derive instance newtypeEventSubscription :: Newtype EventSubscription _
derive newtype instance writeEventSubscription :: WriteForeign EventSubscription
instance resourceEventSubscription :: Resource EventSubscription where type_ _ = "AWS::RDS::EventSubscription"

eventSubscription :: { "SnsTopicArn" :: Value String } -> EventSubscription
eventSubscription required = EventSubscription
  (merge required
    { "Enabled" : Nothing
    , "EventCategories" : Nothing
    , "SourceIds" : Nothing
    , "SourceType" : Nothing
    })