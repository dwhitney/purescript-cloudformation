module AWS.EC2.Instance where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type Instance =
  { "AdditionalInfo" :: Maybe String
  , "Affinity" :: Maybe String
  , "AvailabilityZone" :: Maybe String
  , "BlockDeviceMappings" :: Maybe (Array BlockDeviceMapping)
  , "CpuOptions" :: Maybe CpuOptions
  , "CreditSpecification" :: Maybe CreditSpecification
  , "DisableApiTermination" :: Maybe Boolean
  , "EbsOptimized" :: Maybe Boolean
  , "ElasticGpuSpecifications" :: Maybe (Array ElasticGpuSpecification)
  , "ElasticInferenceAccelerators" :: Maybe (Array ElasticInferenceAccelerator)
  , "HostId" :: Maybe String
  , "IamInstanceProfile" :: Maybe String
  , "ImageId" :: Maybe String
  , "InstanceInitiatedShutdownBehavior" :: Maybe String
  , "InstanceType" :: Maybe String
  , "Ipv6AddressCount" :: Maybe Int
  , "Ipv6Addresses" :: Maybe (Array InstanceIpv6Address)
  , "KernelId" :: Maybe String
  , "KeyName" :: Maybe String
  , "LaunchTemplate" :: Maybe LaunchTemplateSpecification
  , "LicenseSpecifications" :: Maybe (Array LicenseSpecification)
  , "Monitoring" :: Maybe Boolean
  , "NetworkInterfaces" :: Maybe (Array NetworkInterface)
  , "PlacementGroupName" :: Maybe String
  , "PrivateIpAddress" :: Maybe String
  , "RamdiskId" :: Maybe String
  , "SecurityGroupIds" :: Maybe (Array String)
  , "SecurityGroups" :: Maybe (Array String)
  , "SourceDestCheck" :: Maybe Boolean
  , "SsmAssociations" :: Maybe (Array SsmAssociation)
  , "SubnetId" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "Tenancy" :: Maybe String
  , "UserData" :: Maybe String
  , "Volumes" :: Maybe (Array Volume)
  }

instance_ :: Instance
instance_ =
  { "AdditionalInfo" : Nothing
  , "Affinity" : Nothing
  , "AvailabilityZone" : Nothing
  , "BlockDeviceMappings" : Nothing
  , "CpuOptions" : Nothing
  , "CreditSpecification" : Nothing
  , "DisableApiTermination" : Nothing
  , "EbsOptimized" : Nothing
  , "ElasticGpuSpecifications" : Nothing
  , "ElasticInferenceAccelerators" : Nothing
  , "HostId" : Nothing
  , "IamInstanceProfile" : Nothing
  , "ImageId" : Nothing
  , "InstanceInitiatedShutdownBehavior" : Nothing
  , "InstanceType" : Nothing
  , "Ipv6AddressCount" : Nothing
  , "Ipv6Addresses" : Nothing
  , "KernelId" : Nothing
  , "KeyName" : Nothing
  , "LaunchTemplate" : Nothing
  , "LicenseSpecifications" : Nothing
  , "Monitoring" : Nothing
  , "NetworkInterfaces" : Nothing
  , "PlacementGroupName" : Nothing
  , "PrivateIpAddress" : Nothing
  , "RamdiskId" : Nothing
  , "SecurityGroupIds" : Nothing
  , "SecurityGroups" : Nothing
  , "SourceDestCheck" : Nothing
  , "SsmAssociations" : Nothing
  , "SubnetId" : Nothing
  , "Tags" : Nothing
  , "Tenancy" : Nothing
  , "UserData" : Nothing
  , "Volumes" : Nothing
  }

type PrivateIpAddressSpecification =
  { "Primary" :: Boolean
  , "PrivateIpAddress" :: String
  }

privateIpAddressSpecification :: { "Primary" :: Boolean, "PrivateIpAddress" :: String } -> PrivateIpAddressSpecification
privateIpAddressSpecification required =
  required

type BlockDeviceMapping =
  { "DeviceName" :: String
  , "Ebs" :: Maybe Ebs
  , "NoDevice" :: Maybe NoDevice
  , "VirtualName" :: Maybe String
  }

blockDeviceMapping :: { "DeviceName" :: String } -> BlockDeviceMapping
blockDeviceMapping required =
  merge required
    { "Ebs" : Nothing
    , "NoDevice" : Nothing
    , "VirtualName" : Nothing
    }

type ElasticInferenceAccelerator =
  { "Type" :: String
  }

elasticInferenceAccelerator :: { "Type" :: String } -> ElasticInferenceAccelerator
elasticInferenceAccelerator required =
  required

type SsmAssociation =
  { "DocumentName" :: String
  , "AssociationParameters" :: Maybe (Array AssociationParameter)
  }

ssmAssociation :: { "DocumentName" :: String } -> SsmAssociation
ssmAssociation required =
  merge required
    { "AssociationParameters" : Nothing
    }

type LicenseSpecification =
  { "LicenseConfigurationArn" :: String
  }

licenseSpecification :: { "LicenseConfigurationArn" :: String } -> LicenseSpecification
licenseSpecification required =
  required

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

type CpuOptions =
  { "CoreCount" :: Maybe Int
  , "ThreadsPerCore" :: Maybe Int
  }

cpuOptions :: CpuOptions
cpuOptions =
  { "CoreCount" : Nothing
  , "ThreadsPerCore" : Nothing
  }

type AssociationParameter =
  { "Key" :: String
  , "Value" :: Array String
  }

associationParameter :: { "Key" :: String, "Value" :: Array String } -> AssociationParameter
associationParameter required =
  required

type InstanceIpv6Address =
  { "Ipv6Address" :: String
  }

instanceIpv6Address :: { "Ipv6Address" :: String } -> InstanceIpv6Address
instanceIpv6Address required =
  required

type NetworkInterface =
  { "DeviceIndex" :: String
  , "AssociatePublicIpAddress" :: Maybe Boolean
  , "DeleteOnTermination" :: Maybe Boolean
  , "Description" :: Maybe String
  , "GroupSet" :: Maybe (Array String)
  , "Ipv6AddressCount" :: Maybe Int
  , "Ipv6Addresses" :: Maybe (Array InstanceIpv6Address)
  , "NetworkInterfaceId" :: Maybe String
  , "PrivateIpAddress" :: Maybe String
  , "PrivateIpAddresses" :: Maybe (Array PrivateIpAddressSpecification)
  , "SecondaryPrivateIpAddressCount" :: Maybe Int
  , "SubnetId" :: Maybe String
  }

networkInterface :: { "DeviceIndex" :: String } -> NetworkInterface
networkInterface required =
  merge required
    { "AssociatePublicIpAddress" : Nothing
    , "DeleteOnTermination" : Nothing
    , "Description" : Nothing
    , "GroupSet" : Nothing
    , "Ipv6AddressCount" : Nothing
    , "Ipv6Addresses" : Nothing
    , "NetworkInterfaceId" : Nothing
    , "PrivateIpAddress" : Nothing
    , "PrivateIpAddresses" : Nothing
    , "SecondaryPrivateIpAddressCount" : Nothing
    , "SubnetId" : Nothing
    }

type ElasticGpuSpecification =
  { "Type" :: String
  }

elasticGpuSpecification :: { "Type" :: String } -> ElasticGpuSpecification
elasticGpuSpecification required =
  required

type CreditSpecification =
  { "CPUCredits" :: Maybe String
  }

creditSpecification :: CreditSpecification
creditSpecification =
  { "CPUCredits" : Nothing
  }

type NoDevice =
  { 
  }

noDevice :: NoDevice
noDevice = {}

type Ebs =
  { "DeleteOnTermination" :: Maybe Boolean
  , "Encrypted" :: Maybe Boolean
  , "Iops" :: Maybe Int
  , "KmsKeyId" :: Maybe String
  , "SnapshotId" :: Maybe String
  , "VolumeSize" :: Maybe Int
  , "VolumeType" :: Maybe String
  }

ebs :: Ebs
ebs =
  { "DeleteOnTermination" : Nothing
  , "Encrypted" : Nothing
  , "Iops" : Nothing
  , "KmsKeyId" : Nothing
  , "SnapshotId" : Nothing
  , "VolumeSize" : Nothing
  , "VolumeType" : Nothing
  }

type Volume =
  { "Device" :: String
  , "VolumeId" :: String
  }

volume :: { "Device" :: String, "VolumeId" :: String } -> Volume
volume required =
  required