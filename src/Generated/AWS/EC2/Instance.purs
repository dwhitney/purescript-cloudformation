module CloudFormation.AWS.EC2.Instance where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
newtype Instance = Instance
  { "AdditionalInfo" :: Maybe (Value String)
  , "Affinity" :: Maybe (Value String)
  , "AvailabilityZone" :: Maybe (Value String)
  , "BlockDeviceMappings" :: Maybe (Value (Array BlockDeviceMapping))
  , "CpuOptions" :: Maybe (Value CpuOptions)
  , "CreditSpecification" :: Maybe (Value CreditSpecification)
  , "DisableApiTermination" :: Maybe (Value Boolean)
  , "EbsOptimized" :: Maybe (Value Boolean)
  , "ElasticGpuSpecifications" :: Maybe (Value (Array ElasticGpuSpecification))
  , "ElasticInferenceAccelerators" :: Maybe (Value (Array ElasticInferenceAccelerator))
  , "HostId" :: Maybe (Value String)
  , "IamInstanceProfile" :: Maybe (Value String)
  , "ImageId" :: Maybe (Value String)
  , "InstanceInitiatedShutdownBehavior" :: Maybe (Value String)
  , "InstanceType" :: Maybe (Value String)
  , "Ipv6AddressCount" :: Maybe (Value Int)
  , "Ipv6Addresses" :: Maybe (Value (Array InstanceIpv6Address))
  , "KernelId" :: Maybe (Value String)
  , "KeyName" :: Maybe (Value String)
  , "LaunchTemplate" :: Maybe (Value LaunchTemplateSpecification)
  , "LicenseSpecifications" :: Maybe (Value (Array LicenseSpecification))
  , "Monitoring" :: Maybe (Value Boolean)
  , "NetworkInterfaces" :: Maybe (Value (Array NetworkInterface))
  , "PlacementGroupName" :: Maybe (Value String)
  , "PrivateIpAddress" :: Maybe (Value String)
  , "RamdiskId" :: Maybe (Value String)
  , "SecurityGroupIds" :: Maybe (Value (Array String))
  , "SecurityGroups" :: Maybe (Value (Array String))
  , "SourceDestCheck" :: Maybe (Value Boolean)
  , "SsmAssociations" :: Maybe (Value (Array SsmAssociation))
  , "SubnetId" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "Tenancy" :: Maybe (Value String)
  , "UserData" :: Maybe (Value String)
  , "Volumes" :: Maybe (Value (Array Volume))
  }

derive instance newtypeInstance :: Newtype Instance _
derive newtype instance writeInstance :: WriteForeign Instance
instance resourceInstance :: Resource Instance where type_ _ = "AWS::EC2::Instance"

instance_ :: Instance
instance_ = Instance
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
  { "Primary" :: Value Boolean
  , "PrivateIpAddress" :: Value String
  }

privateIpAddressSpecification :: { "Primary" :: Value Boolean, "PrivateIpAddress" :: Value String } -> PrivateIpAddressSpecification
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
  { "DeviceName" :: Value String
  , "Ebs" :: Maybe (Value Ebs)
  , "NoDevice" :: Maybe (Value NoDevice)
  , "VirtualName" :: Maybe (Value String)
  }

blockDeviceMapping :: { "DeviceName" :: Value String } -> BlockDeviceMapping
blockDeviceMapping required =
  (merge required
    { "Ebs" : Nothing
    , "NoDevice" : Nothing
    , "VirtualName" : Nothing
    })

-- | `AWS::EC2::Instance.ElasticInferenceAccelerator`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html
-- |
-- | - `Count`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html#cfn-ec2-instance-elasticinferenceaccelerator-count
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticinferenceaccelerator.html#cfn-ec2-instance-elasticinferenceaccelerator-type
type ElasticInferenceAccelerator =
  { "Type" :: Value String
  , "Count" :: Maybe (Value Int)
  }

elasticInferenceAccelerator :: { "Type" :: Value String } -> ElasticInferenceAccelerator
elasticInferenceAccelerator required =
  (merge required
    { "Count" : Nothing
    })

-- | `AWS::EC2::Instance.SsmAssociation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations.html
-- |
-- | - `AssociationParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations.html#cfn-ec2-instance-ssmassociations-associationparameters
-- | - `DocumentName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-ssmassociations.html#cfn-ec2-instance-ssmassociations-documentname
type SsmAssociation =
  { "DocumentName" :: Value String
  , "AssociationParameters" :: Maybe (Value (Array AssociationParameter))
  }

ssmAssociation :: { "DocumentName" :: Value String } -> SsmAssociation
ssmAssociation required =
  (merge required
    { "AssociationParameters" : Nothing
    })

-- | `AWS::EC2::Instance.LicenseSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-licensespecification.html
-- |
-- | - `LicenseConfigurationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-licensespecification.html#cfn-ec2-instance-licensespecification-licenseconfigurationarn
type LicenseSpecification =
  { "LicenseConfigurationArn" :: Value String
  }

licenseSpecification :: { "LicenseConfigurationArn" :: Value String } -> LicenseSpecification
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

-- | `AWS::EC2::Instance.CpuOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html
-- |
-- | - `CoreCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html#cfn-ec2-instance-cpuoptions-corecount
-- | - `ThreadsPerCore`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html#cfn-ec2-instance-cpuoptions-threadspercore
type CpuOptions =
  { "CoreCount" :: Maybe (Value Int)
  , "ThreadsPerCore" :: Maybe (Value Int)
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
  { "Key" :: Value String
  , "Value" :: Value (Array String)
  }

associationParameter :: { "Key" :: Value String, "Value" :: Value (Array String) } -> AssociationParameter
associationParameter required =
  required

-- | `AWS::EC2::Instance.InstanceIpv6Address`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-instanceipv6address.html
-- |
-- | - `Ipv6Address`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-instanceipv6address.html#cfn-ec2-instance-instanceipv6address-ipv6address
type InstanceIpv6Address =
  { "Ipv6Address" :: Value String
  }

instanceIpv6Address :: { "Ipv6Address" :: Value String } -> InstanceIpv6Address
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
  { "DeviceIndex" :: Value String
  , "AssociatePublicIpAddress" :: Maybe (Value Boolean)
  , "DeleteOnTermination" :: Maybe (Value Boolean)
  , "Description" :: Maybe (Value String)
  , "GroupSet" :: Maybe (Value (Array String))
  , "Ipv6AddressCount" :: Maybe (Value Int)
  , "Ipv6Addresses" :: Maybe (Value (Array InstanceIpv6Address))
  , "NetworkInterfaceId" :: Maybe (Value String)
  , "PrivateIpAddress" :: Maybe (Value String)
  , "PrivateIpAddresses" :: Maybe (Value (Array PrivateIpAddressSpecification))
  , "SecondaryPrivateIpAddressCount" :: Maybe (Value Int)
  , "SubnetId" :: Maybe (Value String)
  }

networkInterface :: { "DeviceIndex" :: Value String } -> NetworkInterface
networkInterface required =
  (merge required
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
    })

-- | `AWS::EC2::Instance.ElasticGpuSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticgpuspecification.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-elasticgpuspecification.html#cfn-ec2-instance-elasticgpuspecification-type
type ElasticGpuSpecification =
  { "Type" :: Value String
  }

elasticGpuSpecification :: { "Type" :: Value String } -> ElasticGpuSpecification
elasticGpuSpecification required =
  required

-- | `AWS::EC2::Instance.CreditSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-creditspecification.html
-- |
-- | - `CPUCredits`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-creditspecification.html#cfn-ec2-instance-creditspecification-cpucredits
type CreditSpecification =
  { "CPUCredits" :: Maybe (Value String)
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
  { "DeleteOnTermination" :: Maybe (Value Boolean)
  , "Encrypted" :: Maybe (Value Boolean)
  , "Iops" :: Maybe (Value Int)
  , "KmsKeyId" :: Maybe (Value String)
  , "SnapshotId" :: Maybe (Value String)
  , "VolumeSize" :: Maybe (Value Int)
  , "VolumeType" :: Maybe (Value String)
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
  { "Device" :: Value String
  , "VolumeId" :: Value String
  }

volume :: { "Device" :: Value String, "VolumeId" :: Value String } -> Volume
volume required =
  required