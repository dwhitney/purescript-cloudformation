module CloudFormation.AWS.CodeStarNotifications.NotificationRule where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CodeStarNotifications::NotificationRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html
-- |
-- | - `EventTypeIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-eventtypeids
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-status
-- | - `DetailType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-detailtype
-- | - `Resource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-resource
-- | - `Targets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-targets
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarnotifications-notificationrule.html#cfn-codestarnotifications-notificationrule-name
newtype NotificationRule = NotificationRule
  { "EventTypeIds" :: Value (Array String)
  , "DetailType" :: Value String
  , "Resource" :: Value String
  , "Targets" :: Value (Array Target)
  , "Name" :: Value String
  , "Status" :: Maybe (Value String)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeNotificationRule :: Newtype NotificationRule _
derive newtype instance writeNotificationRule :: WriteForeign NotificationRule
instance resourceNotificationRule :: Resource NotificationRule where type_ _ = "AWS::CodeStarNotifications::NotificationRule"

notificationRule :: { "EventTypeIds" :: Value (Array String), "DetailType" :: Value String, "Resource" :: Value String, "Targets" :: Value (Array Target), "Name" :: Value String } -> NotificationRule
notificationRule required = NotificationRule
  (merge required
    { "Status" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::CodeStarNotifications::NotificationRule.Target`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestarnotifications-notificationrule-target.html
-- |
-- | - `TargetType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestarnotifications-notificationrule-target.html#cfn-codestarnotifications-notificationrule-target-targettype
-- | - `TargetAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codestarnotifications-notificationrule-target.html#cfn-codestarnotifications-notificationrule-target-targetaddress
type Target =
  { "TargetType" :: Maybe (Value String)
  , "TargetAddress" :: Maybe (Value String)
  }

target :: Target
target =
  { "TargetType" : Nothing
  , "TargetAddress" : Nothing
  }