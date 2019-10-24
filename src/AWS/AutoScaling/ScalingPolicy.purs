module AWS.AutoScaling.ScalingPolicy where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ScalingPolicy =
  { "AutoScalingGroupName" :: String
  , "AdjustmentType" :: Maybe String
  , "Cooldown" :: Maybe String
  , "EstimatedInstanceWarmup" :: Maybe Int
  , "MetricAggregationType" :: Maybe String
  , "MinAdjustmentMagnitude" :: Maybe Int
  , "PolicyType" :: Maybe String
  , "ScalingAdjustment" :: Maybe Int
  , "StepAdjustments" :: Maybe (Array StepAdjustment)
  , "TargetTrackingConfiguration" :: Maybe TargetTrackingConfiguration
  }

scalingPolicy :: { "AutoScalingGroupName" :: String } -> ScalingPolicy
scalingPolicy required =
  merge required
    { "AdjustmentType" : Nothing
    , "Cooldown" : Nothing
    , "EstimatedInstanceWarmup" : Nothing
    , "MetricAggregationType" : Nothing
    , "MinAdjustmentMagnitude" : Nothing
    , "PolicyType" : Nothing
    , "ScalingAdjustment" : Nothing
    , "StepAdjustments" : Nothing
    , "TargetTrackingConfiguration" : Nothing
    }

type TargetTrackingConfiguration =
  { "TargetValue" :: Number
  , "CustomizedMetricSpecification" :: Maybe CustomizedMetricSpecification
  , "DisableScaleIn" :: Maybe Boolean
  , "PredefinedMetricSpecification" :: Maybe PredefinedMetricSpecification
  }

targetTrackingConfiguration :: { "TargetValue" :: Number } -> TargetTrackingConfiguration
targetTrackingConfiguration required =
  merge required
    { "CustomizedMetricSpecification" : Nothing
    , "DisableScaleIn" : Nothing
    , "PredefinedMetricSpecification" : Nothing
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