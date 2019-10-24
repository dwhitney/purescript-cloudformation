module CloudFormation.AWS.AutoScalingPlans.ScalingPlan where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ScalingPlan =
  { "ApplicationSource" :: ApplicationSource
  , "ScalingInstructions" :: Array ScalingInstruction
  }

scalingPlan :: { "ApplicationSource" :: ApplicationSource, "ScalingInstructions" :: Array ScalingInstruction } -> ScalingPlan
scalingPlan required =
  required

type PredefinedLoadMetricSpecification =
  { "PredefinedLoadMetricType" :: String
  , "ResourceLabel" :: Maybe String
  }

predefinedLoadMetricSpecification :: { "PredefinedLoadMetricType" :: String } -> PredefinedLoadMetricSpecification
predefinedLoadMetricSpecification required =
  merge required
    { "ResourceLabel" : Nothing
    }

type PredefinedScalingMetricSpecification =
  { "PredefinedScalingMetricType" :: String
  , "ResourceLabel" :: Maybe String
  }

predefinedScalingMetricSpecification :: { "PredefinedScalingMetricType" :: String } -> PredefinedScalingMetricSpecification
predefinedScalingMetricSpecification required =
  merge required
    { "ResourceLabel" : Nothing
    }

type MetricDimension =
  { "Value" :: String
  , "Name" :: String
  }

metricDimension :: { "Value" :: String, "Name" :: String } -> MetricDimension
metricDimension required =
  required

type TargetTrackingConfiguration =
  { "TargetValue" :: Number
  , "ScaleOutCooldown" :: Maybe Int
  , "PredefinedScalingMetricSpecification" :: Maybe PredefinedScalingMetricSpecification
  , "DisableScaleIn" :: Maybe Boolean
  , "ScaleInCooldown" :: Maybe Int
  , "EstimatedInstanceWarmup" :: Maybe Int
  , "CustomizedScalingMetricSpecification" :: Maybe CustomizedScalingMetricSpecification
  }

targetTrackingConfiguration :: { "TargetValue" :: Number } -> TargetTrackingConfiguration
targetTrackingConfiguration required =
  merge required
    { "ScaleOutCooldown" : Nothing
    , "PredefinedScalingMetricSpecification" : Nothing
    , "DisableScaleIn" : Nothing
    , "ScaleInCooldown" : Nothing
    , "EstimatedInstanceWarmup" : Nothing
    , "CustomizedScalingMetricSpecification" : Nothing
    }

type ScalingInstruction =
  { "ServiceNamespace" :: String
  , "ScalableDimension" :: String
  , "MinCapacity" :: Int
  , "TargetTrackingConfigurations" :: Array TargetTrackingConfiguration
  , "ResourceId" :: String
  , "MaxCapacity" :: Int
  , "DisableDynamicScaling" :: Maybe Boolean
  , "PredictiveScalingMaxCapacityBehavior" :: Maybe String
  , "ScalingPolicyUpdateBehavior" :: Maybe String
  , "PredictiveScalingMaxCapacityBuffer" :: Maybe Int
  , "CustomizedLoadMetricSpecification" :: Maybe CustomizedLoadMetricSpecification
  , "PredefinedLoadMetricSpecification" :: Maybe PredefinedLoadMetricSpecification
  , "ScheduledActionBufferTime" :: Maybe Int
  , "PredictiveScalingMode" :: Maybe String
  }

scalingInstruction :: { "ServiceNamespace" :: String, "ScalableDimension" :: String, "MinCapacity" :: Int, "TargetTrackingConfigurations" :: Array TargetTrackingConfiguration, "ResourceId" :: String, "MaxCapacity" :: Int } -> ScalingInstruction
scalingInstruction required =
  merge required
    { "DisableDynamicScaling" : Nothing
    , "PredictiveScalingMaxCapacityBehavior" : Nothing
    , "ScalingPolicyUpdateBehavior" : Nothing
    , "PredictiveScalingMaxCapacityBuffer" : Nothing
    , "CustomizedLoadMetricSpecification" : Nothing
    , "PredefinedLoadMetricSpecification" : Nothing
    , "ScheduledActionBufferTime" : Nothing
    , "PredictiveScalingMode" : Nothing
    }

type ApplicationSource =
  { "CloudFormationStackARN" :: Maybe String
  , "TagFilters" :: Maybe (Array TagFilter)
  }

applicationSource :: ApplicationSource
applicationSource =
  { "CloudFormationStackARN" : Nothing
  , "TagFilters" : Nothing
  }

type CustomizedLoadMetricSpecification =
  { "MetricName" :: String
  , "Statistic" :: String
  , "Namespace" :: String
  , "Dimensions" :: Maybe (Array MetricDimension)
  , "Unit" :: Maybe String
  }

customizedLoadMetricSpecification :: { "MetricName" :: String, "Statistic" :: String, "Namespace" :: String } -> CustomizedLoadMetricSpecification
customizedLoadMetricSpecification required =
  merge required
    { "Dimensions" : Nothing
    , "Unit" : Nothing
    }

type TagFilter =
  { "Key" :: String
  , "Values" :: Maybe (Array String)
  }

tagFilter :: { "Key" :: String } -> TagFilter
tagFilter required =
  merge required
    { "Values" : Nothing
    }

type CustomizedScalingMetricSpecification =
  { "MetricName" :: String
  , "Statistic" :: String
  , "Namespace" :: String
  , "Dimensions" :: Maybe (Array MetricDimension)
  , "Unit" :: Maybe String
  }

customizedScalingMetricSpecification :: { "MetricName" :: String, "Statistic" :: String, "Namespace" :: String } -> CustomizedScalingMetricSpecification
customizedScalingMetricSpecification required =
  merge required
    { "Dimensions" : Nothing
    , "Unit" : Nothing
    }