module CloudFormation.AWS.AutoScaling.LifecycleHook where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::AutoScaling::LifecycleHook`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html
-- |
-- | - `AutoScalingGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-autoscalinggroupname
-- | - `DefaultResult`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-defaultresult
-- | - `HeartbeatTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-heartbeattimeout
-- | - `LifecycleHookName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-autoscaling-lifecyclehook-lifecyclehookname
-- | - `LifecycleTransition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-lifecycletransition
-- | - `NotificationMetadata`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-notificationmetadata
-- | - `NotificationTargetARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-notificationtargetarn
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-as-lifecyclehook.html#cfn-as-lifecyclehook-rolearn
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