module CloudFormation.AWS.ApplicationAutoScaling.ScalingPolicy where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "PolicyName" :: String
  , "PolicyType" :: String
  , "ResourceId" :: Maybe String
  , "ScalableDimension" :: Maybe String
  , "ScalingTargetId" :: Maybe String
  , "ServiceNamespace" :: Maybe String
  , "StepScalingPolicyConfiguration" :: Maybe StepScalingPolicyConfiguration
  , "TargetTrackingScalingPolicyConfiguration" :: Maybe TargetTrackingScalingPolicyConfiguration
  }

derive instance newtypeScalingPolicy :: Newtype ScalingPolicy _
instance resourceScalingPolicy :: Resource ScalingPolicy where type_ _ = "AWS::ApplicationAutoScaling::ScalingPolicy"

scalingPolicy :: { "PolicyName" :: String, "PolicyType" :: String } -> ScalingPolicy
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
  { "TargetValue" :: Number
  , "CustomizedMetricSpecification" :: Maybe CustomizedMetricSpecification
  , "DisableScaleIn" :: Maybe Boolean
  , "PredefinedMetricSpecification" :: Maybe PredefinedMetricSpecification
  , "ScaleInCooldown" :: Maybe Int
  , "ScaleOutCooldown" :: Maybe Int
  }

targetTrackingScalingPolicyConfiguration :: { "TargetValue" :: Number } -> TargetTrackingScalingPolicyConfiguration
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

-- | `AWS::ApplicationAutoScaling::ScalingPolicy.PredefinedMetricSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html
-- |
-- | - `PredefinedMetricType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-predefinedmetricspecification-predefinedmetrictype
-- | - `ResourceLabel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predefinedmetricspecification.html#cfn-applicationautoscaling-scalingpolicy-predefinedmetricspecification-resourcelabel
type PredefinedMetricSpecification =
  { "PredefinedMetricType" :: String
  , "ResourceLabel" :: Maybe String
  }

predefinedMetricSpecification :: { "PredefinedMetricType" :: String } -> PredefinedMetricSpecification
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
  { "Name" :: String
  , "Value" :: String
  }

metricDimension :: { "Name" :: String, "Value" :: String } -> MetricDimension
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