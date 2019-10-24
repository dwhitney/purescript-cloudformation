module CloudFormation.AWS.RDS.EventSubscription where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::RDS::EventSubscription`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-eventsubscription.html-- |
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
type EventSubscription =
  { "SnsTopicArn" :: String
  , "Enabled" :: Maybe Boolean
  , "EventCategories" :: Maybe (Array String)
  , "SourceIds" :: Maybe (Array String)
  , "SourceType" :: Maybe String
  }

eventSubscription :: { "SnsTopicArn" :: String } -> EventSubscription
eventSubscription required =
  merge required
    { "Enabled" : Nothing
    , "EventCategories" : Nothing
    , "SourceIds" : Nothing
    , "SourceType" : Nothing
    }