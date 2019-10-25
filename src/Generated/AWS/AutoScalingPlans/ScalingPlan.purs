module CloudFormation.AWS.AutoScalingPlans.ScalingPlan where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::AutoScalingPlans::ScalingPlan`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscalingplans-scalingplan.html
-- |
-- | - `ApplicationSource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscalingplans-scalingplan.html#cfn-autoscalingplans-scalingplan-applicationsource
-- | - `ScalingInstructions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscalingplans-scalingplan.html#cfn-autoscalingplans-scalingplan-scalinginstructions
newtype ScalingPlan = ScalingPlan
  { "ApplicationSource" :: Value ApplicationSource
  , "ScalingInstructions" :: Value (Array ScalingInstruction)
  }

derive instance newtypeScalingPlan :: Newtype ScalingPlan _
derive newtype instance writeScalingPlan :: WriteForeign ScalingPlan
instance resourceScalingPlan :: Resource ScalingPlan where type_ _ = "AWS::AutoScalingPlans::ScalingPlan"

scalingPlan :: { "ApplicationSource" :: Value ApplicationSource, "ScalingInstructions" :: Value (Array ScalingInstruction) } -> ScalingPlan
scalingPlan required = ScalingPlan
  required

-- | `AWS::AutoScalingPlans::ScalingPlan.PredefinedLoadMetricSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedloadmetricspecification.html
-- |
-- | - `PredefinedLoadMetricType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-predefinedloadmetricspecification-predefinedloadmetrictype
-- | - `ResourceLabel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-predefinedloadmetricspecification-resourcelabel
type PredefinedLoadMetricSpecification =
  { "PredefinedLoadMetricType" :: Value String
  , "ResourceLabel" :: Maybe (Value String)
  }

predefinedLoadMetricSpecification :: { "PredefinedLoadMetricType" :: Value String } -> PredefinedLoadMetricSpecification
predefinedLoadMetricSpecification required =
  (merge required
    { "ResourceLabel" : Nothing
    })

-- | `AWS::AutoScalingPlans::ScalingPlan.PredefinedScalingMetricSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedscalingmetricspecification.html
-- |
-- | - `ResourceLabel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-predefinedscalingmetricspecification-resourcelabel
-- | - `PredefinedScalingMetricType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-predefinedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-predefinedscalingmetricspecification-predefinedscalingmetrictype
type PredefinedScalingMetricSpecification =
  { "PredefinedScalingMetricType" :: Value String
  , "ResourceLabel" :: Maybe (Value String)
  }

predefinedScalingMetricSpecification :: { "PredefinedScalingMetricType" :: Value String } -> PredefinedScalingMetricSpecification
predefinedScalingMetricSpecification required =
  (merge required
    { "ResourceLabel" : Nothing
    })

-- | `AWS::AutoScalingPlans::ScalingPlan.MetricDimension`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-metricdimension.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-metricdimension.html#cfn-autoscalingplans-scalingplan-metricdimension-value
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-metricdimension.html#cfn-autoscalingplans-scalingplan-metricdimension-name
type MetricDimension =
  { "Value" :: Value String
  , "Name" :: Value String
  }

metricDimension :: { "Value" :: Value String, "Name" :: Value String } -> MetricDimension
metricDimension required =
  required

-- | `AWS::AutoScalingPlans::ScalingPlan.TargetTrackingConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html
-- |
-- | - `ScaleOutCooldown`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-scaleoutcooldown
-- | - `TargetValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-targetvalue
-- | - `PredefinedScalingMetricSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-predefinedscalingmetricspecification
-- | - `DisableScaleIn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-disablescalein
-- | - `ScaleInCooldown`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-scaleincooldown
-- | - `EstimatedInstanceWarmup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-estimatedinstancewarmup
-- | - `CustomizedScalingMetricSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-targettrackingconfiguration.html#cfn-autoscalingplans-scalingplan-targettrackingconfiguration-customizedscalingmetricspecification
type TargetTrackingConfiguration =
  { "TargetValue" :: Value Number
  , "ScaleOutCooldown" :: Maybe (Value Int)
  , "PredefinedScalingMetricSpecification" :: Maybe (Value PredefinedScalingMetricSpecification)
  , "DisableScaleIn" :: Maybe (Value Boolean)
  , "ScaleInCooldown" :: Maybe (Value Int)
  , "EstimatedInstanceWarmup" :: Maybe (Value Int)
  , "CustomizedScalingMetricSpecification" :: Maybe (Value CustomizedScalingMetricSpecification)
  }

targetTrackingConfiguration :: { "TargetValue" :: Value Number } -> TargetTrackingConfiguration
targetTrackingConfiguration required =
  (merge required
    { "ScaleOutCooldown" : Nothing
    , "PredefinedScalingMetricSpecification" : Nothing
    , "DisableScaleIn" : Nothing
    , "ScaleInCooldown" : Nothing
    , "EstimatedInstanceWarmup" : Nothing
    , "CustomizedScalingMetricSpecification" : Nothing
    })

-- | `AWS::AutoScalingPlans::ScalingPlan.ScalingInstruction`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html
-- |
-- | - `DisableDynamicScaling`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-disabledynamicscaling
-- | - `ServiceNamespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-servicenamespace
-- | - `PredictiveScalingMaxCapacityBehavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-predictivescalingmaxcapacitybehavior
-- | - `ScalableDimension`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-scalabledimension
-- | - `ScalingPolicyUpdateBehavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-scalingpolicyupdatebehavior
-- | - `MinCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-mincapacity
-- | - `TargetTrackingConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-targettrackingconfigurations
-- | - `PredictiveScalingMaxCapacityBuffer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-predictivescalingmaxcapacitybuffer
-- | - `CustomizedLoadMetricSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-customizedloadmetricspecification
-- | - `PredefinedLoadMetricSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-predefinedloadmetricspecification
-- | - `ResourceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-resourceid
-- | - `ScheduledActionBufferTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-scheduledactionbuffertime
-- | - `MaxCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-maxcapacity
-- | - `PredictiveScalingMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-scalinginstruction.html#cfn-autoscalingplans-scalingplan-scalinginstruction-predictivescalingmode
type ScalingInstruction =
  { "ServiceNamespace" :: Value String
  , "ScalableDimension" :: Value String
  , "MinCapacity" :: Value Int
  , "TargetTrackingConfigurations" :: Value (Array TargetTrackingConfiguration)
  , "ResourceId" :: Value String
  , "MaxCapacity" :: Value Int
  , "DisableDynamicScaling" :: Maybe (Value Boolean)
  , "PredictiveScalingMaxCapacityBehavior" :: Maybe (Value String)
  , "ScalingPolicyUpdateBehavior" :: Maybe (Value String)
  , "PredictiveScalingMaxCapacityBuffer" :: Maybe (Value Int)
  , "CustomizedLoadMetricSpecification" :: Maybe (Value CustomizedLoadMetricSpecification)
  , "PredefinedLoadMetricSpecification" :: Maybe (Value PredefinedLoadMetricSpecification)
  , "ScheduledActionBufferTime" :: Maybe (Value Int)
  , "PredictiveScalingMode" :: Maybe (Value String)
  }

scalingInstruction :: { "ServiceNamespace" :: Value String, "ScalableDimension" :: Value String, "MinCapacity" :: Value Int, "TargetTrackingConfigurations" :: Value (Array TargetTrackingConfiguration), "ResourceId" :: Value String, "MaxCapacity" :: Value Int } -> ScalingInstruction
scalingInstruction required =
  (merge required
    { "DisableDynamicScaling" : Nothing
    , "PredictiveScalingMaxCapacityBehavior" : Nothing
    , "ScalingPolicyUpdateBehavior" : Nothing
    , "PredictiveScalingMaxCapacityBuffer" : Nothing
    , "CustomizedLoadMetricSpecification" : Nothing
    , "PredefinedLoadMetricSpecification" : Nothing
    , "ScheduledActionBufferTime" : Nothing
    , "PredictiveScalingMode" : Nothing
    })

-- | `AWS::AutoScalingPlans::ScalingPlan.ApplicationSource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-applicationsource.html
-- |
-- | - `CloudFormationStackARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-applicationsource.html#cfn-autoscalingplans-scalingplan-applicationsource-cloudformationstackarn
-- | - `TagFilters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-applicationsource.html#cfn-autoscalingplans-scalingplan-applicationsource-tagfilters
type ApplicationSource =
  { "CloudFormationStackARN" :: Maybe (Value String)
  , "TagFilters" :: Maybe (Value (Array TagFilter))
  }

applicationSource :: ApplicationSource
applicationSource =
  { "CloudFormationStackARN" : Nothing
  , "TagFilters" : Nothing
  }

-- | `AWS::AutoScalingPlans::ScalingPlan.CustomizedLoadMetricSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html
-- |
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-metricname
-- | - `Statistic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-statistic
-- | - `Dimensions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-dimensions
-- | - `Unit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-unit
-- | - `Namespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedloadmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedloadmetricspecification-namespace
type CustomizedLoadMetricSpecification =
  { "MetricName" :: Value String
  , "Statistic" :: Value String
  , "Namespace" :: Value String
  , "Dimensions" :: Maybe (Value (Array MetricDimension))
  , "Unit" :: Maybe (Value String)
  }

customizedLoadMetricSpecification :: { "MetricName" :: Value String, "Statistic" :: Value String, "Namespace" :: Value String } -> CustomizedLoadMetricSpecification
customizedLoadMetricSpecification required =
  (merge required
    { "Dimensions" : Nothing
    , "Unit" : Nothing
    })

-- | `AWS::AutoScalingPlans::ScalingPlan.TagFilter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-tagfilter.html
-- |
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-tagfilter.html#cfn-autoscalingplans-scalingplan-tagfilter-values
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-tagfilter.html#cfn-autoscalingplans-scalingplan-tagfilter-key
type TagFilter =
  { "Key" :: Value String
  , "Values" :: Maybe (Value (Array String))
  }

tagFilter :: { "Key" :: Value String } -> TagFilter
tagFilter required =
  (merge required
    { "Values" : Nothing
    })

-- | `AWS::AutoScalingPlans::ScalingPlan.CustomizedScalingMetricSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html
-- |
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-metricname
-- | - `Statistic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-statistic
-- | - `Dimensions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-dimensions
-- | - `Unit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-unit
-- | - `Namespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscalingplans-scalingplan-customizedscalingmetricspecification.html#cfn-autoscalingplans-scalingplan-customizedscalingmetricspecification-namespace
type CustomizedScalingMetricSpecification =
  { "MetricName" :: Value String
  , "Statistic" :: Value String
  , "Namespace" :: Value String
  , "Dimensions" :: Maybe (Value (Array MetricDimension))
  , "Unit" :: Maybe (Value String)
  }

customizedScalingMetricSpecification :: { "MetricName" :: Value String, "Statistic" :: Value String, "Namespace" :: Value String } -> CustomizedScalingMetricSpecification
customizedScalingMetricSpecification required =
  (merge required
    { "Dimensions" : Nothing
    , "Unit" : Nothing
    })