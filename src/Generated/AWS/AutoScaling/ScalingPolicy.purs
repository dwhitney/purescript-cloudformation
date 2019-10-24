module CloudFormation.AWS.AutoScaling.ScalingPolicy where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::AutoScaling::ScalingPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html
-- |
-- | - `AdjustmentType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-adjustmenttype
-- | - `AutoScalingGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-autoscalinggroupname
-- | - `Cooldown`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-cooldown
-- | - `EstimatedInstanceWarmup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-estimatedinstancewarmup
-- | - `MetricAggregationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-metricaggregationtype
-- | - `MinAdjustmentMagnitude`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-minadjustmentmagnitude
-- | - `PolicyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-policytype
-- | - `ScalingAdjustment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-scalingadjustment
-- | - `StepAdjustments`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-as-scalingpolicy-stepadjustments
-- | - `TargetTrackingConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-policy.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration
newtype ScalingPolicy = ScalingPolicy
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

derive instance newtypeScalingPolicy :: Newtype ScalingPolicy _
instance resourceScalingPolicy :: Resource ScalingPolicy where type_ _ = "AWS::AutoScaling::ScalingPolicy"

scalingPolicy :: { "AutoScalingGroupName" :: String } -> ScalingPolicy
scalingPolicy required = ScalingPolicy
  (merge required
    { "AdjustmentType" : Nothing
    , "Cooldown" : Nothing
    , "EstimatedInstanceWarmup" : Nothing
    , "MetricAggregationType" : Nothing
    , "MinAdjustmentMagnitude" : Nothing
    , "PolicyType" : Nothing
    , "ScalingAdjustment" : Nothing
    , "StepAdjustments" : Nothing
    , "TargetTrackingConfiguration" : Nothing
    })

-- | `AWS::AutoScaling::ScalingPolicy.TargetTrackingConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html
-- |
-- | - `CustomizedMetricSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-customizedmetricspecification
-- | - `DisableScaleIn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-disablescalein
-- | - `PredefinedMetricSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-predefinedmetricspecification
-- | - `TargetValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-targettrackingconfiguration.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration-targetvalue
type TargetTrackingConfiguration =
  { "TargetValue" :: Number
  , "CustomizedMetricSpecification" :: Maybe CustomizedMetricSpecification
  , "DisableScaleIn" :: Maybe Boolean
  , "PredefinedMetricSpecification" :: Maybe PredefinedMetricSpecification
  }

targetTrackingConfiguration :: { "TargetValue" :: Number } -> TargetTrackingConfiguration
targetTrackingConfiguration required =
  (merge required
    { "CustomizedMetricSpecification" : Nothing
    , "DisableScaleIn" : Nothing
    , "PredefinedMetricSpecification" : Nothing
    })

-- | `AWS::AutoScaling::ScalingPolicy.PredefinedMetricSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predefinedmetricspecification.html
-- |
-- | - `PredefinedMetricType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-autoscaling-scalingpolicy-predefinedmetricspecification-predefinedmetrictype
-- | - `ResourceLabel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-autoscaling-scalingpolicy-predefinedmetricspecification-resourcelabel
type PredefinedMetricSpecification =
  { "PredefinedMetricType" :: String
  , "ResourceLabel" :: Maybe String
  }

predefinedMetricSpecification :: { "PredefinedMetricType" :: String } -> PredefinedMetricSpecification
predefinedMetricSpecification required =
  (merge required
    { "ResourceLabel" : Nothing
    })

-- | `AWS::AutoScaling::ScalingPolicy.MetricDimension`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdimension.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdimension.html#cfn-autoscaling-scalingpolicy-metricdimension-name
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-metricdimension.html#cfn-autoscaling-scalingpolicy-metricdimension-value
type MetricDimension =
  { "Name" :: String
  , "Value" :: String
  }

metricDimension :: { "Name" :: String, "Value" :: String } -> MetricDimension
metricDimension required =
  required

-- | `AWS::AutoScaling::ScalingPolicy.StepAdjustment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html
-- |
-- | - `MetricIntervalLowerBound`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-metricintervallowerbound
-- | - `MetricIntervalUpperBound`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-metricintervalupperbound
-- | - `ScalingAdjustment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-stepadjustments.html#cfn-autoscaling-scalingpolicy-stepadjustment-scalingadjustment
type StepAdjustment =
  { "ScalingAdjustment" :: Int
  , "MetricIntervalLowerBound" :: Maybe Number
  , "MetricIntervalUpperBound" :: Maybe Number
  }

stepAdjustment :: { "ScalingAdjustment" :: Int } -> StepAdjustment
stepAdjustment required =
  (merge required
    { "MetricIntervalLowerBound" : Nothing
    , "MetricIntervalUpperBound" : Nothing
    })

-- | `AWS::AutoScaling::ScalingPolicy.CustomizedMetricSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html
-- |
-- | - `Dimensions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-dimensions
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-metricname
-- | - `Namespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-namespace
-- | - `Statistic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-statistic
-- | - `Unit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-customizedmetricspecification.html#cfn-autoscaling-scalingpolicy-customizedmetricspecification-unit
type CustomizedMetricSpecification =
  { "MetricName" :: String
  , "Namespace" :: String
  , "Statistic" :: String
  , "Dimensions" :: Maybe (Array MetricDimension)
  , "Unit" :: Maybe String
  }

customizedMetricSpecification :: { "MetricName" :: String, "Namespace" :: String, "Statistic" :: String } -> CustomizedMetricSpecification
customizedMetricSpecification required =
  (merge required
    { "Dimensions" : Nothing
    , "Unit" : Nothing
    })