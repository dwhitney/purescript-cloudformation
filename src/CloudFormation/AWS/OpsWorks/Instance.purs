module CloudFormation.AWS.OpsWorks.Instance where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign.Object (Object)


-- | `AWS::OpsWorks::Instance`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html-- |
-- | - `AgentVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-agentversion
-- | - `AmiId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-amiid
-- | - `Architecture`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-architecture
-- | - `AutoScalingType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-autoscalingtype
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-availabilityzone
-- | - `BlockDeviceMappings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-blockdevicemappings
-- | - `EbsOptimized`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-ebsoptimized
-- | - `ElasticIps`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-elasticips
-- | - `Hostname`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-hostname
-- | - `InstallUpdatesOnBoot`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-installupdatesonboot
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-instancetype
-- | - `LayerIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-layerids
-- | - `Os`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-os
-- | - `RootDeviceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-rootdevicetype
-- | - `SshKeyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-sshkeyname
-- | - `StackId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-stackid
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-subnetid
-- | - `Tenancy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-tenancy
-- | - `TimeBasedAutoScaling`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-timebasedautoscaling
-- | - `VirtualizationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-virtualizationtype
-- | - `Volumes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html#cfn-opsworks-instance-volumes
type Instance =
  { "InstanceType" :: String
  , "LayerIds" :: Array String
  , "StackId" :: String
  , "AgentVersion" :: Maybe String
  , "AmiId" :: Maybe String
  , "Architecture" :: Maybe String
  , "AutoScalingType" :: Maybe String
  , "AvailabilityZone" :: Maybe String
  , "BlockDeviceMappings" :: Maybe (Array BlockDeviceMapping)
  , "EbsOptimized" :: Maybe Boolean
  , "ElasticIps" :: Maybe (Array String)
  , "Hostname" :: Maybe String
  , "InstallUpdatesOnBoot" :: Maybe Boolean
  , "Os" :: Maybe String
  , "RootDeviceType" :: Maybe String
  , "SshKeyName" :: Maybe String
  , "SubnetId" :: Maybe String
  , "Tenancy" :: Maybe String
  , "TimeBasedAutoScaling" :: Maybe TimeBasedAutoScaling
  , "VirtualizationType" :: Maybe String
  , "Volumes" :: Maybe (Array String)
  }

instance_ :: { "InstanceType" :: String, "LayerIds" :: Array String, "StackId" :: String } -> Instance
instance_ required =
  merge required
    { "AgentVersion" : Nothing
    , "AmiId" : Nothing
    , "Architecture" : Nothing
    , "AutoScalingType" : Nothing
    , "AvailabilityZone" : Nothing
    , "BlockDeviceMappings" : Nothing
    , "EbsOptimized" : Nothing
    , "ElasticIps" : Nothing
    , "Hostname" : Nothing
    , "InstallUpdatesOnBoot" : Nothing
    , "Os" : Nothing
    , "RootDeviceType" : Nothing
    , "SshKeyName" : Nothing
    , "SubnetId" : Nothing
    , "Tenancy" : Nothing
    , "TimeBasedAutoScaling" : Nothing
    , "VirtualizationType" : Nothing
    , "Volumes" : Nothing
    }

-- | `AWS::OpsWorks::Instance.TimeBasedAutoScaling`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html-- |
-- | - `Friday`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-friday
-- | - `Monday`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-monday
-- | - `Saturday`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-saturday
-- | - `Sunday`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-sunday
-- | - `Thursday`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-thursday
-- | - `Tuesday`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-tuesday
-- | - `Wednesday`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-wednesday
type TimeBasedAutoScaling =
  { "Friday" :: Maybe (Object String)
  , "Monday" :: Maybe (Object String)
  , "Saturday" :: Maybe (Object String)
  , "Sunday" :: Maybe (Object String)
  , "Thursday" :: Maybe (Object String)
  , "Tuesday" :: Maybe (Object String)
  , "Wednesday" :: Maybe (Object String)
  }

timeBasedAutoScaling :: TimeBasedAutoScaling
timeBasedAutoScaling =
  { "Friday" : Nothing
  , "Monday" : Nothing
  , "Saturday" : Nothing
  , "Sunday" : Nothing
  , "Thursday" : Nothing
  , "Tuesday" : Nothing
  , "Wednesday" : Nothing
  }

-- | `AWS::OpsWorks::Instance.EbsBlockDevice`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html-- |
-- | - `DeleteOnTermination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-deleteontermination
-- | - `Iops`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-iops
-- | - `SnapshotId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-snapshotid
-- | - `VolumeSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-volumesize
-- | - `VolumeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html#cfn-opsworks-instance-ebsblockdevice-volumetype
type EbsBlockDevice =
  { "DeleteOnTermination" :: Maybe Boolean
  , "Iops" :: Maybe Int
  , "SnapshotId" :: Maybe String
  , "VolumeSize" :: Maybe Int
  , "VolumeType" :: Maybe String
  }

ebsBlockDevice :: EbsBlockDevice
ebsBlockDevice =
  { "DeleteOnTermination" : Nothing
  , "Iops" : Nothing
  , "SnapshotId" : Nothing
  , "VolumeSize" : Nothing
  , "VolumeType" : Nothing
  }

-- | `AWS::OpsWorks::Instance.BlockDeviceMapping`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html-- |
-- | - `DeviceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-devicename
-- | - `Ebs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-ebs
-- | - `NoDevice`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-nodevice
-- | - `VirtualName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-virtualname
type BlockDeviceMapping =
  { "DeviceName" :: Maybe String
  , "Ebs" :: Maybe EbsBlockDevice
  , "NoDevice" :: Maybe String
  , "VirtualName" :: Maybe String
  }

blockDeviceMapping :: BlockDeviceMapping
blockDeviceMapping =
  { "DeviceName" : Nothing
  , "Ebs" : Nothing
  , "NoDevice" : Nothing
  , "VirtualName" : Nothing
  }