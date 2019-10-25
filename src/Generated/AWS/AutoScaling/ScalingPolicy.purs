module CloudFormation.AWS.AutoScaling.ScalingPolicy where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "AutoScalingGroupName" :: Value String
  , "AdjustmentType" :: Maybe (Value String)
  , "Cooldown" :: Maybe (Value String)
  , "EstimatedInstanceWarmup" :: Maybe (Value Int)
  , "MetricAggregationType" :: Maybe (Value String)
  , "MinAdjustmentMagnitude" :: Maybe (Value Int)
  , "PolicyType" :: Maybe (Value String)
  , "ScalingAdjustment" :: Maybe (Value Int)
  , "StepAdjustments" :: Maybe (Value (Array StepAdjustment))
  , "TargetTrackingConfiguration" :: Maybe (Value TargetTrackingConfiguration)
  }

derive instance newtypeScalingPolicy :: Newtype ScalingPolicy _
derive newtype instance writeScalingPolicy :: WriteForeign ScalingPolicy
instance resourceScalingPolicy :: Resource ScalingPolicy where type_ _ = "AWS::AutoScaling::ScalingPolicy"

scalingPolicy :: { "AutoScalingGroupName" :: Value String } -> ScalingPolicy
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
  { "TargetValue" :: Value Number
  , "CustomizedMetricSpecification" :: Maybe (Value CustomizedMetricSpecification)
  , "DisableScaleIn" :: Maybe (Value Boolean)
  , "PredefinedMetricSpecification" :: Maybe (Value PredefinedMetricSpecification)
  }

targetTrackingConfiguration :: { "TargetValue" :: Value Number } -> TargetTrackingConfiguration
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
  { "PredefinedMetricType" :: Value String
  , "ResourceLabel" :: Maybe (Value String)
  }

predefinedMetricSpecification :: { "PredefinedMetricType" :: Value String } -> PredefinedMetricSpecification
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
  { "Name" :: Value String
  , "Value" :: Value String
  }

metricDimension :: { "Name" :: Value String, "Value" :: Value String } -> MetricDimension
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
  { "ScalingAdjustment" :: Value Int
  , "MetricIntervalLowerBound" :: Maybe (Value Number)
  , "MetricIntervalUpperBound" :: Maybe (Value Number)
  }

stepAdjustment :: { "ScalingAdjustment" :: Value Int } -> StepAdjustment
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
  { "MetricName" :: Value String
  , "Namespace" :: Value String
  , "Statistic" :: Value String
  , "Dimensions" :: Maybe (Value (Array MetricDimension))
  , "Unit" :: Maybe (Value String)
  }

customizedMetricSpecification :: { "MetricName" :: Value String, "Namespace" :: Value String, "Statistic" :: Value String } -> CustomizedMetricSpecification
customizedMetricSpecification required =
  (merge required
    { "Dimensions" : Nothing
    , "Unit" : Nothing
    })