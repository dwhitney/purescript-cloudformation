module CloudFormation.AWS.EC2.SpotFleet where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Tag (Tag)


type SpotFleet =
  { "SpotFleetRequestConfigData" :: SpotFleetRequestConfigData
  }

spotFleet :: { "SpotFleetRequestConfigData" :: SpotFleetRequestConfigData } -> SpotFleet
spotFleet required =
  required

type BlockDeviceMapping =
  { "DeviceName" :: String
  , "Ebs" :: Maybe EbsBlockDevice
  , "NoDevice" :: Maybe String
  , "VirtualName" :: Maybe String
  }

blockDeviceMapping :: { "DeviceName" :: String } -> BlockDeviceMapping
blockDeviceMapping required =
  merge required
    { "Ebs" : Nothing
    , "NoDevice" : Nothing
    , "VirtualName" : Nothing
    }

type GroupIdentifier =
  { "GroupId" :: String
  }

groupIdentifier :: { "GroupId" :: String } -> GroupIdentifier
groupIdentifier required =
  required

type TargetGroupsConfig =
  { "TargetGroups" :: Array TargetGroup
  }

targetGroupsConfig :: { "TargetGroups" :: Array TargetGroup } -> TargetGroupsConfig
targetGroupsConfig required =
  required

type InstanceIpv6Address =
  { "Ipv6Address" :: String
  }

instanceIpv6Address :: { "Ipv6Address" :: String } -> InstanceIpv6Address
instanceIpv6Address required =
  required

type SpotFleetRequestConfigData =
  { "IamFleetRole" :: String
  , "TargetCapacity" :: Int
  , "AllocationStrategy" :: Maybe String
  , "ExcessCapacityTerminationPolicy" :: Maybe String
  , "InstanceInterruptionBehavior" :: Maybe String
  , "LaunchSpecifications" :: Maybe (Array SpotFleetLaunchSpecification)
  , "LaunchTemplateConfigs" :: Maybe (Array LaunchTemplateConfig)
  , "LoadBalancersConfig" :: Maybe LoadBalancersConfig
  , "ReplaceUnhealthyInstances" :: Maybe Boolean
  , "SpotPrice" :: Maybe String
  , "TerminateInstancesWithExpiration" :: Maybe Boolean
  , "Type" :: Maybe String
  , "ValidFrom" :: Maybe String
  , "ValidUntil" :: Maybe String
  }

spotFleetRequestConfigData :: { "IamFleetRole" :: String, "TargetCapacity" :: Int } -> SpotFleetRequestConfigData
spotFleetRequestConfigData required =
  merge required
    { "AllocationStrategy" : Nothing
    , "ExcessCapacityTerminationPolicy" : Nothing
    , "InstanceInterruptionBehavior" : Nothing
    , "LaunchSpecifications" : Nothing
    , "LaunchTemplateConfigs" : Nothing
    , "LoadBalancersConfig" : Nothing
    , "ReplaceUnhealthyInstances" : Nothing
    , "SpotPrice" : Nothing
    , "TerminateInstancesWithExpiration" : Nothing
    , "Type" : Nothing
    , "ValidFrom" : Nothing
    , "ValidUntil" : Nothing
    }

type ClassicLoadBalancersConfig =
  { "ClassicLoadBalancers" :: Array ClassicLoadBalancer
  }

classicLoadBalancersConfig :: { "ClassicLoadBalancers" :: Array ClassicLoadBalancer } -> ClassicLoadBalancersConfig
classicLoadBalancersConfig required =
  required

type SpotFleetLaunchSpecification =
  { "ImageId" :: String
  , "InstanceType" :: String
  , "BlockDeviceMappings" :: Maybe (Array BlockDeviceMapping)
  , "EbsOptimized" :: Maybe Boolean
  , "IamInstanceProfile" :: Maybe IamInstanceProfileSpecification
  , "KernelId" :: Maybe String
  , "KeyName" :: Maybe String
  , "Monitoring" :: Maybe SpotFleetMonitoring
  , "NetworkInterfaces" :: Maybe (Array InstanceNetworkInterfaceSpecification)
  , "Placement" :: Maybe SpotPlacement
  , "RamdiskId" :: Maybe String
  , "SecurityGroups" :: Maybe (Array GroupIdentifier)
  , "SpotPrice" :: Maybe String
  , "SubnetId" :: Maybe String
  , "TagSpecifications" :: Maybe (Array SpotFleetTagSpecification)
  , "UserData" :: Maybe String
  , "WeightedCapacity" :: Maybe Number
  }

spotFleetLaunchSpecification :: { "ImageId" :: String, "InstanceType" :: String } -> SpotFleetLaunchSpecification
spotFleetLaunchSpecification required =
  merge required
    { "BlockDeviceMappings" : Nothing
    , "EbsOptimized" : Nothing
    , "IamInstanceProfile" : Nothing
    , "KernelId" : Nothing
    , "KeyName" : Nothing
    , "Monitoring" : Nothing
    , "NetworkInterfaces" : Nothing
    , "Placement" : Nothing
    , "RamdiskId" : Nothing
    , "SecurityGroups" : Nothing
    , "SpotPrice" : Nothing
    , "SubnetId" : Nothing
    , "TagSpecifications" : Nothing
    , "UserData" : Nothing
    , "WeightedCapacity" : Nothing
    }

type InstanceNetworkInterfaceSpecification =
  { "AssociatePublicIpAddress" :: Maybe Boolean
  , "DeleteOnTermination" :: Maybe Boolean
  , "Description" :: Maybe String
  , "DeviceIndex" :: Maybe Int
  , "Groups" :: Maybe (Array String)
  , "Ipv6AddressCount" :: Maybe Int
  , "Ipv6Addresses" :: Maybe (Array InstanceIpv6Address)
  , "NetworkInterfaceId" :: Maybe String
  , "PrivateIpAddresses" :: Maybe (Array PrivateIpAddressSpecification)
  , "SecondaryPrivateIpAddressCount" :: Maybe Int
  , "SubnetId" :: Maybe String
  }

instanceNetworkInterfaceSpecification :: InstanceNetworkInterfaceSpecification
instanceNetworkInterfaceSpecification =
  { "AssociatePublicIpAddress" : Nothing
  , "DeleteOnTermination" : Nothing
  , "Description" : Nothing
  , "DeviceIndex" : Nothing
  , "Groups" : Nothing
  , "Ipv6AddressCount" : Nothing
  , "Ipv6Addresses" : Nothing
  , "NetworkInterfaceId" : Nothing
  , "PrivateIpAddresses" : Nothing
  , "SecondaryPrivateIpAddressCount" : Nothing
  , "SubnetId" : Nothing
  }

type IamInstanceProfileSpecification =
  { "Arn" :: Maybe String
  }

iamInstanceProfileSpecification :: IamInstanceProfileSpecification
iamInstanceProfileSpecification =
  { "Arn" : Nothing
  }

type LaunchTemplateConfig =
  { "LaunchTemplateSpecification" :: Maybe FleetLaunchTemplateSpecification
  , "Overrides" :: Maybe (Array LaunchTemplateOverrides)
  }

launchTemplateConfig :: LaunchTemplateConfig
launchTemplateConfig =
  { "LaunchTemplateSpecification" : Nothing
  , "Overrides" : Nothing
  }

type ClassicLoadBalancer =
  { "Name" :: String
  }

classicLoadBalancer :: { "Name" :: String } -> ClassicLoadBalancer
classicLoadBalancer required =
  required

type SpotFleetMonitoring =
  { "Enabled" :: Maybe Boolean
  }

spotFleetMonitoring :: SpotFleetMonitoring
spotFleetMonitoring =
  { "Enabled" : Nothing
  }

type LaunchTemplateOverrides =
  { "AvailabilityZone" :: Maybe String
  , "InstanceType" :: Maybe String
  , "SpotPrice" :: Maybe String
  , "SubnetId" :: Maybe String
  , "WeightedCapacity" :: Maybe Number
  }

launchTemplateOverrides :: LaunchTemplateOverrides
launchTemplateOverrides =
  { "AvailabilityZone" : Nothing
  , "InstanceType" : Nothing
  , "SpotPrice" : Nothing
  , "SubnetId" : Nothing
  , "WeightedCapacity" : Nothing
  }

type TargetGroup =
  { "Arn" :: String
  }

targetGroup :: { "Arn" :: String } -> TargetGroup
targetGroup required =
  required

type FleetLaunchTemplateSpecification =
  { "Version" :: String
  , "LaunchTemplateId" :: Maybe String
  , "LaunchTemplateName" :: Maybe String
  }

fleetLaunchTemplateSpecification :: { "Version" :: String } -> FleetLaunchTemplateSpecification
fleetLaunchTemplateSpecification required =
  merge required
    { "LaunchTemplateId" : Nothing
    , "LaunchTemplateName" : Nothing
    }

type LoadBalancersConfig =
  { "ClassicLoadBalancersConfig" :: Maybe ClassicLoadBalancersConfig
  , "TargetGroupsConfig" :: Maybe TargetGroupsConfig
  }

loadBalancersConfig :: LoadBalancersConfig
loadBalancersConfig =
  { "ClassicLoadBalancersConfig" : Nothing
  , "TargetGroupsConfig" : Nothing
  }

type EbsBlockDevice =
  { "DeleteOnTermination" :: Maybe Boolean
  , "Encrypted" :: Maybe Boolean
  , "Iops" :: Maybe Int
  , "SnapshotId" :: Maybe String
  , "VolumeSize" :: Maybe Int
  , "VolumeType" :: Maybe String
  }

ebsBlockDevice :: EbsBlockDevice
ebsBlockDevice =
  { "DeleteOnTermination" : Nothing
  , "Encrypted" : Nothing
  , "Iops" : Nothing
  , "SnapshotId" : Nothing
  , "VolumeSize" : Nothing
  , "VolumeType" : Nothing
  }

type SpotPlacement =
  { "AvailabilityZone" :: Maybe String
  , "GroupName" :: Maybe String
  , "Tenancy" :: Maybe String
  }

spotPlacement :: SpotPlacement
spotPlacement =
  { "AvailabilityZone" : Nothing
  , "GroupName" : Nothing
  , "Tenancy" : Nothing
  }

type PrivateIpAddressSpecification =
  { "PrivateIpAddress" :: String
  , "Primary" :: Maybe Boolean
  }

privateIpAddressSpecification :: { "PrivateIpAddress" :: String } -> PrivateIpAddressSpecification
privateIpAddressSpecification required =
  merge required
    { "Primary" : Nothing
    }

type SpotFleetTagSpecification =
  { "ResourceType" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

spotFleetTagSpecification :: SpotFleetTagSpecification
spotFleetTagSpecification =
  { "ResourceType" : Nothing
  , "Tags" : Nothing
  }