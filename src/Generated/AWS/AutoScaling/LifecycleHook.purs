module CloudFormation.AWS.AutoScaling.LifecycleHook where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "AutoScalingGroupName" :: Value String
  , "LifecycleTransition" :: Value String
  , "DefaultResult" :: Maybe (Value String)
  , "HeartbeatTimeout" :: Maybe (Value Int)
  , "LifecycleHookName" :: Maybe (Value String)
  , "NotificationMetadata" :: Maybe (Value String)
  , "NotificationTargetARN" :: Maybe (Value String)
  , "RoleARN" :: Maybe (Value String)
  }

derive instance newtypeLifecycleHook :: Newtype LifecycleHook _
derive newtype instance writeLifecycleHook :: WriteForeign LifecycleHook
instance resourceLifecycleHook :: Resource LifecycleHook where type_ _ = "AWS::AutoScaling::LifecycleHook"

lifecycleHook :: { "AutoScalingGroupName" :: Value String, "LifecycleTransition" :: Value String } -> LifecycleHook
lifecycleHook required = LifecycleHook
  (merge required
    { "DefaultResult" : Nothing
    , "HeartbeatTimeout" : Nothing
    , "LifecycleHookName" : Nothing
    , "NotificationMetadata" : Nothing
    , "NotificationTargetARN" : Nothing
    , "RoleARN" : Nothing
    })