module CloudFormation.AWS.AutoScaling.LifecycleHook where 

import Data.Maybe (Maybe(..))
import Record (merge)


type LifecycleHook =
  { "AutoScalingGroupName" :: String
  , "LifecycleTransition" :: String
  , "DefaultResult" :: Maybe String
  , "HeartbeatTimeout" :: Maybe Int
  , "LifecycleHookName" :: Maybe String
  , "NotificationMetadata" :: Maybe String
  , "NotificationTargetARN" :: Maybe String
  , "RoleARN" :: Maybe String
  }

lifecycleHook :: { "AutoScalingGroupName" :: String, "LifecycleTransition" :: String } -> LifecycleHook
lifecycleHook required =
  merge required
    { "DefaultResult" : Nothing
    , "HeartbeatTimeout" : Nothing
    , "LifecycleHookName" : Nothing
    , "NotificationMetadata" : Nothing
    , "NotificationTargetARN" : Nothing
    , "RoleARN" : Nothing
    }