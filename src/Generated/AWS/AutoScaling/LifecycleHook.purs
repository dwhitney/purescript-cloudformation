module CloudFormation.AWS.AutoScaling.LifecycleHook where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype LifecycleHook = LifecycleHook
  { "AutoScalingGroupName" :: String
  , "LifecycleTransition" :: String
  , "DefaultResult" :: Maybe String
  , "HeartbeatTimeout" :: Maybe Int
  , "LifecycleHookName" :: Maybe String
  , "NotificationMetadata" :: Maybe String
  , "NotificationTargetARN" :: Maybe String
  , "RoleARN" :: Maybe String
  }

derive instance newtypeLifecycleHook :: Newtype LifecycleHook _
instance resourceLifecycleHook :: Resource LifecycleHook where type_ _ = "AWS::AutoScaling::LifecycleHook"

lifecycleHook :: { "AutoScalingGroupName" :: String, "LifecycleTransition" :: String } -> LifecycleHook
lifecycleHook required = LifecycleHook
  (merge required
    { "DefaultResult" : Nothing
    , "HeartbeatTimeout" : Nothing
    , "LifecycleHookName" : Nothing
    , "NotificationMetadata" : Nothing
    , "NotificationTargetARN" : Nothing
    , "RoleARN" : Nothing
    })