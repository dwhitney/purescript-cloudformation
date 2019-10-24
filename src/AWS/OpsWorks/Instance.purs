module AWS.OpsWorks.Instance where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign.Object (Object)


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