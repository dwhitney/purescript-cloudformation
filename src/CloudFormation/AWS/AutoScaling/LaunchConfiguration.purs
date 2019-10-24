module CloudFormation.AWS.AutoScaling.LaunchConfiguration where 

import Data.Maybe (Maybe(..))
import Record (merge)


type LaunchConfiguration =
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

launchConfiguration :: { "ImageId" :: String, "InstanceType" :: String } -> LaunchConfiguration
launchConfiguration required =
  merge required
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
    }

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

type BlockDeviceMapping =
  { "DeviceName" :: String
  , "Ebs" :: Maybe BlockDevice
  , "NoDevice" :: Maybe Boolean
  , "VirtualName" :: Maybe String
  }

blockDeviceMapping :: { "DeviceName" :: String } -> BlockDeviceMapping
blockDeviceMapping required =
  merge required
    { "Ebs" : Nothing
    , "NoDevice" : Nothing
    , "VirtualName" : Nothing
    }