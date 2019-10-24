module AWS.ApplicationAutoScaling.ScalingPolicy where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ScalingPolicy =
  { "PolicyName" :: String
  , "PolicyType" :: String
  , "ResourceId" :: Maybe String
  , "ScalableDimension" :: Maybe String
  , "ScalingTargetId" :: Maybe String
  , "ServiceNamespace" :: Maybe String
  , "StepScalingPolicyConfiguration" :: Maybe StepScalingPolicyConfiguration
  , "TargetTrackingScalingPolicyConfiguration" :: Maybe TargetTrackingScalingPolicyConfiguration
  }

scalingPolicy :: { "PolicyName" :: String, "PolicyType" :: String } -> ScalingPolicy
scalingPolicy required =
  merge required
    { "ResourceId" : Nothing
    , "ScalableDimension" : Nothing
    , "ScalingTargetId" : Nothing
    , "ServiceNamespace" : Nothing
    , "StepScalingPolicyConfiguration" : Nothing
    , "TargetTrackingScalingPolicyConfiguration" : Nothing
    }

type TargetTrackingScalingPolicyConfiguration =
  { "TargetValue" :: Number
  , "CustomizedMetricSpecification" :: Maybe CustomizedMetricSpecification
  , "DisableScaleIn" :: Maybe Boolean
  , "PredefinedMetricSpecification" :: Maybe PredefinedMetricSpecification
  , "ScaleInCooldown" :: Maybe Int
  , "ScaleOutCooldown" :: Maybe Int
  }

targetTrackingScalingPolicyConfiguration :: { "TargetValue" :: Number } -> TargetTrackingScalingPolicyConfiguration
targetTrackingScalingPolicyConfiguration required =
  merge required
    { "CustomizedMetricSpecification" : Nothing
    , "DisableScaleIn" : Nothing
    , "PredefinedMetricSpecification" : Nothing
    , "ScaleInCooldown" : Nothing
    , "ScaleOutCooldown" : Nothing
    }

type StepAdjustment =
  { "ScalingAdjustment" :: Int
  , "MetricIntervalLowerBound" :: Maybe Number
  , "MetricIntervalUpperBound" :: Maybe Number
  }

stepAdjustment :: { "ScalingAdjustment" :: Int } -> StepAdjustment
stepAdjustment required =
  merge required
    { "MetricIntervalLowerBound" : Nothing
    , "MetricIntervalUpperBound" : Nothing
    }

type CustomizedMetricSpecification =
  { "MetricName" :: String
  , "Namespace" :: String
  , "Statistic" :: String
  , "Dimensions" :: Maybe (Array MetricDimension)
  , "Unit" :: Maybe String
  }

customizedMetricSpecification :: { "MetricName" :: String, "Namespace" :: String, "Statistic" :: String } -> CustomizedMetricSpecification
customizedMetricSpecification required =
  merge required
    { "Dimensions" : Nothing
    , "Unit" : Nothing
    }

type PredefinedMetricSpecification =
  { "PredefinedMetricType" :: String
  , "ResourceLabel" :: Maybe String
  }

predefinedMetricSpecification :: { "PredefinedMetricType" :: String } -> PredefinedMetricSpecification
predefinedMetricSpecification required =
  merge required
    { "ResourceLabel" : Nothing
    }

type MetricDimension =
  { "Name" :: String
  , "Value" :: String
  }

metricDimension :: { "Name" :: String, "Value" :: String } -> MetricDimension
metricDimension required =
  required

type StepScalingPolicyConfiguration =
  { "AdjustmentType" :: Maybe String
  , "Cooldown" :: Maybe Int
  , "MetricAggregationType" :: Maybe String
  , "MinAdjustmentMagnitude" :: Maybe Int
  , "StepAdjustments" :: Maybe (Array StepAdjustment)
  }

stepScalingPolicyConfiguration :: StepScalingPolicyConfiguration
stepScalingPolicyConfiguration =
  { "AdjustmentType" : Nothing
  , "Cooldown" : Nothing
  , "MetricAggregationType" : Nothing
  , "MinAdjustmentMagnitude" : Nothing
  , "StepAdjustments" : Nothing
  }