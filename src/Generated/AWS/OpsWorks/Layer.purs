module CloudFormation.AWS.OpsWorks.Layer where 

import Foreign.Object (Object)
import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::OpsWorks::Layer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html
-- |
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-attributes
-- | - `AutoAssignElasticIps`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-autoassignelasticips
-- | - `AutoAssignPublicIps`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-autoassignpublicips
-- | - `CustomInstanceProfileArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-custominstanceprofilearn
-- | - `CustomJson`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-customjson
-- | - `CustomRecipes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-customrecipes
-- | - `CustomSecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-customsecuritygroupids
-- | - `EnableAutoHealing`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-enableautohealing
-- | - `InstallUpdatesOnBoot`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-installupdatesonboot
-- | - `LifecycleEventConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-lifecycleeventconfiguration
-- | - `LoadBasedAutoScaling`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-loadbasedautoscaling
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-name
-- | - `Packages`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-packages
-- | - `Shortname`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-shortname
-- | - `StackId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-stackid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-tags
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-type
-- | - `UseEbsOptimizedInstances`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-useebsoptimizedinstances
-- | - `VolumeConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-layer.html#cfn-opsworks-layer-volumeconfigurations
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
  , "CustomJson" :: Maybe Json
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

-- | `AWS::OpsWorks::Layer.Recipes`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html
-- |
-- | - `Configure`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-configure
-- | - `Deploy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-deploy
-- | - `Setup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-setup
-- | - `Shutdown`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-shutdown
-- | - `Undeploy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-recipes.html#cfn-opsworks-layer-customrecipes-undeploy
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

-- | `AWS::OpsWorks::Layer.AutoScalingThresholds`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html
-- |
-- | - `CpuThreshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-cputhreshold
-- | - `IgnoreMetricsTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-ignoremetricstime
-- | - `InstanceCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-instancecount
-- | - `LoadThreshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-loadthreshold
-- | - `MemoryThreshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-memorythreshold
-- | - `ThresholdsWaitTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling-autoscalingthresholds.html#cfn-opsworks-layer-loadbasedautoscaling-autoscalingthresholds-thresholdwaittime
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

-- | `AWS::OpsWorks::Layer.LoadBasedAutoScaling`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html
-- |
-- | - `DownScaling`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-downscaling
-- | - `Enable`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-enable
-- | - `UpScaling`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-loadbasedautoscaling.html#cfn-opsworks-layer-loadbasedautoscaling-upscaling
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

-- | `AWS::OpsWorks::Layer.LifecycleEventConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration.html
-- |
-- | - `ShutdownEventConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration.html#cfn-opsworks-layer-lifecycleconfiguration-shutdowneventconfiguration
type LifecycleEventConfiguration =
  { "ShutdownEventConfiguration" :: Maybe ShutdownEventConfiguration
  }

lifecycleEventConfiguration :: LifecycleEventConfiguration
lifecycleEventConfiguration =
  { "ShutdownEventConfiguration" : Nothing
  }

-- | `AWS::OpsWorks::Layer.VolumeConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html
-- |
-- | - `Encrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volumeconfiguration-encrypted
-- | - `Iops`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-iops
-- | - `MountPoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-mountpoint
-- | - `NumberOfDisks`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-numberofdisks
-- | - `RaidLevel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-raidlevel
-- | - `Size`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-size
-- | - `VolumeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-volumeconfiguration.html#cfn-opsworks-layer-volconfig-volumetype
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

-- | `AWS::OpsWorks::Layer.ShutdownEventConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration-shutdowneventconfiguration.html
-- |
-- | - `DelayUntilElbConnectionsDrained`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration-shutdowneventconfiguration.html#cfn-opsworks-layer-lifecycleconfiguration-shutdowneventconfiguration-delayuntilelbconnectionsdrained
-- | - `ExecutionTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-layer-lifecycleeventconfiguration-shutdowneventconfiguration.html#cfn-opsworks-layer-lifecycleconfiguration-shutdowneventconfiguration-executiontimeout
type ShutdownEventConfiguration =
  { "DelayUntilElbConnectionsDrained" :: Maybe Boolean
  , "ExecutionTimeout" :: Maybe Int
  }

shutdownEventConfiguration :: ShutdownEventConfiguration
shutdownEventConfiguration =
  { "DelayUntilElbConnectionsDrained" : Nothing
  , "ExecutionTimeout" : Nothing
  }