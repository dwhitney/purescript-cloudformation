module CloudFormation.AWS.ApplicationAutoScaling.ScalableTarget where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ApplicationAutoScaling::ScalableTarget`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html
-- |
-- | - `MaxCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-maxcapacity
-- | - `MinCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-mincapacity
-- | - `ResourceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-resourceid
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-rolearn
-- | - `ScalableDimension`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-scalabledimension
-- | - `ScheduledActions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-scheduledactions
-- | - `ServiceNamespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-servicenamespace
-- | - `SuspendedState`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalabletarget.html#cfn-applicationautoscaling-scalabletarget-suspendedstate
newtype ScalableTarget = ScalableTarget
  { "MaxCapacity" :: Int
  , "MinCapacity" :: Int
  , "ResourceId" :: String
  , "RoleARN" :: String
  , "ScalableDimension" :: String
  , "ServiceNamespace" :: String
  , "ScheduledActions" :: Maybe (Array ScheduledAction)
  , "SuspendedState" :: Maybe SuspendedState
  }

derive instance newtypeScalableTarget :: Newtype ScalableTarget _
instance resourceScalableTarget :: Resource ScalableTarget where type_ _ = "AWS::ApplicationAutoScaling::ScalableTarget"

scalableTarget :: { "MaxCapacity" :: Int, "MinCapacity" :: Int, "ResourceId" :: String, "RoleARN" :: String, "ScalableDimension" :: String, "ServiceNamespace" :: String } -> ScalableTarget
scalableTarget required = ScalableTarget
  (merge required
    { "ScheduledActions" : Nothing
    , "SuspendedState" : Nothing
    })

-- | `AWS::ApplicationAutoScaling::ScalableTarget.ScalableTargetAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scalabletargetaction.html
-- |
-- | - `MaxCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scalabletargetaction.html#cfn-applicationautoscaling-scalabletarget-scalabletargetaction-maxcapacity
-- | - `MinCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scalabletargetaction.html#cfn-applicationautoscaling-scalabletarget-scalabletargetaction-mincapacity
type ScalableTargetAction =
  { "MaxCapacity" :: Maybe Int
  , "MinCapacity" :: Maybe Int
  }

scalableTargetAction :: ScalableTargetAction
scalableTargetAction =
  { "MaxCapacity" : Nothing
  , "MinCapacity" : Nothing
  }

-- | `AWS::ApplicationAutoScaling::ScalableTarget.ScheduledAction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html
-- |
-- | - `EndTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-endtime
-- | - `ScalableTargetAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-scalabletargetaction
-- | - `Schedule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-schedule
-- | - `ScheduledActionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-scheduledactionname
-- | - `StartTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-scheduledaction.html#cfn-applicationautoscaling-scalabletarget-scheduledaction-starttime
type ScheduledAction =
  { "Schedule" :: String
  , "ScheduledActionName" :: String
  , "EndTime" :: Maybe String
  , "ScalableTargetAction" :: Maybe ScalableTargetAction
  , "StartTime" :: Maybe String
  }

scheduledAction :: { "Schedule" :: String, "ScheduledActionName" :: String } -> ScheduledAction
scheduledAction required =
  (merge required
    { "EndTime" : Nothing
    , "ScalableTargetAction" : Nothing
    , "StartTime" : Nothing
    })

-- | `AWS::ApplicationAutoScaling::ScalableTarget.SuspendedState`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html
-- |
-- | - `DynamicScalingInSuspended`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-dynamicscalinginsuspended
-- | - `DynamicScalingOutSuspended`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-dynamicscalingoutsuspended
-- | - `ScheduledScalingSuspended`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-scheduledscalingsuspended
type SuspendedState =
  { "DynamicScalingInSuspended" :: Maybe Boolean
  , "DynamicScalingOutSuspended" :: Maybe Boolean
  , "ScheduledScalingSuspended" :: Maybe Boolean
  }

suspendedState :: SuspendedState
suspendedState =
  { "DynamicScalingInSuspended" : Nothing
  , "DynamicScalingOutSuspended" : Nothing
  , "ScheduledScalingSuspended" : Nothing
  }