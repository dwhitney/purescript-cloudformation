module CloudFormation.AWS.AutoScaling.LaunchConfiguration where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "ImageId" :: String
  , "InstanceType" :: String
  , "AssociatePublicIpAddress" :: Maybe Boolean
  , "BlockDeviceMappings" :: Maybe (Array BlockDeviceMapping)
  , "ClassicLinkVPCId" :: Maybe String
  , "ClassicLinkVPCSecurityGroups" :: Maybe (Array String)
  , "EbsOptimized" :: Maybe Boolean
  , "IamInstanceProfile" :: Maybe String
  , "InstanceId" :: Maybe String
  , "InstanceMonitoring" :: Maybe Boolean
  , "KernelId" :: Maybe String
  , "KeyName" :: Maybe String
  , "LaunchConfigurationName" :: Maybe String
  , "PlacementTenancy" :: Maybe String
  , "RamDiskId" :: Maybe String
  , "SecurityGroups" :: Maybe (Array String)
  , "SpotPrice" :: Maybe String
  , "UserData" :: Maybe String
  }

derive instance newtypeLaunchConfiguration :: Newtype LaunchConfiguration _
instance resourceLaunchConfiguration :: Resource LaunchConfiguration where type_ _ = "AWS::AutoScaling::LaunchConfiguration"

launchConfiguration :: { "ImageId" :: String, "InstanceType" :: String } -> LaunchConfiguration
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
  { "DeleteOnTermination" :: Maybe Boolean
  , "Encrypted" :: Maybe Boolean
  , "Iops" :: Maybe Int
  , "SnapshotId" :: Maybe String
  , "VolumeSize" :: Maybe Int
  , "VolumeType" :: Maybe String
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
  { "DeviceName" :: String
  , "Ebs" :: Maybe BlockDevice
  , "NoDevice" :: Maybe Boolean
  , "VirtualName" :: Maybe String
  }

blockDeviceMapping :: { "DeviceName" :: String } -> BlockDeviceMapping
blockDeviceMapping required =
  (merge required
    { "Ebs" : Nothing
    , "NoDevice" : Nothing
    , "VirtualName" : Nothing
    })