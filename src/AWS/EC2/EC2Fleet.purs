module AWS.EC2.EC2Fleet where 

import Data.Maybe (Maybe(..))
import Record (merge)


type EC2Fleet =
  { "TargetCapacitySpecification" :: TargetCapacitySpecificationRequest
  , "LaunchTemplateConfigs" :: Array FleetLaunchTemplateConfigRequest
  , "OnDemandOptions" :: Maybe OnDemandOptionsRequest
  , "Type" :: Maybe String
  , "ExcessCapacityTerminationPolicy" :: Maybe String
  , "TagSpecifications" :: Maybe (Array TagSpecification)
  , "SpotOptions" :: Maybe SpotOptionsRequest
  , "ValidFrom" :: Maybe String
  , "ReplaceUnhealthyInstances" :: Maybe Boolean
  , "TerminateInstancesWithExpiration" :: Maybe Boolean
  , "ValidUntil" :: Maybe String
  }

ecC2Fleet :: { "TargetCapacitySpecification" :: TargetCapacitySpecificationRequest, "LaunchTemplateConfigs" :: Array FleetLaunchTemplateConfigRequest } -> EC2Fleet
ecC2Fleet required =
  merge required
    { "OnDemandOptions" : Nothing
    , "Type" : Nothing
    , "ExcessCapacityTerminationPolicy" : Nothing
    , "TagSpecifications" : Nothing
    , "SpotOptions" : Nothing
    , "ValidFrom" : Nothing
    , "ReplaceUnhealthyInstances" : Nothing
    , "TerminateInstancesWithExpiration" : Nothing
    , "ValidUntil" : Nothing
    }

type SpotOptionsRequest =
  { "AllocationStrategy" :: Maybe String
  , "InstanceInterruptionBehavior" :: Maybe String
  , "InstancePoolsToUseCount" :: Maybe Int
  }

spotOptionsRequest :: SpotOptionsRequest
spotOptionsRequest =
  { "AllocationStrategy" : Nothing
  , "InstanceInterruptionBehavior" : Nothing
  , "InstancePoolsToUseCount" : Nothing
  }

type TagSpecification =
  { "ResourceType" :: Maybe String
  , "Tags" :: Maybe (Array TagRequest)
  }

tagSpecification :: TagSpecification
tagSpecification =
  { "ResourceType" : Nothing
  , "Tags" : Nothing
  }

type FleetLaunchTemplateConfigRequest =
  { "LaunchTemplateSpecification" :: Maybe FleetLaunchTemplateSpecificationRequest
  , "Overrides" :: Maybe (Array FleetLaunchTemplateOverridesRequest)
  }

fleetLaunchTemplateConfigRequest :: FleetLaunchTemplateConfigRequest
fleetLaunchTemplateConfigRequest =
  { "LaunchTemplateSpecification" : Nothing
  , "Overrides" : Nothing
  }

type FleetLaunchTemplateOverridesRequest =
  { "WeightedCapacity" :: Maybe Number
  , "Priority" :: Maybe Number
  , "AvailabilityZone" :: Maybe String
  , "SubnetId" :: Maybe String
  , "InstanceType" :: Maybe String
  , "MaxPrice" :: Maybe String
  }

fleetLaunchTemplateOverridesRequest :: FleetLaunchTemplateOverridesRequest
fleetLaunchTemplateOverridesRequest =
  { "WeightedCapacity" : Nothing
  , "Priority" : Nothing
  , "AvailabilityZone" : Nothing
  , "SubnetId" : Nothing
  , "InstanceType" : Nothing
  , "MaxPrice" : Nothing
  }

type TargetCapacitySpecificationRequest =
  { "TotalTargetCapacity" :: Int
  , "DefaultTargetCapacityType" :: Maybe String
  , "OnDemandTargetCapacity" :: Maybe Int
  , "SpotTargetCapacity" :: Maybe Int
  }

targetCapacitySpecificationRequest :: { "TotalTargetCapacity" :: Int } -> TargetCapacitySpecificationRequest
targetCapacitySpecificationRequest required =
  merge required
    { "DefaultTargetCapacityType" : Nothing
    , "OnDemandTargetCapacity" : Nothing
    , "SpotTargetCapacity" : Nothing
    }

type TagRequest =
  { "Value" :: Maybe String
  , "Key" :: Maybe String
  }

tagRequest :: TagRequest
tagRequest =
  { "Value" : Nothing
  , "Key" : Nothing
  }

type OnDemandOptionsRequest =
  { "AllocationStrategy" :: Maybe String
  }

onDemandOptionsRequest :: OnDemandOptionsRequest
onDemandOptionsRequest =
  { "AllocationStrategy" : Nothing
  }

type FleetLaunchTemplateSpecificationRequest =
  { "LaunchTemplateName" :: Maybe String
  , "Version" :: Maybe String
  , "LaunchTemplateId" :: Maybe String
  }

fleetLaunchTemplateSpecificationRequest :: FleetLaunchTemplateSpecificationRequest
fleetLaunchTemplateSpecificationRequest =
  { "LaunchTemplateName" : Nothing
  , "Version" : Nothing
  , "LaunchTemplateId" : Nothing
  }