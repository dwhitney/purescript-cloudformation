module CloudFormation.AWS.AutoScaling.ScheduledAction where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ScheduledAction =
  { "AutoScalingGroupName" :: String
  , "DesiredCapacity" :: Maybe Int
  , "EndTime" :: Maybe String
  , "MaxSize" :: Maybe Int
  , "MinSize" :: Maybe Int
  , "Recurrence" :: Maybe String
  , "StartTime" :: Maybe String
  }

scheduledAction :: { "AutoScalingGroupName" :: String } -> ScheduledAction
scheduledAction required =
  merge required
    { "DesiredCapacity" : Nothing
    , "EndTime" : Nothing
    , "MaxSize" : Nothing
    , "MinSize" : Nothing
    , "Recurrence" : Nothing
    , "StartTime" : Nothing
    }