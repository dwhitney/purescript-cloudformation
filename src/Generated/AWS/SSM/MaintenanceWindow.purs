module CloudFormation.AWS.SSM.MaintenanceWindow where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SSM::MaintenanceWindow`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-maintenancewindow.html
-- |
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
newtype MaintenanceWindow = MaintenanceWindow
  { "AllowUnassociatedTargets" :: Value Boolean
  , "Cutoff" :: Value Int
  , "Schedule" :: Value String
  , "Duration" :: Value Int
  , "Name" :: Value String
  , "StartDate" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "EndDate" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "ScheduleTimezone" :: Maybe (Value String)
  }

derive instance newtypeMaintenanceWindow :: Newtype MaintenanceWindow _
derive newtype instance writeMaintenanceWindow :: WriteForeign MaintenanceWindow
instance resourceMaintenanceWindow :: Resource MaintenanceWindow where type_ _ = "AWS::SSM::MaintenanceWindow"

maintenanceWindow :: { "AllowUnassociatedTargets" :: Value Boolean, "Cutoff" :: Value Int, "Schedule" :: Value String, "Duration" :: Value Int, "Name" :: Value String } -> MaintenanceWindow
maintenanceWindow required = MaintenanceWindow
  (merge required
    { "StartDate" : Nothing
    , "Description" : Nothing
    , "EndDate" : Nothing
    , "Tags" : Nothing
    , "ScheduleTimezone" : Nothing
    })