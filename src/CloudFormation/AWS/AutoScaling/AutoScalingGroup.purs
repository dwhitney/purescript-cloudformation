module CloudFormation.AWS.AutoScaling.AutoScalingGroup where 

import Data.Maybe (Maybe(..))
import Record (merge)


type AutoScalingGroup =
  { "MaxSize" :: String
  , "MinSize" :: String
  , "AutoScalingGroupName" :: Maybe String
  , "AvailabilityZones" :: Maybe (Array String)
  , "Cooldown" :: Maybe String
  , "DesiredCapacity" :: Maybe String
  , "HealthCheckGracePeriod" :: Maybe Int
  , "HealthCheckType" :: Maybe String
  , "InstanceId" :: Maybe String
  , "LaunchConfigurationName" :: Maybe String
  , "LaunchTemplate" :: Maybe LaunchTemplateSpecification
  , "LifecycleHookSpecificationList" :: Maybe (Array LifecycleHookSpecification)
  , "LoadBalancerNames" :: Maybe (Array String)
  , "MetricsCollection" :: Maybe (Array MetricsCollection)
  , "MixedInstancesPolicy" :: Maybe MixedInstancesPolicy
  , "NotificationConfigurations" :: Maybe (Array NotificationConfiguration)
  , "PlacementGroup" :: Maybe String
  , "ServiceLinkedRoleARN" :: Maybe String
  , "Tags" :: Maybe (Array TagProperty)
  , "TargetGroupARNs" :: Maybe (Array String)
  , "TerminationPolicies" :: Maybe (Array String)
  , "VPCZoneIdentifier" :: Maybe (Array String)
  }

autoScalingGroup :: { "MaxSize" :: String, "MinSize" :: String } -> AutoScalingGroup
autoScalingGroup required =
  merge required
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
    }

type TagProperty =
  { "Key" :: String
  , "PropagateAtLaunch" :: Boolean
  , "Value" :: String
  }

tagProperty :: { "Key" :: String, "PropagateAtLaunch" :: Boolean, "Value" :: String } -> TagProperty
tagProperty required =
  required

type LaunchTemplate =
  { "LaunchTemplateSpecification" :: LaunchTemplateSpecification
  , "Overrides" :: Maybe (Array LaunchTemplateOverrides)
  }

launchTemplate :: { "LaunchTemplateSpecification" :: LaunchTemplateSpecification } -> LaunchTemplate
launchTemplate required =
  merge required
    { "Overrides" : Nothing
    }

type InstancesDistribution =
  { "OnDemandAllocationStrategy" :: Maybe String
  , "OnDemandBaseCapacity" :: Maybe Int
  , "OnDemandPercentageAboveBaseCapacity" :: Maybe Int
  , "SpotAllocationStrategy" :: Maybe String
  , "SpotInstancePools" :: Maybe Int
  , "SpotMaxPrice" :: Maybe String
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

type MetricsCollection =
  { "Granularity" :: String
  , "Metrics" :: Maybe (Array String)
  }

metricsCollection :: { "Granularity" :: String } -> MetricsCollection
metricsCollection required =
  merge required
    { "Metrics" : Nothing
    }

type NotificationConfiguration =
  { "TopicARN" :: String
  , "NotificationTypes" :: Maybe (Array String)
  }

notificationConfiguration :: { "TopicARN" :: String } -> NotificationConfiguration
notificationConfiguration required =
  merge required
    { "NotificationTypes" : Nothing
    }

type MixedInstancesPolicy =
  { "LaunchTemplate" :: LaunchTemplate
  , "InstancesDistribution" :: Maybe InstancesDistribution
  }

mixedInstancesPolicy :: { "LaunchTemplate" :: LaunchTemplate } -> MixedInstancesPolicy
mixedInstancesPolicy required =
  merge required
    { "InstancesDistribution" : Nothing
    }

type LaunchTemplateSpecification =
  { "Version" :: String
  , "LaunchTemplateId" :: Maybe String
  , "LaunchTemplateName" :: Maybe String
  }

launchTemplateSpecification :: { "Version" :: String } -> LaunchTemplateSpecification
launchTemplateSpecification required =
  merge required
    { "LaunchTemplateId" : Nothing
    , "LaunchTemplateName" : Nothing
    }

type LifecycleHookSpecification =
  { "LifecycleHookName" :: String
  , "LifecycleTransition" :: String
  , "DefaultResult" :: Maybe String
  , "HeartbeatTimeout" :: Maybe Int
  , "NotificationMetadata" :: Maybe String
  , "NotificationTargetARN" :: Maybe String
  , "RoleARN" :: Maybe String
  }

lifecycleHookSpecification :: { "LifecycleHookName" :: String, "LifecycleTransition" :: String } -> LifecycleHookSpecification
lifecycleHookSpecification required =
  merge required
    { "DefaultResult" : Nothing
    , "HeartbeatTimeout" : Nothing
    , "NotificationMetadata" : Nothing
    , "NotificationTargetARN" : Nothing
    , "RoleARN" : Nothing
    }

type LaunchTemplateOverrides =
  { "InstanceType" :: Maybe String
  }

launchTemplateOverrides :: LaunchTemplateOverrides
launchTemplateOverrides =
  { "InstanceType" : Nothing
  }