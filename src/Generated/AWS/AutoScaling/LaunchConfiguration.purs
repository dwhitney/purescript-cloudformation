module CloudFormation.AWS.AutoScaling.LaunchConfiguration where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::AutoScaling::LaunchConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html
-- |
-- | - `AssociatePublicIpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cf-as-launchconfig-associatepubip
-- | - `BlockDeviceMappings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-blockdevicemappings
-- | - `ClassicLinkVPCId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-classiclinkvpcid
-- | - `ClassicLinkVPCSecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-classiclinkvpcsecuritygroups
-- | - `EbsOptimized`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-ebsoptimized
-- | - `IamInstanceProfile`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-iaminstanceprofile
-- | - `ImageId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-imageid
-- | - `InstanceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-instanceid
-- | - `InstanceMonitoring`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-instancemonitoring
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-instancetype
-- | - `KernelId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-kernelid
-- | - `KeyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-keyname
-- | - `LaunchConfigurationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-autoscaling-launchconfig-launchconfigurationname
-- | - `PlacementTenancy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-placementtenancy
-- | - `RamDiskId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-ramdiskid
-- | - `SecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-securitygroups
-- | - `SpotPrice`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-spotprice
-- | - `UserData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-userdata
newtype LaunchConfiguration = LaunchConfiguration
  { "ImageId" :: Value String
  , "InstanceType" :: Value String
  , "AssociatePublicIpAddress" :: Maybe (Value Boolean)
  , "BlockDeviceMappings" :: Maybe (Value (Array BlockDeviceMapping))
  , "ClassicLinkVPCId" :: Maybe (Value String)
  , "ClassicLinkVPCSecurityGroups" :: Maybe (Value (Array String))
  , "EbsOptimized" :: Maybe (Value Boolean)
  , "IamInstanceProfile" :: Maybe (Value String)
  , "InstanceId" :: Maybe (Value String)
  , "InstanceMonitoring" :: Maybe (Value Boolean)
  , "KernelId" :: Maybe (Value String)
  , "KeyName" :: Maybe (Value String)
  , "LaunchConfigurationName" :: Maybe (Value String)
  , "PlacementTenancy" :: Maybe (Value String)
  , "RamDiskId" :: Maybe (Value String)
  , "SecurityGroups" :: Maybe (Value (Array String))
  , "SpotPrice" :: Maybe (Value String)
  , "UserData" :: Maybe (Value String)
  }

derive instance newtypeLaunchConfiguration :: Newtype LaunchConfiguration _
derive newtype instance writeLaunchConfiguration :: WriteForeign LaunchConfiguration
instance resourceLaunchConfiguration :: Resource LaunchConfiguration where type_ _ = "AWS::AutoScaling::LaunchConfiguration"

launchConfiguration :: { "ImageId" :: Value String, "InstanceType" :: Value String } -> LaunchConfiguration
launchConfiguration required = LaunchConfiguration
  (merge required
    { "AssociatePublicIpAddress" : Nothing
    , "BlockDeviceMappings" : Nothing
    , "ClassicLinkVPCId" : Nothing
    , "ClassicLinkVPCSecurityGroups" : Nothing
    , "EbsOptimized" : Nothing
    , "IamInstanceProfile" : Nothing
    , "InstanceId" : Nothing
    , "InstanceMonitoring" : Nothing
    , "KernelId" : Nothing
    , "KeyName" : Nothing
    , "LaunchConfigurationName" : Nothing
    , "PlacementTenancy" : Nothing
    , "RamDiskId" : Nothing
    , "SecurityGroups" : Nothing
    , "SpotPrice" : Nothing
    , "UserData" : Nothing
    })

-- | `AWS::AutoScaling::LaunchConfiguration.BlockDevice`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html
-- |
-- | - `DeleteOnTermination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-deleteonterm
-- | - `Encrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-encrypted
-- | - `Iops`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-iops
-- | - `SnapshotId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-snapshotid
-- | - `VolumeSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-volumesize
-- | - `VolumeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-template.html#cfn-as-launchconfig-blockdev-template-volumetype
type BlockDevice =
  { "DeleteOnTermination" :: Maybe (Value Boolean)
  , "Encrypted" :: Maybe (Value Boolean)
  , "Iops" :: Maybe (Value Int)
  , "SnapshotId" :: Maybe (Value String)
  , "VolumeSize" :: Maybe (Value Int)
  , "VolumeType" :: Maybe (Value String)
  }

blockDevice :: BlockDevice
blockDevice =
  { "DeleteOnTermination" : Nothing
  , "Encrypted" : Nothing
  , "Iops" : Nothing
  , "SnapshotId" : Nothing
  , "VolumeSize" : Nothing
  , "VolumeType" : Nothing
  }

-- | `AWS::AutoScaling::LaunchConfiguration.BlockDeviceMapping`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html
-- |
-- | - `DeviceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-devicename
-- | - `Ebs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-ebs
-- | - `NoDevice`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-nodevice
-- | - `VirtualName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig-blockdev-mapping.html#cfn-as-launchconfig-blockdev-mapping-virtualname
type BlockDeviceMapping =
  { "DeviceName" :: Value String
  , "Ebs" :: Maybe (Value BlockDevice)
  , "NoDevice" :: Maybe (Value Boolean)
  , "VirtualName" :: Maybe (Value String)
  }

blockDeviceMapping :: { "DeviceName" :: Value String } -> BlockDeviceMapping
blockDeviceMapping required =
  (merge required
    { "Ebs" : Nothing
    , "NoDevice" : Nothing
    , "VirtualName" : Nothing
    })