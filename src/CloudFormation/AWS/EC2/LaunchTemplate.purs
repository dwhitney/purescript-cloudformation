module CloudFormation.AWS.EC2.LaunchTemplate where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


type LaunchTemplate =
  { "LaunchTemplateName" :: Maybe String
  , "LaunchTemplateData" :: Maybe LaunchTemplateData
  }

launchTemplate :: LaunchTemplate
launchTemplate =
  { "LaunchTemplateName" : Nothing
  , "LaunchTemplateData" : Nothing
  }

type LaunchTemplateElasticInferenceAccelerator =
  { "Type" :: Maybe String
  }

launchTemplateElasticInferenceAccelerator :: LaunchTemplateElasticInferenceAccelerator
launchTemplateElasticInferenceAccelerator =
  { "Type" : Nothing
  }

type CpuOptions =
  { "ThreadsPerCore" :: Maybe Int
  , "CoreCount" :: Maybe Int
  }

cpuOptions :: CpuOptions
cpuOptions =
  { "ThreadsPerCore" : Nothing
  , "CoreCount" : Nothing
  }

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

type CapacityReservationTarget =
  { "CapacityReservationId" :: Maybe String
  }

capacityReservationTarget :: CapacityReservationTarget
capacityReservationTarget =
  { "CapacityReservationId" : Nothing
  }

type Ipv6Add =
  { "Ipv6Address" :: Maybe String
  }

ipv6Add :: Ipv6Add
ipv6Add =
  { "Ipv6Address" : Nothing
  }

type CapacityReservationSpecification =
  { "CapacityReservationPreference" :: Maybe CapacityReservationPreference
  , "CapacityReservationTarget" :: Maybe CapacityReservationTarget
  }

capacityReservationSpecification :: CapacityReservationSpecification
capacityReservationSpecification =
  { "CapacityReservationPreference" : Nothing
  , "CapacityReservationTarget" : Nothing
  }

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

type Monitoring =
  { "Enabled" :: Maybe Boolean
  }

monitoring :: Monitoring
monitoring =
  { "Enabled" : Nothing
  }

type CreditSpecification =
  { "CpuCredits" :: Maybe String
  }

creditSpecification :: CreditSpecification
creditSpecification =
  { "CpuCredits" : Nothing
  }

type InstanceMarketOptions =
  { "SpotOptions" :: Maybe SpotOptions
  , "MarketType" :: Maybe String
  }

instanceMarketOptions :: InstanceMarketOptions
instanceMarketOptions =
  { "SpotOptions" : Nothing
  , "MarketType" : Nothing
  }

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

type HibernationOptions =
  { "Configured" :: Maybe Boolean
  }

hibernationOptions :: HibernationOptions
hibernationOptions =
  { "Configured" : Nothing
  }

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

type LicenseSpecification =
  { "LicenseConfigurationArn" :: Maybe String
  }

licenseSpecification :: LicenseSpecification
licenseSpecification =
  { "LicenseConfigurationArn" : Nothing
  }

type IamInstanceProfile =
  { "Arn" :: Maybe String
  , "Name" :: Maybe String
  }

iamInstanceProfile :: IamInstanceProfile
iamInstanceProfile =
  { "Arn" : Nothing
  , "Name" : Nothing
  }

type TagSpecification =
  { "ResourceType" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

tagSpecification :: TagSpecification
tagSpecification =
  { "ResourceType" : Nothing
  , "Tags" : Nothing
  }

type ElasticGpuSpecification =
  { "Type" :: Maybe String
  }

elasticGpuSpecification :: ElasticGpuSpecification
elasticGpuSpecification =
  { "Type" : Nothing
  }

type CapacityReservationPreference = String

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

type PrivateIpAdd =
  { "PrivateIpAddress" :: Maybe String
  , "Primary" :: Maybe Boolean
  }

privateIpAdd :: PrivateIpAdd
privateIpAdd =
  { "PrivateIpAddress" : Nothing
  , "Primary" : Nothing
  }