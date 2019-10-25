module CloudFormation.AWS.CloudWatch.Dashboard where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CloudWatch::Dashboard`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html
-- |
-- | - `DashboardName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html#cfn-cloudwatch-dashboard-dashboardname
-- | - `DashboardBody`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html#cfn-cloudwatch-dashboard-dashboardbody
newtype Dashboard = Dashboard
  { "DashboardBody" :: Value String
  , "DashboardName" :: Maybe (Value String)
  }

derive instance newtypeDashboard :: Newtype Dashboard _
derive newtype instance writeDashboard :: WriteForeign Dashboard
instance resourceDashboard :: Resource Dashboard where type_ _ = "AWS::CloudWatch::Dashboard"

dashboard :: { "DashboardBody" :: Value String } -> Dashboard
dashboard required = Dashboard
  (merge required
    { "DashboardName" : Nothing
    })