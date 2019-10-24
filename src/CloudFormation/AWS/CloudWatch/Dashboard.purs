module CloudFormation.AWS.CloudWatch.Dashboard where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::CloudWatch::Dashboard`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html-- |
-- | - `DashboardName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html#cfn-cloudwatch-dashboard-dashboardname
-- | - `DashboardBody`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-dashboard.html#cfn-cloudwatch-dashboard-dashboardbody
type Dashboard =
  { "DashboardBody" :: String
  , "DashboardName" :: Maybe String
  }

dashboard :: { "DashboardBody" :: String } -> Dashboard
dashboard required =
  merge required
    { "DashboardName" : Nothing
    }