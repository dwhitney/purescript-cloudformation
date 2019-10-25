module CloudFormation.AWS.ServiceCatalog.LaunchNotificationConstraint where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ServiceCatalog::LaunchNotificationConstraint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchnotificationconstraint.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchnotificationconstraint.html#cfn-servicecatalog-launchnotificationconstraint-description
-- | - `NotificationArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchnotificationconstraint.html#cfn-servicecatalog-launchnotificationconstraint-notificationarns
-- | - `AcceptLanguage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchnotificationconstraint.html#cfn-servicecatalog-launchnotificationconstraint-acceptlanguage
-- | - `PortfolioId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchnotificationconstraint.html#cfn-servicecatalog-launchnotificationconstraint-portfolioid
-- | - `ProductId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchnotificationconstraint.html#cfn-servicecatalog-launchnotificationconstraint-productid
newtype LaunchNotificationConstraint = LaunchNotificationConstraint
  { "NotificationArns" :: Value (Array String)
  , "PortfolioId" :: Value String
  , "ProductId" :: Value String
  , "Description" :: Maybe (Value String)
  , "AcceptLanguage" :: Maybe (Value String)
  }

derive instance newtypeLaunchNotificationConstraint :: Newtype LaunchNotificationConstraint _
derive newtype instance writeLaunchNotificationConstraint :: WriteForeign LaunchNotificationConstraint
instance resourceLaunchNotificationConstraint :: Resource LaunchNotificationConstraint where type_ _ = "AWS::ServiceCatalog::LaunchNotificationConstraint"

launchNotificationConstraint :: { "NotificationArns" :: Value (Array String), "PortfolioId" :: Value String, "ProductId" :: Value String } -> LaunchNotificationConstraint
launchNotificationConstraint required = LaunchNotificationConstraint
  (merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    })