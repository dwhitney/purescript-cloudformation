module CloudFormation.AWS.CloudWatch.Dashboard where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Dashboard =
  { "DashboardBody" :: String
  , "DashboardName" :: Maybe String
  }

dashboard :: { "DashboardBody" :: String } -> Dashboard
dashboard required =
  merge required
    { "DashboardName" : Nothing
    }