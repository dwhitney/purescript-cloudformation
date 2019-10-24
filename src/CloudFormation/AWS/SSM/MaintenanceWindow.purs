module CloudFormation.AWS.SSM.MaintenanceWindow where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


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