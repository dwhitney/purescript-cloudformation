module CloudFormation.AWS.EC2.LaunchTemplate where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


-- | `AWS::EC2::LaunchTemplate`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html-- |
-- | - `LaunchTemplateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html#cfn-ec2-launchtemplate-launchtemplatename
-- | - `LaunchTemplateData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html#cfn-ec2-launchtemplate-launchtemplatedata
type LaunchTemplate =
  { "LaunchTemplateName" :: Maybe String
  , "LaunchTemplateData" :: Maybe LaunchTemplateData
  }

launchTemplate :: LaunchTemplate
launchTemplate =
  { "LaunchTemplateName" : Nothing
  , "LaunchTemplateData" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.LaunchTemplateElasticInferenceAccelerator`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator.html-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator.html#cfn-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator-type
type LaunchTemplateElasticInferenceAccelerator =
  { "Type" :: Maybe String
  }

launchTemplateElasticInferenceAccelerator :: LaunchTemplateElasticInferenceAccelerator
launchTemplateElasticInferenceAccelerator =
  { "Type" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.CpuOptions`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-cpuoptions.html-- |
-- | - `ThreadsPerCore`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-cpuoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-cpuoptions-threadspercore
-- | - `CoreCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-cpuoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-cpuoptions-corecount
type CpuOptions =
  { "ThreadsPerCore" :: Maybe Int
  , "CoreCount" :: Maybe Int
  }

cpuOptions :: CpuOptions
cpuOptions =
  { "ThreadsPerCore" : Nothing
  , "CoreCount" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.NetworkInterface`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-description
-- | - `PrivateIpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-privateipaddress
-- | - `PrivateIpAddresses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-privateipaddresses
-- | - `SecondaryPrivateIpAddressCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-secondaryprivateipaddresscount
-- | - `DeviceIndex`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-deviceindex
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-subnetid
-- | - `Ipv6Addresses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-ipv6addresses
-- | - `AssociatePublicIpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-associatepublicipaddress
-- | - `NetworkInterfaceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-networkinterfaceid
-- | - `InterfaceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-interfacetype
-- | - `Ipv6AddressCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-ipv6addresscount
-- | - `Groups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-groups
-- | - `DeleteOnTermination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-deleteontermination
type NetworkInterface =
  { "Description" :: Maybe String
  , "PrivateIpAddress" :: Maybe String
  , "PrivateIpAddresses" :: Maybe (Array PrivateIpAdd)
  , "SecondaryPrivateIpAddressCount" :: Maybe Int
  , "DeviceIndex" :: Maybe Int
  , "SubnetId" :: Maybe String
  , "Ipv6Addresses" :: Maybe (Array Ipv6Add)
  , "AssociatePublicIpAddress" :: Maybe Boolean
  , "NetworkInterfaceId" :: Maybe String
  , "InterfaceType" :: Maybe String
  , "Ipv6AddressCount" :: Maybe Int
  , "Groups" :: Maybe (Array String)
  , "DeleteOnTermination" :: Maybe Boolean
  }

networkInterface :: NetworkInterface
networkInterface =
  { "Description" : Nothing
  , "PrivateIpAddress" : Nothing
  , "PrivateIpAddresses" : Nothing
  , "SecondaryPrivateIpAddressCount" : Nothing
  , "DeviceIndex" : Nothing
  , "SubnetId" : Nothing
  , "Ipv6Addresses" : Nothing
  , "AssociatePublicIpAddress" : Nothing
  , "NetworkInterfaceId" : Nothing
  , "InterfaceType" : Nothing
  , "Ipv6AddressCount" : Nothing
  , "Groups" : Nothing
  , "DeleteOnTermination" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.CapacityReservationTarget`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-capacityreservationtarget.html-- |
-- | - `CapacityReservationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-capacityreservationtarget.html#cfn-ec2-launchtemplate-capacityreservationtarget-capacityreservationid
type CapacityReservationTarget =
  { "CapacityReservationId" :: Maybe String
  }

capacityReservationTarget :: CapacityReservationTarget
capacityReservationTarget =
  { "CapacityReservationId" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.Ipv6Add`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ipv6add.html-- |
-- | - `Ipv6Address`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ipv6add.html#cfn-ec2-launchtemplate-ipv6add-ipv6address
type Ipv6Add =
  { "Ipv6Address" :: Maybe String
  }

ipv6Add :: Ipv6Add
ipv6Add =
  { "Ipv6Address" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.CapacityReservationSpecification`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification.html-- |
-- | - `CapacityReservationPreference`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification.html#cfn-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification-capacityreservationpreference
-- | - `CapacityReservationTarget`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification.html#cfn-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification-capacityreservationtarget
type CapacityReservationSpecification =
  { "CapacityReservationPreference" :: Maybe CapacityReservationPreference
  , "CapacityReservationTarget" :: Maybe CapacityReservationTarget
  }

capacityReservationSpecification :: CapacityReservationSpecification
capacityReservationSpecification =
  { "CapacityReservationPreference" : Nothing
  , "CapacityReservationTarget" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.Placement`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html-- |
-- | - `GroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html#cfn-ec2-launchtemplate-launchtemplatedata-placement-groupname
-- | - `Tenancy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html#cfn-ec2-launchtemplate-launchtemplatedata-placement-tenancy
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html#cfn-ec2-launchtemplate-launchtemplatedata-placement-availabilityzone
-- | - `Affinity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html#cfn-ec2-launchtemplate-launchtemplatedata-placement-affinity
-- | - `HostId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html#cfn-ec2-launchtemplate-launchtemplatedata-placement-hostid
type Placement =
  { "GroupName" :: Maybe String
  , "Tenancy" :: Maybe String
  , "AvailabilityZone" :: Maybe String
  , "Affinity" :: Maybe String
  , "HostId" :: Maybe String
  }

placement :: Placement
placement =
  { "GroupName" : Nothing
  , "Tenancy" : Nothing
  , "AvailabilityZone" : Nothing
  , "Affinity" : Nothing
  , "HostId" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.Monitoring`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-monitoring.html-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-monitoring.html#cfn-ec2-launchtemplate-launchtemplatedata-monitoring-enabled
type Monitoring =
  { "Enabled" :: Maybe Boolean
  }

monitoring :: Monitoring
monitoring =
  { "Enabled" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.CreditSpecification`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-creditspecification.html-- |
-- | - `CpuCredits`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-creditspecification.html#cfn-ec2-launchtemplate-launchtemplatedata-creditspecification-cpucredits
type CreditSpecification =
  { "CpuCredits" :: Maybe String
  }

creditSpecification :: CreditSpecification
creditSpecification =
  { "CpuCredits" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.InstanceMarketOptions`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions.html-- |
-- | - `SpotOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions
-- | - `MarketType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-markettype
type InstanceMarketOptions =
  { "SpotOptions" :: Maybe SpotOptions
  , "MarketType" :: Maybe String
  }

instanceMarketOptions :: InstanceMarketOptions
instanceMarketOptions =
  { "SpotOptions" : Nothing
  , "MarketType" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.LaunchTemplateData`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html-- |
-- | - `SecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-securitygroups
-- | - `TagSpecifications`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-tagspecifications
-- | - `UserData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-userdata
-- | - `BlockDeviceMappings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-blockdevicemappings
-- | - `IamInstanceProfile`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-iaminstanceprofile
-- | - `KernelId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-kernelid
-- | - `EbsOptimized`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-ebsoptimized
-- | - `ElasticGpuSpecifications`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-elasticgpuspecifications
-- | - `ElasticInferenceAccelerators`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-elasticinferenceaccelerators
-- | - `Placement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-placement
-- | - `NetworkInterfaces`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-networkinterfaces
-- | - `ImageId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-imageid
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-instancetype
-- | - `Monitoring`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-monitoring
-- | - `HibernationOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-hibernationoptions
-- | - `LicenseSpecifications`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-licensespecifications
-- | - `InstanceInitiatedShutdownBehavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-instanceinitiatedshutdownbehavior
-- | - `CpuOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-cpuoptions
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-securitygroupids
-- | - `KeyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-keyname
-- | - `DisableApiTermination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-disableapitermination
-- | - `InstanceMarketOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions
-- | - `RamDiskId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-ramdiskid
-- | - `CapacityReservationSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-capacityreservationspecification
-- | - `CreditSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata.html#cfn-ec2-launchtemplate-launchtemplatedata-creditspecification
type LaunchTemplateData =
  { "SecurityGroups" :: Maybe (Array String)
  , "TagSpecifications" :: Maybe (Array TagSpecification)
  , "UserData" :: Maybe String
  , "BlockDeviceMappings" :: Maybe (Array BlockDeviceMapping)
  , "IamInstanceProfile" :: Maybe IamInstanceProfile
  , "KernelId" :: Maybe String
  , "EbsOptimized" :: Maybe Boolean
  , "ElasticGpuSpecifications" :: Maybe (Array ElasticGpuSpecification)
  , "ElasticInferenceAccelerators" :: Maybe (Array LaunchTemplateElasticInferenceAccelerator)
  , "Placement" :: Maybe Placement
  , "NetworkInterfaces" :: Maybe (Array NetworkInterface)
  , "ImageId" :: Maybe String
  , "InstanceType" :: Maybe String
  , "Monitoring" :: Maybe Monitoring
  , "HibernationOptions" :: Maybe HibernationOptions
  , "LicenseSpecifications" :: Maybe (Array LicenseSpecification)
  , "InstanceInitiatedShutdownBehavior" :: Maybe String
  , "CpuOptions" :: Maybe CpuOptions
  , "SecurityGroupIds" :: Maybe (Array String)
  , "KeyName" :: Maybe String
  , "DisableApiTermination" :: Maybe Boolean
  , "InstanceMarketOptions" :: Maybe InstanceMarketOptions
  , "RamDiskId" :: Maybe String
  , "CapacityReservationSpecification" :: Maybe CapacityReservationSpecification
  , "CreditSpecification" :: Maybe CreditSpecification
  }

launchTemplateData :: LaunchTemplateData
launchTemplateData =
  { "SecurityGroups" : Nothing
  , "TagSpecifications" : Nothing
  , "UserData" : Nothing
  , "BlockDeviceMappings" : Nothing
  , "IamInstanceProfile" : Nothing
  , "KernelId" : Nothing
  , "EbsOptimized" : Nothing
  , "ElasticGpuSpecifications" : Nothing
  , "ElasticInferenceAccelerators" : Nothing
  , "Placement" : Nothing
  , "NetworkInterfaces" : Nothing
  , "ImageId" : Nothing
  , "InstanceType" : Nothing
  , "Monitoring" : Nothing
  , "HibernationOptions" : Nothing
  , "LicenseSpecifications" : Nothing
  , "InstanceInitiatedShutdownBehavior" : Nothing
  , "CpuOptions" : Nothing
  , "SecurityGroupIds" : Nothing
  , "KeyName" : Nothing
  , "DisableApiTermination" : Nothing
  , "InstanceMarketOptions" : Nothing
  , "RamDiskId" : Nothing
  , "CapacityReservationSpecification" : Nothing
  , "CreditSpecification" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.HibernationOptions`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-hibernationoptions.html-- |
-- | - `Configured`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-hibernationoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-hibernationoptions-configured
type HibernationOptions =
  { "Configured" :: Maybe Boolean
  }

hibernationOptions :: HibernationOptions
hibernationOptions =
  { "Configured" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.Ebs`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html-- |
-- | - `SnapshotId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-snapshotid
-- | - `VolumeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-volumetype
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-kmskeyid
-- | - `Encrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-encrypted
-- | - `Iops`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-iops
-- | - `VolumeSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-volumesize
-- | - `DeleteOnTermination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping-ebs.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs-deleteontermination
type Ebs =
  { "SnapshotId" :: Maybe String
  , "VolumeType" :: Maybe String
  , "KmsKeyId" :: Maybe String
  , "Encrypted" :: Maybe Boolean
  , "Iops" :: Maybe Int
  , "VolumeSize" :: Maybe Int
  , "DeleteOnTermination" :: Maybe Boolean
  }

ebs :: Ebs
ebs =
  { "SnapshotId" : Nothing
  , "VolumeType" : Nothing
  , "KmsKeyId" : Nothing
  , "Encrypted" : Nothing
  , "Iops" : Nothing
  , "VolumeSize" : Nothing
  , "DeleteOnTermination" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.LicenseSpecification`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-licensespecification.html-- |
-- | - `LicenseConfigurationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-licensespecification.html#cfn-ec2-launchtemplate-licensespecification-licenseconfigurationarn
type LicenseSpecification =
  { "LicenseConfigurationArn" :: Maybe String
  }

licenseSpecification :: LicenseSpecification
licenseSpecification =
  { "LicenseConfigurationArn" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.IamInstanceProfile`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-iaminstanceprofile.html-- |
-- | - `Arn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-iaminstanceprofile.html#cfn-ec2-launchtemplate-launchtemplatedata-iaminstanceprofile-arn
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-iaminstanceprofile.html#cfn-ec2-launchtemplate-launchtemplatedata-iaminstanceprofile-name
type IamInstanceProfile =
  { "Arn" :: Maybe String
  , "Name" :: Maybe String
  }

iamInstanceProfile :: IamInstanceProfile
iamInstanceProfile =
  { "Arn" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.TagSpecification`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-tagspecification.html-- |
-- | - `ResourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-tagspecification.html#cfn-ec2-launchtemplate-tagspecification-resourcetype
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-tagspecification.html#cfn-ec2-launchtemplate-tagspecification-tags
type TagSpecification =
  { "ResourceType" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

tagSpecification :: TagSpecification
tagSpecification =
  { "ResourceType" : Nothing
  , "Tags" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.ElasticGpuSpecification`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-elasticgpuspecification.html-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-elasticgpuspecification.html#cfn-ec2-launchtemplate-elasticgpuspecification-type
type ElasticGpuSpecification =
  { "Type" :: Maybe String
  }

elasticGpuSpecification :: ElasticGpuSpecification
elasticGpuSpecification =
  { "Type" : Nothing
  }

type CapacityReservationPreference = String

-- | `AWS::EC2::LaunchTemplate.SpotOptions`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html-- |
-- | - `SpotInstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-spotinstancetype
-- | - `InstanceInterruptionBehavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-instanceinterruptionbehavior
-- | - `MaxPrice`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-maxprice
-- | - `BlockDurationMinutes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-blockdurationminutes
-- | - `ValidUntil`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-instancemarketoptions-spotoptions-validuntil
type SpotOptions =
  { "SpotInstanceType" :: Maybe String
  , "InstanceInterruptionBehavior" :: Maybe String
  , "MaxPrice" :: Maybe String
  , "BlockDurationMinutes" :: Maybe Int
  , "ValidUntil" :: Maybe String
  }

spotOptions :: SpotOptions
spotOptions =
  { "SpotInstanceType" : Nothing
  , "InstanceInterruptionBehavior" : Nothing
  , "MaxPrice" : Nothing
  , "BlockDurationMinutes" : Nothing
  , "ValidUntil" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.BlockDeviceMapping`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html-- |
-- | - `Ebs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-ebs
-- | - `NoDevice`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-nodevice
-- | - `VirtualName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-virtualname
-- | - `DeviceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-blockdevicemapping.html#cfn-ec2-launchtemplate-blockdevicemapping-devicename
type BlockDeviceMapping =
  { "Ebs" :: Maybe Ebs
  , "NoDevice" :: Maybe String
  , "VirtualName" :: Maybe String
  , "DeviceName" :: Maybe String
  }

blockDeviceMapping :: BlockDeviceMapping
blockDeviceMapping =
  { "Ebs" : Nothing
  , "NoDevice" : Nothing
  , "VirtualName" : Nothing
  , "DeviceName" : Nothing
  }

-- | `AWS::EC2::LaunchTemplate.PrivateIpAdd`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-privateipadd.html-- |
-- | - `PrivateIpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-privateipadd.html#cfn-ec2-launchtemplate-privateipadd-privateipaddress
-- | - `Primary`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-privateipadd.html#cfn-ec2-launchtemplate-privateipadd-primary
type PrivateIpAdd =
  { "PrivateIpAddress" :: Maybe String
  , "Primary" :: Maybe Boolean
  }

privateIpAdd :: PrivateIpAdd
privateIpAdd =
  { "PrivateIpAddress" : Nothing
  , "Primary" : Nothing
  }