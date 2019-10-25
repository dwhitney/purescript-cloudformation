module CloudFormation.AWS.EC2.SpotFleet where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Tag (Tag)


-- | `AWS::EC2::SpotFleet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-spotfleet.html
-- |
-- | - `SpotFleetRequestConfigData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-spotfleet.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata
newtype SpotFleet = SpotFleet
  { "SpotFleetRequestConfigData" :: Value SpotFleetRequestConfigData
  }

derive instance newtypeSpotFleet :: Newtype SpotFleet _
derive newtype instance writeSpotFleet :: WriteForeign SpotFleet
instance resourceSpotFleet :: Resource SpotFleet where type_ _ = "AWS::EC2::SpotFleet"

spotFleet :: { "SpotFleetRequestConfigData" :: Value SpotFleetRequestConfigData } -> SpotFleet
spotFleet required = SpotFleet
  required

-- | `AWS::EC2::SpotFleet.BlockDeviceMapping`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html
-- |
-- | - `DeviceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html#cfn-ec2-spotfleet-blockdevicemapping-devicename
-- | - `Ebs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html#cfn-ec2-spotfleet-blockdevicemapping-ebs
-- | - `NoDevice`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html#cfn-ec2-spotfleet-blockdevicemapping-nodevice
-- | - `VirtualName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings.html#cfn-ec2-spotfleet-blockdevicemapping-virtualname
type BlockDeviceMapping =
  { "DeviceName" :: Value String
  , "Ebs" :: Maybe (Value EbsBlockDevice)
  , "NoDevice" :: Maybe (Value String)
  , "VirtualName" :: Maybe (Value String)
  }

blockDeviceMapping :: { "DeviceName" :: Value String } -> BlockDeviceMapping
blockDeviceMapping required =
  (merge required
    { "Ebs" : Nothing
    , "NoDevice" : Nothing
    , "VirtualName" : Nothing
    })

-- | `AWS::EC2::SpotFleet.GroupIdentifier`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-securitygroups.html
-- |
-- | - `GroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-securitygroups.html#cfn-ec2-spotfleet-groupidentifier-groupid
type GroupIdentifier =
  { "GroupId" :: Value String
  }

groupIdentifier :: { "GroupId" :: Value String } -> GroupIdentifier
groupIdentifier required =
  required

-- | `AWS::EC2::SpotFleet.TargetGroupsConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-targetgroupsconfig.html
-- |
-- | - `TargetGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-targetgroupsconfig.html#cfn-ec2-spotfleet-targetgroupsconfig-targetgroups
type TargetGroupsConfig =
  { "TargetGroups" :: Value (Array TargetGroup)
  }

targetGroupsConfig :: { "TargetGroups" :: Value (Array TargetGroup) } -> TargetGroupsConfig
targetGroupsConfig required =
  required

-- | `AWS::EC2::SpotFleet.InstanceIpv6Address`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instanceipv6address.html
-- |
-- | - `Ipv6Address`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instanceipv6address.html#cfn-ec2-spotfleet-instanceipv6address-ipv6address
type InstanceIpv6Address =
  { "Ipv6Address" :: Value String
  }

instanceIpv6Address :: { "Ipv6Address" :: Value String } -> InstanceIpv6Address
instanceIpv6Address required =
  required

-- | `AWS::EC2::SpotFleet.SpotFleetRequestConfigData`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html
-- |
-- | - `AllocationStrategy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-allocationstrategy
-- | - `ExcessCapacityTerminationPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-excesscapacityterminationpolicy
-- | - `IamFleetRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-iamfleetrole
-- | - `InstanceInterruptionBehavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-instanceinterruptionbehavior
-- | - `LaunchSpecifications`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications
-- | - `LaunchTemplateConfigs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-launchtemplateconfigs
-- | - `LoadBalancersConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-loadbalancersconfig
-- | - `ReplaceUnhealthyInstances`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-replaceunhealthyinstances
-- | - `SpotPrice`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-spotprice
-- | - `TargetCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-targetcapacity
-- | - `TerminateInstancesWithExpiration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-terminateinstanceswithexpiration
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-type
-- | - `ValidFrom`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-validfrom
-- | - `ValidUntil`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-validuntil
type SpotFleetRequestConfigData =
  { "IamFleetRole" :: Value String
  , "TargetCapacity" :: Value Int
  , "AllocationStrategy" :: Maybe (Value String)
  , "ExcessCapacityTerminationPolicy" :: Maybe (Value String)
  , "InstanceInterruptionBehavior" :: Maybe (Value String)
  , "LaunchSpecifications" :: Maybe (Value (Array SpotFleetLaunchSpecification))
  , "LaunchTemplateConfigs" :: Maybe (Value (Array LaunchTemplateConfig))
  , "LoadBalancersConfig" :: Maybe (Value LoadBalancersConfig)
  , "ReplaceUnhealthyInstances" :: Maybe (Value Boolean)
  , "SpotPrice" :: Maybe (Value String)
  , "TerminateInstancesWithExpiration" :: Maybe (Value Boolean)
  , "Type" :: Maybe (Value String)
  , "ValidFrom" :: Maybe (Value String)
  , "ValidUntil" :: Maybe (Value String)
  }

spotFleetRequestConfigData :: { "IamFleetRole" :: Value String, "TargetCapacity" :: Value Int } -> SpotFleetRequestConfigData
spotFleetRequestConfigData required =
  (merge required
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
    })

-- | `AWS::EC2::SpotFleet.ClassicLoadBalancersConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-classicloadbalancersconfig.html
-- |
-- | - `ClassicLoadBalancers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-classicloadbalancersconfig.html#cfn-ec2-spotfleet-classicloadbalancersconfig-classicloadbalancers
type ClassicLoadBalancersConfig =
  { "ClassicLoadBalancers" :: Value (Array ClassicLoadBalancer)
  }

classicLoadBalancersConfig :: { "ClassicLoadBalancers" :: Value (Array ClassicLoadBalancer) } -> ClassicLoadBalancersConfig
classicLoadBalancersConfig required =
  required

-- | `AWS::EC2::SpotFleet.SpotFleetLaunchSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html
-- |
-- | - `BlockDeviceMappings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-blockdevicemappings
-- | - `EbsOptimized`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-ebsoptimized
-- | - `IamInstanceProfile`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-iaminstanceprofile
-- | - `ImageId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-imageid
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-instancetype
-- | - `KernelId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-kernelid
-- | - `KeyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-keyname
-- | - `Monitoring`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-monitoring
-- | - `NetworkInterfaces`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-networkinterfaces
-- | - `Placement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-placement
-- | - `RamdiskId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-ramdiskid
-- | - `SecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-securitygroups
-- | - `SpotPrice`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-spotprice
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-subnetid
-- | - `TagSpecifications`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-tagspecifications
-- | - `UserData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-userdata
-- | - `WeightedCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-weightedcapacity
type SpotFleetLaunchSpecification =
  { "ImageId" :: Value String
  , "InstanceType" :: Value String
  , "BlockDeviceMappings" :: Maybe (Value (Array BlockDeviceMapping))
  , "EbsOptimized" :: Maybe (Value Boolean)
  , "IamInstanceProfile" :: Maybe (Value IamInstanceProfileSpecification)
  , "KernelId" :: Maybe (Value String)
  , "KeyName" :: Maybe (Value String)
  , "Monitoring" :: Maybe (Value SpotFleetMonitoring)
  , "NetworkInterfaces" :: Maybe (Value (Array InstanceNetworkInterfaceSpecification))
  , "Placement" :: Maybe (Value SpotPlacement)
  , "RamdiskId" :: Maybe (Value String)
  , "SecurityGroups" :: Maybe (Value (Array GroupIdentifier))
  , "SpotPrice" :: Maybe (Value String)
  , "SubnetId" :: Maybe (Value String)
  , "TagSpecifications" :: Maybe (Value (Array SpotFleetTagSpecification))
  , "UserData" :: Maybe (Value String)
  , "WeightedCapacity" :: Maybe (Value Number)
  }

spotFleetLaunchSpecification :: { "ImageId" :: Value String, "InstanceType" :: Value String } -> SpotFleetLaunchSpecification
spotFleetLaunchSpecification required =
  (merge required
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
    })

-- | `AWS::EC2::SpotFleet.InstanceNetworkInterfaceSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html
-- |
-- | - `AssociatePublicIpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-associatepublicipaddress
-- | - `DeleteOnTermination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-deleteontermination
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-description
-- | - `DeviceIndex`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-deviceindex
-- | - `Groups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-groups
-- | - `Ipv6AddressCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-ipv6addresscount
-- | - `Ipv6Addresses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-ipv6addresses
-- | - `NetworkInterfaceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-networkinterfaceid
-- | - `PrivateIpAddresses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-privateipaddresses
-- | - `SecondaryPrivateIpAddressCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-secondaryprivateipaddresscount
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-subnetid
type InstanceNetworkInterfaceSpecification =
  { "AssociatePublicIpAddress" :: Maybe (Value Boolean)
  , "DeleteOnTermination" :: Maybe (Value Boolean)
  , "Description" :: Maybe (Value String)
  , "DeviceIndex" :: Maybe (Value Int)
  , "Groups" :: Maybe (Value (Array String))
  , "Ipv6AddressCount" :: Maybe (Value Int)
  , "Ipv6Addresses" :: Maybe (Value (Array InstanceIpv6Address))
  , "NetworkInterfaceId" :: Maybe (Value String)
  , "PrivateIpAddresses" :: Maybe (Value (Array PrivateIpAddressSpecification))
  , "SecondaryPrivateIpAddressCount" :: Maybe (Value Int)
  , "SubnetId" :: Maybe (Value String)
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

-- | `AWS::EC2::SpotFleet.IamInstanceProfileSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-iaminstanceprofile.html
-- |
-- | - `Arn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-iaminstanceprofile.html#cfn-ec2-spotfleet-iaminstanceprofilespecification-arn
type IamInstanceProfileSpecification =
  { "Arn" :: Maybe (Value String)
  }

iamInstanceProfileSpecification :: IamInstanceProfileSpecification
iamInstanceProfileSpecification =
  { "Arn" : Nothing
  }

-- | `AWS::EC2::SpotFleet.LaunchTemplateConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateconfig.html
-- |
-- | - `LaunchTemplateSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateconfig.html#cfn-ec2-spotfleet-launchtemplateconfig-launchtemplatespecification
-- | - `Overrides`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateconfig.html#cfn-ec2-spotfleet-launchtemplateconfig-overrides
type LaunchTemplateConfig =
  { "LaunchTemplateSpecification" :: Maybe (Value FleetLaunchTemplateSpecification)
  , "Overrides" :: Maybe (Value (Array LaunchTemplateOverrides))
  }

launchTemplateConfig :: LaunchTemplateConfig
launchTemplateConfig =
  { "LaunchTemplateSpecification" : Nothing
  , "Overrides" : Nothing
  }

-- | `AWS::EC2::SpotFleet.ClassicLoadBalancer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-classicloadbalancer.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-classicloadbalancer.html#cfn-ec2-spotfleet-classicloadbalancer-name
type ClassicLoadBalancer =
  { "Name" :: Value String
  }

classicLoadBalancer :: { "Name" :: Value String } -> ClassicLoadBalancer
classicLoadBalancer required =
  required

-- | `AWS::EC2::SpotFleet.SpotFleetMonitoring`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-monitoring.html
-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-monitoring.html#cfn-ec2-spotfleet-spotfleetmonitoring-enabled
type SpotFleetMonitoring =
  { "Enabled" :: Maybe (Value Boolean)
  }

spotFleetMonitoring :: SpotFleetMonitoring
spotFleetMonitoring =
  { "Enabled" : Nothing
  }

-- | `AWS::EC2::SpotFleet.LaunchTemplateOverrides`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html
-- |
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-availabilityzone
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-instancetype
-- | - `SpotPrice`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-spotprice
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-subnetid
-- | - `WeightedCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-weightedcapacity
type LaunchTemplateOverrides =
  { "AvailabilityZone" :: Maybe (Value String)
  , "InstanceType" :: Maybe (Value String)
  , "SpotPrice" :: Maybe (Value String)
  , "SubnetId" :: Maybe (Value String)
  , "WeightedCapacity" :: Maybe (Value Number)
  }

launchTemplateOverrides :: LaunchTemplateOverrides
launchTemplateOverrides =
  { "AvailabilityZone" : Nothing
  , "InstanceType" : Nothing
  , "SpotPrice" : Nothing
  , "SubnetId" : Nothing
  , "WeightedCapacity" : Nothing
  }

-- | `AWS::EC2::SpotFleet.TargetGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-targetgroup.html
-- |
-- | - `Arn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-targetgroup.html#cfn-ec2-spotfleet-targetgroup-arn
type TargetGroup =
  { "Arn" :: Value String
  }

targetGroup :: { "Arn" :: Value String } -> TargetGroup
targetGroup required =
  required

-- | `AWS::EC2::SpotFleet.FleetLaunchTemplateSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html
-- |
-- | - `LaunchTemplateId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html#cfn-ec2-spotfleet-fleetlaunchtemplatespecification-launchtemplateid
-- | - `LaunchTemplateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html#cfn-ec2-spotfleet-fleetlaunchtemplatespecification-launchtemplatename
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html#cfn-ec2-spotfleet-fleetlaunchtemplatespecification-version
type FleetLaunchTemplateSpecification =
  { "Version" :: Value String
  , "LaunchTemplateId" :: Maybe (Value String)
  , "LaunchTemplateName" :: Maybe (Value String)
  }

fleetLaunchTemplateSpecification :: { "Version" :: Value String } -> FleetLaunchTemplateSpecification
fleetLaunchTemplateSpecification required =
  (merge required
    { "LaunchTemplateId" : Nothing
    , "LaunchTemplateName" : Nothing
    })

-- | `AWS::EC2::SpotFleet.LoadBalancersConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-loadbalancersconfig.html
-- |
-- | - `ClassicLoadBalancersConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-loadbalancersconfig.html#cfn-ec2-spotfleet-loadbalancersconfig-classicloadbalancersconfig
-- | - `TargetGroupsConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-loadbalancersconfig.html#cfn-ec2-spotfleet-loadbalancersconfig-targetgroupsconfig
type LoadBalancersConfig =
  { "ClassicLoadBalancersConfig" :: Maybe (Value ClassicLoadBalancersConfig)
  , "TargetGroupsConfig" :: Maybe (Value TargetGroupsConfig)
  }

loadBalancersConfig :: LoadBalancersConfig
loadBalancersConfig =
  { "ClassicLoadBalancersConfig" : Nothing
  , "TargetGroupsConfig" : Nothing
  }

-- | `AWS::EC2::SpotFleet.EbsBlockDevice`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html
-- |
-- | - `DeleteOnTermination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebsblockdevice-deleteontermination
-- | - `Encrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebsblockdevice-encrypted
-- | - `Iops`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebsblockdevice-iops
-- | - `SnapshotId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebsblockdevice-snapshotid
-- | - `VolumeSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebsblockdevice-volumesize
-- | - `VolumeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-blockdevicemappings-ebs.html#cfn-ec2-spotfleet-ebsblockdevice-volumetype
type EbsBlockDevice =
  { "DeleteOnTermination" :: Maybe (Value Boolean)
  , "Encrypted" :: Maybe (Value Boolean)
  , "Iops" :: Maybe (Value Int)
  , "SnapshotId" :: Maybe (Value String)
  , "VolumeSize" :: Maybe (Value Int)
  , "VolumeType" :: Maybe (Value String)
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

-- | `AWS::EC2::SpotFleet.SpotPlacement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-placement.html
-- |
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-placement.html#cfn-ec2-spotfleet-spotplacement-availabilityzone
-- | - `GroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-placement.html#cfn-ec2-spotfleet-spotplacement-groupname
-- | - `Tenancy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-placement.html#cfn-ec2-spotfleet-spotplacement-tenancy
type SpotPlacement =
  { "AvailabilityZone" :: Maybe (Value String)
  , "GroupName" :: Maybe (Value String)
  , "Tenancy" :: Maybe (Value String)
  }

spotPlacement :: SpotPlacement
spotPlacement =
  { "AvailabilityZone" : Nothing
  , "GroupName" : Nothing
  , "Tenancy" : Nothing
  }

-- | `AWS::EC2::SpotFleet.PrivateIpAddressSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces-privateipaddresses.html
-- |
-- | - `Primary`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces-privateipaddresses.html#cfn-ec2-spotfleet-privateipaddressspecification-primary
-- | - `PrivateIpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces-privateipaddresses.html#cfn-ec2-spotfleet-privateipaddressspecification-privateipaddress
type PrivateIpAddressSpecification =
  { "PrivateIpAddress" :: Value String
  , "Primary" :: Maybe (Value Boolean)
  }

privateIpAddressSpecification :: { "PrivateIpAddress" :: Value String } -> PrivateIpAddressSpecification
privateIpAddressSpecification required =
  (merge required
    { "Primary" : Nothing
    })

-- | `AWS::EC2::SpotFleet.SpotFleetTagSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-tagspecifications.html
-- |
-- | - `ResourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-tagspecifications.html#cfn-ec2-spotfleet-spotfleettagspecification-resourcetype
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-tagspecifications.html#cfn-ec2-spotfleet-tags
type SpotFleetTagSpecification =
  { "ResourceType" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

spotFleetTagSpecification :: SpotFleetTagSpecification
spotFleetTagSpecification =
  { "ResourceType" : Nothing
  , "Tags" : Nothing
  }