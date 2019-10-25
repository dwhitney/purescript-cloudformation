module CloudFormation.AWS.ApplicationAutoScaling.ScalingPolicy where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ApplicationAutoScaling::ScalingPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html
-- |
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-policyname
-- | - `PolicyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-policytype
-- | - `ResourceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-resourceid
-- | - `ScalableDimension`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-scalabledimension
-- | - `ScalingTargetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-scalingtargetid
-- | - `ServiceNamespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-servicenamespace
-- | - `StepScalingPolicyConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration
-- | - `TargetTrackingScalingPolicyConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration
newtype ScalingPolicy = ScalingPolicy
  { "PolicyName" :: Value String
  , "PolicyType" :: Value String
  , "ResourceId" :: Maybe (Value String)
  , "ScalableDimension" :: Maybe (Value String)
  , "ScalingTargetId" :: Maybe (Value String)
  , "ServiceNamespace" :: Maybe (Value String)
  , "StepScalingPolicyConfiguration" :: Maybe (Value StepScalingPolicyConfiguration)
  , "TargetTrackingScalingPolicyConfiguration" :: Maybe (Value TargetTrackingScalingPolicyConfiguration)
  }

derive instance newtypeScalingPolicy :: Newtype ScalingPolicy _
derive newtype instance writeScalingPolicy :: WriteForeign ScalingPolicy
instance resourceScalingPolicy :: Resource ScalingPolicy where type_ _ = "AWS::ApplicationAutoScaling::ScalingPolicy"

scalingPolicy :: { "PolicyName" :: Value String, "PolicyType" :: Value String } -> ScalingPolicy
scalingPolicy required = ScalingPolicy
  (merge required
    { "ResourceId" : Nothing
    , "ScalableDimension" : Nothing
    , "ScalingTargetId" : Nothing
    , "ServiceNamespace" : Nothing
    , "StepScalingPolicyConfiguration" : Nothing
    , "TargetTrackingScalingPolicyConfiguration" : Nothing
    })

-- | `AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingScalingPolicyConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html
-- |
-- | - `CustomizedMetricSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-customizedmetricspecification
-- | - `DisableScaleIn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-disablescalein
-- | - `PredefinedMetricSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-predefinedmetricspecification
-- | - `ScaleInCooldown`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-scaleincooldown
-- | - `ScaleOutCooldown`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-scaleoutcooldown
-- | - `TargetValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration-targetvalue
type TargetTrackingScalingPolicyConfiguration =
  { "TargetValue" :: Value Number
  , "CustomizedMetricSpecification" :: Maybe (Value CustomizedMetricSpecification)
  , "DisableScaleIn" :: Maybe (Value Boolean)
  , "PredefinedMetricSpecification" :: Maybe (Value PredefinedMetricSpecification)
  , "ScaleInCooldown" :: Maybe (Value Int)
  , "ScaleOutCooldown" :: Maybe (Value Int)
  }

targetTrackingScalingPolicyConfiguration :: { "TargetValue" :: Value Number } -> TargetTrackingScalingPolicyConfiguration
targetTrackingScalingPolicyConfiguration required =
  (merge required
    { "CustomizedMetricSpecification" : Nothing
    , "DisableScaleIn" : Nothing
    , "PredefinedMetricSpecification" : Nothing
    , "ScaleInCooldown" : Nothing
    , "ScaleOutCooldown" : Nothing
    })

-- | `AWS::ApplicationAutoScaling::ScalingPolicy.StepAdjustment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment.html
-- |
-- | - `MetricIntervalLowerBound`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment-metricintervallowerbound
-- | - `MetricIntervalUpperBound`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment-metricintervalupperbound
-- | - `ScalingAdjustment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustment-scalingadjustment
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

-- | `AWS::ApplicationAutoScaling::ScalingPolicy.CustomizedMetricSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html
-- |
-- | - `Dimensions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-dimensions
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-metricname
-- | - `Namespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-namespace
-- | - `Statistic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-statistic
-- | - `Unit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-customizedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-customizedmetricspecification-unit
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

-- | `AWS::ApplicationAutoScaling::ScalingPolicy.PredefinedMetricSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html
-- |
-- | - `PredefinedMetricType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-predefinedmetricspecification-predefinedmetrictype
-- | - `ResourceLabel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-predefinedmetricspecification-resourcelabel
type PredefinedMetricSpecification =
  { "PredefinedMetricType" :: Value String
  , "ResourceLabel" :: Maybe (Value String)
  }

predefinedMetricSpecification :: { "PredefinedMetricType" :: Value String } -> PredefinedMetricSpecification
predefinedMetricSpecification required =
  (merge required
    { "ResourceLabel" : Nothing
    })

-- | `AWS::ApplicationAutoScaling::ScalingPolicy.MetricDimension`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-metricdimension.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-metricdimension.html#cfn-applicationautoscaling-scalingpolicy-metricdimension-name
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-metricdimension.html#cfn-applicationautoscaling-scalingpolicy-metricdimension-value
type MetricDimension =
  { "Name" :: Value String
  , "Value" :: Value String
  }

metricDimension :: { "Name" :: Value String, "Value" :: Value String } -> MetricDimension
metricDimension required =
  required

-- | `AWS::ApplicationAutoScaling::ScalingPolicy.StepScalingPolicyConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html
-- |
-- | - `AdjustmentType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-adjustmenttype
-- | - `Cooldown`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-cooldown
-- | - `MetricAggregationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-metricaggregationtype
-- | - `MinAdjustmentMagnitude`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-minadjustmentmagnitude
-- | - `StepAdjustments`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustments
type StepScalingPolicyConfiguration =
  { "AdjustmentType" :: Maybe (Value String)
  , "Cooldown" :: Maybe (Value Int)
  , "MetricAggregationType" :: Maybe (Value String)
  , "MinAdjustmentMagnitude" :: Maybe (Value Int)
  , "StepAdjustments" :: Maybe (Value (Array StepAdjustment))
  }

stepScalingPolicyConfiguration :: StepScalingPolicyConfiguration
stepScalingPolicyConfiguration =
  { "AdjustmentType" : Nothing
  , "Cooldown" : Nothing
  , "MetricAggregationType" : Nothing
  , "MinAdjustmentMagnitude" : Nothing
  , "StepAdjustments" : Nothing
  }