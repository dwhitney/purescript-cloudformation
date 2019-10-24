module CloudFormation.AWS.SSM.MaintenanceWindow where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::SSM::MaintenanceWindow`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html-- |
-- | - `StartDate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-startdate
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-description
-- | - `AllowUnassociatedTargets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-allowunassociatedtargets
-- | - `Cutoff`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-cutoff
-- | - `Schedule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-schedule
-- | - `Duration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-duration
-- | - `EndDate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-enddate
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-name
-- | - `ScheduleTimezone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html#cfn-ssm-maintenancewindow-scheduletimezone
type MaintenanceWindow =
  { "AllowUnassociatedTargets" :: Boolean
  , "Cutoff" :: Int
  , "Schedule" :: String
  , "Duration" :: Int
  , "Name" :: String
  , "StartDate" :: Maybe String
  , "Description" :: Maybe String
  , "EndDate" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "ScheduleTimezone" :: Maybe String
  }

maintenanceWindow :: { "AllowUnassociatedTargets" :: Boolean, "Cutoff" :: Int, "Schedule" :: String, "Duration" :: Int, "Name" :: String } -> MaintenanceWindow
maintenanceWindow required =
  merge required
    { "StartDate" : Nothing
    , "Description" : Nothing
    , "EndDate" : Nothing
    , "Tags" : Nothing
    , "ScheduleTimezone" : Nothing
    }