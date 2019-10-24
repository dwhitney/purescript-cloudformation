module CloudFormation.AWS.ApplicationAutoScaling.ScalableTarget where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ScalableTarget =
  { "MaxCapacity" :: Int
  , "MinCapacity" :: Int
  , "ResourceId" :: String
  , "RoleARN" :: String
  , "ScalableDimension" :: String
  , "ServiceNamespace" :: String
  , "ScheduledActions" :: Maybe (Array ScheduledAction)
  , "SuspendedState" :: Maybe SuspendedState
  }

scalableTarget :: { "MaxCapacity" :: Int, "MinCapacity" :: Int, "ResourceId" :: String, "RoleARN" :: String, "ScalableDimension" :: String, "ServiceNamespace" :: String } -> ScalableTarget
scalableTarget required =
  merge required
    { "ScheduledActions" : Nothing
    , "SuspendedState" : Nothing
    }

type ScalableTargetAction =
  { "MaxCapacity" :: Maybe Int
  , "MinCapacity" :: Maybe Int
  }

scalableTargetAction :: ScalableTargetAction
scalableTargetAction =
  { "MaxCapacity" : Nothing
  , "MinCapacity" : Nothing
  }

type ScheduledAction =
  { "Schedule" :: String
  , "ScheduledActionName" :: String
  , "EndTime" :: Maybe String
  , "ScalableTargetAction" :: Maybe ScalableTargetAction
  , "StartTime" :: Maybe String
  }

scheduledAction :: { "Schedule" :: String, "ScheduledActionName" :: String } -> ScheduledAction
scheduledAction required =
  merge required
    { "EndTime" : Nothing
    , "ScalableTargetAction" : Nothing
    , "StartTime" : Nothing
    }

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