module CloudFormation.AWS.CloudWatch.Dashboard where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::CloudWatch::Dashboard`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html
-- |
-- | - `DashboardName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html#cfn-cloudwatch-dashboard-dashboardname
-- | - `DashboardBody`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html#cfn-cloudwatch-dashboard-dashboardbody
newtype Dashboard = Dashboard
  { "DashboardBody" :: String
  , "DashboardName" :: Maybe String
  }

derive instance newtypeDashboard :: Newtype Dashboard _
instance resourceDashboard :: Resource Dashboard where type_ _ = "AWS::CloudWatch::Dashboard"

dashboard :: { "DashboardBody" :: String } -> Dashboard
dashboard required = Dashboard
  (merge required
    { "DashboardName" : Nothing
    })