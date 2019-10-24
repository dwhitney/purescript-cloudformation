module CloudFormation.AWS.ServiceCatalog.LaunchNotificationConstraint where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "NotificationArns" :: Array String
  , "PortfolioId" :: String
  , "ProductId" :: String
  , "Description" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  }

derive instance newtypeLaunchNotificationConstraint :: Newtype LaunchNotificationConstraint _
instance resourceLaunchNotificationConstraint :: Resource LaunchNotificationConstraint where type_ _ = "AWS::ServiceCatalog::LaunchNotificationConstraint"

launchNotificationConstraint :: { "NotificationArns" :: Array String, "PortfolioId" :: String, "ProductId" :: String } -> LaunchNotificationConstraint
launchNotificationConstraint required = LaunchNotificationConstraint
  (merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    })