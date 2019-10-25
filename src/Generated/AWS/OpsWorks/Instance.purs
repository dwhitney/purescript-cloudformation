module CloudFormation.AWS.OpsWorks.Instance where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Foreign.Object (Object)


-- | `AWS::OpsWorks::Instance`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-instance.html
-- |
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
newtype Instance = Instance
  { "InstanceType" :: Value String
  , "LayerIds" :: Value (Array String)
  , "StackId" :: Value String
  , "AgentVersion" :: Maybe (Value String)
  , "AmiId" :: Maybe (Value String)
  , "Architecture" :: Maybe (Value String)
  , "AutoScalingType" :: Maybe (Value String)
  , "AvailabilityZone" :: Maybe (Value String)
  , "BlockDeviceMappings" :: Maybe (Value (Array BlockDeviceMapping))
  , "EbsOptimized" :: Maybe (Value Boolean)
  , "ElasticIps" :: Maybe (Value (Array String))
  , "Hostname" :: Maybe (Value String)
  , "InstallUpdatesOnBoot" :: Maybe (Value Boolean)
  , "Os" :: Maybe (Value String)
  , "RootDeviceType" :: Maybe (Value String)
  , "SshKeyName" :: Maybe (Value String)
  , "SubnetId" :: Maybe (Value String)
  , "Tenancy" :: Maybe (Value String)
  , "TimeBasedAutoScaling" :: Maybe (Value TimeBasedAutoScaling)
  , "VirtualizationType" :: Maybe (Value String)
  , "Volumes" :: Maybe (Value (Array String))
  }

derive instance newtypeInstance :: Newtype Instance _
derive newtype instance writeInstance :: WriteForeign Instance
instance resourceInstance :: Resource Instance where type_ _ = "AWS::OpsWorks::Instance"

instance_ :: { "InstanceType" :: Value String, "LayerIds" :: Value (Array String), "StackId" :: Value String } -> Instance
instance_ required = Instance
  (merge required
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
    })

-- | `AWS::OpsWorks::Instance.TimeBasedAutoScaling`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html
-- |
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
  { "Friday" :: Maybe (Value (Object String))
  , "Monday" :: Maybe (Value (Object String))
  , "Saturday" :: Maybe (Value (Object String))
  , "Sunday" :: Maybe (Value (Object String))
  , "Thursday" :: Maybe (Value (Object String))
  , "Tuesday" :: Maybe (Value (Object String))
  , "Wednesday" :: Maybe (Value (Object String))
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

-- | `AWS::OpsWorks::Instance.EbsBlockDevice`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-ebsblockdevice.html
-- |
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
  { "DeleteOnTermination" :: Maybe (Value Boolean)
  , "Iops" :: Maybe (Value Int)
  , "SnapshotId" :: Maybe (Value String)
  , "VolumeSize" :: Maybe (Value Int)
  , "VolumeType" :: Maybe (Value String)
  }

ebsBlockDevice :: EbsBlockDevice
ebsBlockDevice =
  { "DeleteOnTermination" : Nothing
  , "Iops" : Nothing
  , "SnapshotId" : Nothing
  , "VolumeSize" : Nothing
  , "VolumeType" : Nothing
  }

-- | `AWS::OpsWorks::Instance.BlockDeviceMapping`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html
-- |
-- | - `DeviceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-devicename
-- | - `Ebs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-ebs
-- | - `NoDevice`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-nodevice
-- | - `VirtualName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-blockdevicemapping.html#cfn-opsworks-instance-blockdevicemapping-virtualname
type BlockDeviceMapping =
  { "DeviceName" :: Maybe (Value String)
  , "Ebs" :: Maybe (Value EbsBlockDevice)
  , "NoDevice" :: Maybe (Value String)
  , "VirtualName" :: Maybe (Value String)
  }

blockDeviceMapping :: BlockDeviceMapping
blockDeviceMapping =
  { "DeviceName" : Nothing
  , "Ebs" : Nothing
  , "NoDevice" : Nothing
  , "VirtualName" : Nothing
  }