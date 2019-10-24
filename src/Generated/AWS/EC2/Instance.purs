module CloudFormation.AWS.EC2.Instance where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::EC2::Instance`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html
-- |
-- | - `AdditionalInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-additionalinfo
-- | - `Affinity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-affinity
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-availabilityzone
-- | - `BlockDeviceMappings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-blockdevicemappings
-- | - `CpuOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-cpuoptions
-- | - `CreditSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-creditspecification
-- | - `DisableApiTermination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-disableapitermination
-- | - `EbsOptimized`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-ebsoptimized
-- | - `ElasticGpuSpecifications`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-elasticgpuspecifications
-- | - `ElasticInferenceAccelerators`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-elasticinferenceaccelerators
-- | - `HostId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-hostid
-- | - `IamInstanceProfile`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-iaminstanceprofile
-- | - `ImageId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-imageid
-- | - `InstanceInitiatedShutdownBehavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-instanceinitiatedshutdownbehavior
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-instancetype
-- | - `Ipv6AddressCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-ipv6addresscount
-- | - `Ipv6Addresses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-ipv6addresses
-- | - `KernelId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-kernelid
-- | - `KeyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-keyname
-- | - `LaunchTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-launchtemplate
-- | - `LicenseSpecifications`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-licensespecifications
-- | - `Monitoring`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-monitoring
-- | - `NetworkInterfaces`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-networkinterfaces
-- | - `PlacementGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-placementgroupname
-- | - `PrivateIpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-privateipaddress
-- | - `RamdiskId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-ramdiskid
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-securitygroupids
-- | - `SecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-securitygroups
-- | - `SourceDestCheck`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-sourcedestcheck
-- | - `SsmAssociations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-ssmassociations
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-subnetid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-tags
-- | - `Tenancy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-tenancy
-- | - `UserData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-userdata
-- | - `Volumes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-volumes
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

-- | `AWS::EC2::Instance.PrivateIpAddressSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html
-- |
-- | - `Primary`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html#cfn-ec2-networkinterface-privateipspecification-primary
-- | - `PrivateIpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html#cfn-ec2-networkinterface-privateipspecification-privateipaddress
type PrivateIpAddressSpecification =
  { "Primary" :: Boolean
  , "PrivateIpAddress" :: String
  }

privateIpAddressSpecification :: { "Primary" :: Boolean, "PrivateIpAddress" :: String } -> PrivateIpAddressSpecification
privateIpAddressSpecification required =
  required

-- | `AWS::EC2::Instance.BlockDeviceMapping`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html
-- |
-- | - `DeviceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-devicename
-- | - `Ebs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-ebs
-- | - `NoDevice`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-nodevice
-- | - `VirtualName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-mapping.html#cfn-ec2-blockdev-mapping-virtualname
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

-- | `AWS::EC2::Instance.ElasticInferenceAccelerator`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html#cfn-ec2-instance-elasticinferenceaccelerator-type
type ElasticInferenceAccelerator =
  { "Type" :: String
  }

elasticInferenceAccelerator :: { "Type" :: String } -> ElasticInferenceAccelerator
elasticInferenceAccelerator required =
  required

-- | `AWS::EC2::Instance.SsmAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations.html
-- |
-- | - `AssociationParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations.html#cfn-ec2-instance-ssmassociations-associationparameters
-- | - `DocumentName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations.html#cfn-ec2-instance-ssmassociations-documentname
type SsmAssociation =
  { "DocumentName" :: String
  , "AssociationParameters" :: Maybe (Array AssociationParameter)
  }

ssmAssociation :: { "DocumentName" :: String } -> SsmAssociation
ssmAssociation required =
  merge required
    { "AssociationParameters" : Nothing
    }

-- | `AWS::EC2::Instance.LicenseSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-licensespecification.html
-- |
-- | - `LicenseConfigurationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-licensespecification.html#cfn-ec2-instance-licensespecification-licenseconfigurationarn
type LicenseSpecification =
  { "LicenseConfigurationArn" :: String
  }

licenseSpecification :: { "LicenseConfigurationArn" :: String } -> LicenseSpecification
licenseSpecification required =
  required

-- | `AWS::EC2::Instance.LaunchTemplateSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-launchtemplatespecification.html
-- |
-- | - `LaunchTemplateId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-launchtemplatespecification.html#cfn-ec2-instance-launchtemplatespecification-launchtemplateid
-- | - `LaunchTemplateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-launchtemplatespecification.html#cfn-ec2-instance-launchtemplatespecification-launchtemplatename
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-launchtemplatespecification.html#cfn-ec2-instance-launchtemplatespecification-version
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

-- | `AWS::EC2::Instance.CpuOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html
-- |
-- | - `CoreCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html#cfn-ec2-instance-cpuoptions-corecount
-- | - `ThreadsPerCore`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html#cfn-ec2-instance-cpuoptions-threadspercore
type CpuOptions =
  { "CoreCount" :: Maybe Int
  , "ThreadsPerCore" :: Maybe Int
  }

cpuOptions :: CpuOptions
cpuOptions =
  { "CoreCount" : Nothing
  , "ThreadsPerCore" : Nothing
  }

-- | `AWS::EC2::Instance.AssociationParameter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html#cfn-ec2-instance-ssmassociations-associationparameters-key
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations-associationparameters.html#cfn-ec2-instance-ssmassociations-associationparameters-value
type AssociationParameter =
  { "Key" :: String
  , "Value" :: Array String
  }

associationParameter :: { "Key" :: String, "Value" :: Array String } -> AssociationParameter
associationParameter required =
  required

-- | `AWS::EC2::Instance.InstanceIpv6Address`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-instanceipv6address.html
-- |
-- | - `Ipv6Address`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-instanceipv6address.html#cfn-ec2-instance-instanceipv6address-ipv6address
type InstanceIpv6Address =
  { "Ipv6Address" :: String
  }

instanceIpv6Address :: { "Ipv6Address" :: String } -> InstanceIpv6Address
instanceIpv6Address required =
  required

-- | `AWS::EC2::Instance.NetworkInterface`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html
-- |
-- | - `AssociatePublicIpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-associatepubip
-- | - `DeleteOnTermination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-delete
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-description
-- | - `DeviceIndex`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-deviceindex
-- | - `GroupSet`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-groupset
-- | - `Ipv6AddressCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#cfn-ec2-instance-networkinterface-ipv6addresscount
-- | - `Ipv6Addresses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#cfn-ec2-instance-networkinterface-ipv6addresses
-- | - `NetworkInterfaceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-network-iface
-- | - `PrivateIpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-privateipaddress
-- | - `PrivateIpAddresses`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-privateipaddresses
-- | - `SecondaryPrivateIpAddressCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-secondprivateip
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-subnetid
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

-- | `AWS::EC2::Instance.ElasticGpuSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticgpuspecification.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticgpuspecification.html#cfn-ec2-instance-elasticgpuspecification-type
type ElasticGpuSpecification =
  { "Type" :: String
  }

elasticGpuSpecification :: { "Type" :: String } -> ElasticGpuSpecification
elasticGpuSpecification required =
  required

-- | `AWS::EC2::Instance.CreditSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-creditspecification.html
-- |
-- | - `CPUCredits`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-creditspecification.html#cfn-ec2-instance-creditspecification-cpucredits
type CreditSpecification =
  { "CPUCredits" :: Maybe String
  }

creditSpecification :: CreditSpecification
creditSpecification =
  { "CPUCredits" : Nothing
  }

-- | `AWS::EC2::Instance.NoDevice`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-nodevice.html
-- |

type NoDevice =
  { 
  }

noDevice :: NoDevice
noDevice = {}

-- | `AWS::EC2::Instance.Ebs`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html
-- |
-- | - `DeleteOnTermination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-deleteontermination
-- | - `Encrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-encrypted
-- | - `Iops`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-iops
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-instance-ebs-kmskeyid
-- | - `SnapshotId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-snapshotid
-- | - `VolumeSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-volumesize
-- | - `VolumeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-blockdev-template.html#cfn-ec2-blockdev-template-volumetype
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

-- | `AWS::EC2::Instance.Volume`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-mount-point.html
-- |
-- | - `Device`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-mount-point.html#cfn-ec2-mountpoint-device
-- | - `VolumeId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-mount-point.html#cfn-ec2-mountpoint-volumeid
type Volume =
  { "Device" :: String
  , "VolumeId" :: String
  }

volume :: { "Device" :: String, "VolumeId" :: String } -> Volume
volume required =
  required