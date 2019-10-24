module CloudFormation.AWS.OpsWorks.Layer where 

import Foreign.Object (Object)
import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import CloudFormation.Tag (Tag)
import Record (merge)


type Layer =
  { "AutoAssignElasticIps" :: Boolean
  , "AutoAssignPublicIps" :: Boolean
  , "EnableAutoHealing" :: Boolean
  , "Name" :: String
  , "Shortname" :: String
  , "StackId" :: String
  , "Type" :: String
  , "Attributes" :: Maybe (Object String)
  , "CustomInstanceProfileArn" :: Maybe String
  , "CustomJson" :: Maybe Foreign
  , "CustomRecipes" :: Maybe Recipes
  , "CustomSecurityGroupIds" :: Maybe (Array String)
  , "InstallUpdatesOnBoot" :: Maybe Boolean
  , "LifecycleEventConfiguration" :: Maybe LifecycleEventConfiguration
  , "LoadBasedAutoScaling" :: Maybe LoadBasedAutoScaling
  , "Packages" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  , "UseEbsOptimizedInstances" :: Maybe Boolean
  , "VolumeConfigurations" :: Maybe (Array VolumeConfiguration)
  }

layer :: { "AutoAssignElasticIps" :: Boolean, "AutoAssignPublicIps" :: Boolean, "EnableAutoHealing" :: Boolean, "Name" :: String, "Shortname" :: String, "StackId" :: String, "Type" :: String } -> Layer
layer required =
  merge required
    { "Attributes" : Nothing
    , "CustomInstanceProfileArn" : Nothing
    , "CustomJson" : Nothing
    , "CustomRecipes" : Nothing
    , "CustomSecurityGroupIds" : Nothing
    , "InstallUpdatesOnBoot" : Nothing
    , "LifecycleEventConfiguration" : Nothing
    , "LoadBasedAutoScaling" : Nothing
    , "Packages" : Nothing
    , "Tags" : Nothing
    , "UseEbsOptimizedInstances" : Nothing
    , "VolumeConfigurations" : Nothing
    }

type Recipes =
  { "Configure" :: Maybe (Array String)
  , "Deploy" :: Maybe (Array String)
  , "Setup" :: Maybe (Array String)
  , "Shutdown" :: Maybe (Array String)
  , "Undeploy" :: Maybe (Array String)
  }

recipes :: Recipes
recipes =
  { "Configure" : Nothing
  , "Deploy" : Nothing
  , "Setup" : Nothing
  , "Shutdown" : Nothing
  , "Undeploy" : Nothing
  }

type AutoScalingThresholds =
  { "CpuThreshold" :: Maybe Number
  , "IgnoreMetricsTime" :: Maybe Int
  , "InstanceCount" :: Maybe Int
  , "LoadThreshold" :: Maybe Number
  , "MemoryThreshold" :: Maybe Number
  , "ThresholdsWaitTime" :: Maybe Int
  }

autoScalingThresholds :: AutoScalingThresholds
autoScalingThresholds =
  { "CpuThreshold" : Nothing
  , "IgnoreMetricsTime" : Nothing
  , "InstanceCount" : Nothing
  , "LoadThreshold" : Nothing
  , "MemoryThreshold" : Nothing
  , "ThresholdsWaitTime" : Nothing
  }

type LoadBasedAutoScaling =
  { "DownScaling" :: Maybe AutoScalingThresholds
  , "Enable" :: Maybe Boolean
  , "UpScaling" :: Maybe AutoScalingThresholds
  }

loadBasedAutoScaling :: LoadBasedAutoScaling
loadBasedAutoScaling =
  { "DownScaling" : Nothing
  , "Enable" : Nothing
  , "UpScaling" : Nothing
  }

type LifecycleEventConfiguration =
  { "ShutdownEventConfiguration" :: Maybe ShutdownEventConfiguration
  }

lifecycleEventConfiguration :: LifecycleEventConfiguration
lifecycleEventConfiguration =
  { "ShutdownEventConfiguration" : Nothing
  }

type VolumeConfiguration =
  { "Encrypted" :: Maybe Boolean
  , "Iops" :: Maybe Int
  , "MountPoint" :: Maybe String
  , "NumberOfDisks" :: Maybe Int
  , "RaidLevel" :: Maybe Int
  , "Size" :: Maybe Int
  , "VolumeType" :: Maybe String
  }

volumeConfiguration :: VolumeConfiguration
volumeConfiguration =
  { "Encrypted" : Nothing
  , "Iops" : Nothing
  , "MountPoint" : Nothing
  , "NumberOfDisks" : Nothing
  , "RaidLevel" : Nothing
  , "Size" : Nothing
  , "VolumeType" : Nothing
  }

type ShutdownEventConfiguration =
  { "DelayUntilElbConnectionsDrained" :: Maybe Boolean
  , "ExecutionTimeout" :: Maybe Int
  }

shutdownEventConfiguration :: ShutdownEventConfiguration
shutdownEventConfiguration =
  { "DelayUntilElbConnectionsDrained" : Nothing
  , "ExecutionTimeout" : Nothing
  }