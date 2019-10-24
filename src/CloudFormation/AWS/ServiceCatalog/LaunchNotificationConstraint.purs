module CloudFormation.AWS.ServiceCatalog.LaunchNotificationConstraint where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ServiceCatalog::LaunchNotificationConstraint`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicecatalog-launchnotificationconstraint.html-- |
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
type LaunchNotificationConstraint =
  { "NotificationArns" :: Array String
  , "PortfolioId" :: String
  , "ProductId" :: String
  , "Description" :: Maybe String
  , "AcceptLanguage" :: Maybe String
  }

launchNotificationConstraint :: { "NotificationArns" :: Array String, "PortfolioId" :: String, "ProductId" :: String } -> LaunchNotificationConstraint
launchNotificationConstraint required =
  merge required
    { "Description" : Nothing
    , "AcceptLanguage" : Nothing
    }