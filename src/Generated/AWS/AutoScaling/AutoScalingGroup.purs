module CloudFormation.AWS.AutoScaling.AutoScalingGroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::AutoScaling::AutoScalingGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html
-- |
-- | - `AutoScalingGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-autoscaling-autoscalinggroup-autoscalinggroupname
-- | - `AvailabilityZones`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-availabilityzones
-- | - `Cooldown`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-cooldown
-- | - `DesiredCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-desiredcapacity
-- | - `HealthCheckGracePeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-healthcheckgraceperiod
-- | - `HealthCheckType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-healthchecktype
-- | - `InstanceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-instanceid
-- | - `LaunchConfigurationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-launchconfigurationname
-- | - `LaunchTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-launchtemplate
-- | - `LifecycleHookSpecificationList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecificationlist
-- | - `LoadBalancerNames`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-loadbalancernames
-- | - `MaxSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-maxsize
-- | - `MetricsCollection`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-metricscollection
-- | - `MinSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-minsize
-- | - `MixedInstancesPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-mixedinstancespolicy
-- | - `NotificationConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-notificationconfigurations
-- | - `PlacementGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-placementgroup
-- | - `ServiceLinkedRoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-autoscaling-autoscalinggroup-servicelinkedrolearn
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-tags
-- | - `TargetGroupARNs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-targetgrouparns
-- | - `TerminationPolicies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-termpolicy
-- | - `VPCZoneIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html#cfn-as-group-vpczoneidentifier
newtype AutoScalingGroup = AutoScalingGroup
  { "MaxSize" :: Value String
  , "MinSize" :: Value String
  , "AutoScalingGroupName" :: Maybe (Value String)
  , "AvailabilityZones" :: Maybe (Value (Array String))
  , "Cooldown" :: Maybe (Value String)
  , "DesiredCapacity" :: Maybe (Value String)
  , "HealthCheckGracePeriod" :: Maybe (Value Int)
  , "HealthCheckType" :: Maybe (Value String)
  , "InstanceId" :: Maybe (Value String)
  , "LaunchConfigurationName" :: Maybe (Value String)
  , "LaunchTemplate" :: Maybe (Value LaunchTemplateSpecification)
  , "LifecycleHookSpecificationList" :: Maybe (Value (Array LifecycleHookSpecification))
  , "LoadBalancerNames" :: Maybe (Value (Array String))
  , "MetricsCollection" :: Maybe (Value (Array MetricsCollection))
  , "MixedInstancesPolicy" :: Maybe (Value MixedInstancesPolicy)
  , "NotificationConfigurations" :: Maybe (Value (Array NotificationConfiguration))
  , "PlacementGroup" :: Maybe (Value String)
  , "ServiceLinkedRoleARN" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array TagProperty))
  , "TargetGroupARNs" :: Maybe (Value (Array String))
  , "TerminationPolicies" :: Maybe (Value (Array String))
  , "VPCZoneIdentifier" :: Maybe (Value (Array String))
  }

derive instance newtypeAutoScalingGroup :: Newtype AutoScalingGroup _
derive newtype instance writeAutoScalingGroup :: WriteForeign AutoScalingGroup
instance resourceAutoScalingGroup :: Resource AutoScalingGroup where type_ _ = "AWS::AutoScaling::AutoScalingGroup"

autoScalingGroup :: { "MaxSize" :: Value String, "MinSize" :: Value String } -> AutoScalingGroup
autoScalingGroup required = AutoScalingGroup
  (merge required
    { "AutoScalingGroupName" : Nothing
    , "AvailabilityZones" : Nothing
    , "Cooldown" : Nothing
    , "DesiredCapacity" : Nothing
    , "HealthCheckGracePeriod" : Nothing
    , "HealthCheckType" : Nothing
    , "InstanceId" : Nothing
    , "LaunchConfigurationName" : Nothing
    , "LaunchTemplate" : Nothing
    , "LifecycleHookSpecificationList" : Nothing
    , "LoadBalancerNames" : Nothing
    , "MetricsCollection" : Nothing
    , "MixedInstancesPolicy" : Nothing
    , "NotificationConfigurations" : Nothing
    , "PlacementGroup" : Nothing
    , "ServiceLinkedRoleARN" : Nothing
    , "Tags" : Nothing
    , "TargetGroupARNs" : Nothing
    , "TerminationPolicies" : Nothing
    , "VPCZoneIdentifier" : Nothing
    })

-- | `AWS::AutoScaling::AutoScalingGroup.TagProperty`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html#cfn-as-tags-Key
-- | - `PropagateAtLaunch`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html#cfn-as-tags-PropagateAtLaunch
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-tags.html#cfn-as-tags-Value
type TagProperty =
  { "Key" :: Value String
  , "PropagateAtLaunch" :: Value Boolean
  , "Value" :: Value String
  }

tagProperty :: { "Key" :: Value String, "PropagateAtLaunch" :: Value Boolean, "Value" :: Value String } -> TagProperty
tagProperty required =
  required

-- | `AWS::AutoScaling::AutoScalingGroup.LaunchTemplate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-launchtemplate.html
-- |
-- | - `LaunchTemplateSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-launchtemplate.html#cfn-as-group-launchtemplate
-- | - `Overrides`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-launchtemplate.html#cfn-as-mixedinstancespolicy-overrides
type LaunchTemplate =
  { "LaunchTemplateSpecification" :: Value LaunchTemplateSpecification
  , "Overrides" :: Maybe (Value (Array LaunchTemplateOverrides))
  }

launchTemplate :: { "LaunchTemplateSpecification" :: Value LaunchTemplateSpecification } -> LaunchTemplate
launchTemplate required =
  (merge required
    { "Overrides" : Nothing
    })

-- | `AWS::AutoScaling::AutoScalingGroup.InstancesDistribution`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-instancesdistribution.html
-- |
-- | - `OnDemandAllocationStrategy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-instancesdistribution.html#cfn-autoscaling-autoscalinggroup-instancesdistribution-ondemandallocationstrategy
-- | - `OnDemandBaseCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-instancesdistribution.html#cfn-autoscaling-autoscalinggroup-instancesdistribution-ondemandbasecapacity
-- | - `OnDemandPercentageAboveBaseCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-instancesdistribution.html#cfn-autoscaling-autoscalinggroup-instancesdistribution-ondemandpercentageabovebasecapacity
-- | - `SpotAllocationStrategy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-instancesdistribution.html#cfn-autoscaling-autoscalinggroup-instancesdistribution-spotallocationstrategy
-- | - `SpotInstancePools`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-instancesdistribution.html#cfn-autoscaling-autoscalinggroup-instancesdistribution-spotinstancepools
-- | - `SpotMaxPrice`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-instancesdistribution.html#cfn-autoscaling-autoscalinggroup-instancesdistribution-spotmaxprice
type InstancesDistribution =
  { "OnDemandAllocationStrategy" :: Maybe (Value String)
  , "OnDemandBaseCapacity" :: Maybe (Value Int)
  , "OnDemandPercentageAboveBaseCapacity" :: Maybe (Value Int)
  , "SpotAllocationStrategy" :: Maybe (Value String)
  , "SpotInstancePools" :: Maybe (Value Int)
  , "SpotMaxPrice" :: Maybe (Value String)
  }

instancesDistribution :: InstancesDistribution
instancesDistribution =
  { "OnDemandAllocationStrategy" : Nothing
  , "OnDemandBaseCapacity" : Nothing
  , "OnDemandPercentageAboveBaseCapacity" : Nothing
  , "SpotAllocationStrategy" : Nothing
  , "SpotInstancePools" : Nothing
  , "SpotMaxPrice" : Nothing
  }

-- | `AWS::AutoScaling::AutoScalingGroup.MetricsCollection`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html
-- |
-- | - `Granularity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html#cfn-as-metricscollection-granularity
-- | - `Metrics`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-metricscollection.html#cfn-as-metricscollection-metrics
type MetricsCollection =
  { "Granularity" :: Value String
  , "Metrics" :: Maybe (Value (Array String))
  }

metricsCollection :: { "Granularity" :: Value String } -> MetricsCollection
metricsCollection required =
  (merge required
    { "Metrics" : Nothing
    })

-- | `AWS::AutoScaling::AutoScalingGroup.NotificationConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html
-- |
-- | - `NotificationTypes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html#cfn-as-group-notificationconfigurations-notificationtypes
-- | - `TopicARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-notificationconfigurations.html#cfn-autoscaling-autoscalinggroup-notificationconfigurations-topicarn
type NotificationConfiguration =
  { "TopicARN" :: Value String
  , "NotificationTypes" :: Maybe (Value (Array String))
  }

notificationConfiguration :: { "TopicARN" :: Value String } -> NotificationConfiguration
notificationConfiguration required =
  (merge required
    { "NotificationTypes" : Nothing
    })

-- | `AWS::AutoScaling::AutoScalingGroup.MixedInstancesPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-group-mixedinstancespolicy.html
-- |
-- | - `InstancesDistribution`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-group-mixedinstancespolicy.html#cfn-as-mixedinstancespolicy-instancesdistribution
-- | - `LaunchTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-group-mixedinstancespolicy.html#cfn-as-mixedinstancespolicy-launchtemplate
type MixedInstancesPolicy =
  { "LaunchTemplate" :: Value LaunchTemplate
  , "InstancesDistribution" :: Maybe (Value InstancesDistribution)
  }

mixedInstancesPolicy :: { "LaunchTemplate" :: Value LaunchTemplate } -> MixedInstancesPolicy
mixedInstancesPolicy required =
  (merge required
    { "InstancesDistribution" : Nothing
    })

-- | `AWS::AutoScaling::AutoScalingGroup.LaunchTemplateSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplatespecification.html
-- |
-- | - `LaunchTemplateId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplatespecification.html#cfn-autoscaling-autoscalinggroup-launchtemplatespecification-launchtemplateid
-- | - `LaunchTemplateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplatespecification.html#cfn-autoscaling-autoscalinggroup-launchtemplatespecification-launchtemplatename
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-launchtemplatespecification.html#cfn-autoscaling-autoscalinggroup-launchtemplatespecification-version
type LaunchTemplateSpecification =
  { "Version" :: Value String
  , "LaunchTemplateId" :: Maybe (Value String)
  , "LaunchTemplateName" :: Maybe (Value String)
  }

launchTemplateSpecification :: { "Version" :: Value String } -> LaunchTemplateSpecification
launchTemplateSpecification required =
  (merge required
    { "LaunchTemplateId" : Nothing
    , "LaunchTemplateName" : Nothing
    })

-- | `AWS::AutoScaling::AutoScalingGroup.LifecycleHookSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html
-- |
-- | - `DefaultResult`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-defaultresult
-- | - `HeartbeatTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-heartbeattimeout
-- | - `LifecycleHookName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-lifecyclehookname
-- | - `LifecycleTransition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-lifecycletransition
-- | - `NotificationMetadata`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-notificationmetadata
-- | - `NotificationTargetARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-notificationtargetarn
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-lifecyclehookspecification.html#cfn-autoscaling-autoscalinggroup-lifecyclehookspecification-rolearn
type LifecycleHookSpecification =
  { "LifecycleHookName" :: Value String
  , "LifecycleTransition" :: Value String
  , "DefaultResult" :: Maybe (Value String)
  , "HeartbeatTimeout" :: Maybe (Value Int)
  , "NotificationMetadata" :: Maybe (Value String)
  , "NotificationTargetARN" :: Maybe (Value String)
  , "RoleARN" :: Maybe (Value String)
  }

lifecycleHookSpecification :: { "LifecycleHookName" :: Value String, "LifecycleTransition" :: Value String } -> LifecycleHookSpecification
lifecycleHookSpecification required =
  (merge required
    { "DefaultResult" : Nothing
    , "HeartbeatTimeout" : Nothing
    , "NotificationMetadata" : Nothing
    , "NotificationTargetARN" : Nothing
    , "RoleARN" : Nothing
    })

-- | `AWS::AutoScaling::AutoScalingGroup.LaunchTemplateOverrides`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-launchtemplateoverrides.html
-- |
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-as-mixedinstancespolicy-launchtemplateoverrides.html#cfn-autoscaling-autoscalinggroup-launchtemplateoverrides-instancetype
type LaunchTemplateOverrides =
  { "InstanceType" :: Maybe (Value String)
  }

launchTemplateOverrides :: LaunchTemplateOverrides
launchTemplateOverrides =
  { "InstanceType" : Nothing
  }