module CloudFormation.AWS.OpsWorks.Layer where 

import CloudFormation (Value)
import Foreign.Object (Object)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype Layer = Layer
  { "AutoAssignElasticIps" :: Value Boolean
  , "AutoAssignPublicIps" :: Value Boolean
  , "EnableAutoHealing" :: Value Boolean
  , "Name" :: Value String
  , "Shortname" :: Value String
  , "StackId" :: Value String
  , "Type" :: Value String
  , "Attributes" :: Maybe (Value (Object String))
  , "CustomInstanceProfileArn" :: Maybe (Value String)
  , "CustomJson" :: Maybe (Value CF.Json)
  , "CustomRecipes" :: Maybe (Value Recipes)
  , "CustomSecurityGroupIds" :: Maybe (Value (Array String))
  , "InstallUpdatesOnBoot" :: Maybe (Value Boolean)
  , "LifecycleEventConfiguration" :: Maybe (Value LifecycleEventConfiguration)
  , "LoadBasedAutoScaling" :: Maybe (Value LoadBasedAutoScaling)
  , "Packages" :: Maybe (Value (Array String))
  , "Tags" :: Maybe (Value (Array Tag))
  , "UseEbsOptimizedInstances" :: Maybe (Value Boolean)
  , "VolumeConfigurations" :: Maybe (Value (Array VolumeConfiguration))
  }

derive instance newtypeLayer :: Newtype Layer _
derive newtype instance writeLayer :: WriteForeign Layer
instance resourceLayer :: Resource Layer where type_ _ = "AWS::OpsWorks::Layer"

layer :: { "AutoAssignElasticIps" :: Value Boolean, "AutoAssignPublicIps" :: Value Boolean, "EnableAutoHealing" :: Value Boolean, "Name" :: Value String, "Shortname" :: Value String, "StackId" :: Value String, "Type" :: Value String } -> Layer
layer required = Layer
  (merge required
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
    })

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
  { "Configure" :: Maybe (Value (Array String))
  , "Deploy" :: Maybe (Value (Array String))
  , "Setup" :: Maybe (Value (Array String))
  , "Shutdown" :: Maybe (Value (Array String))
  , "Undeploy" :: Maybe (Value (Array String))
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
  { "CpuThreshold" :: Maybe (Value Number)
  , "IgnoreMetricsTime" :: Maybe (Value Int)
  , "InstanceCount" :: Maybe (Value Int)
  , "LoadThreshold" :: Maybe (Value Number)
  , "MemoryThreshold" :: Maybe (Value Number)
  , "ThresholdsWaitTime" :: Maybe (Value Int)
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
  { "DownScaling" :: Maybe (Value AutoScalingThresholds)
  , "Enable" :: Maybe (Value Boolean)
  , "UpScaling" :: Maybe (Value AutoScalingThresholds)
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
  { "ShutdownEventConfiguration" :: Maybe (Value ShutdownEventConfiguration)
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
  { "Encrypted" :: Maybe (Value Boolean)
  , "Iops" :: Maybe (Value Int)
  , "MountPoint" :: Maybe (Value String)
  , "NumberOfDisks" :: Maybe (Value Int)
  , "RaidLevel" :: Maybe (Value Int)
  , "Size" :: Maybe (Value Int)
  , "VolumeType" :: Maybe (Value String)
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
  { "DelayUntilElbConnectionsDrained" :: Maybe (Value Boolean)
  , "ExecutionTimeout" :: Maybe (Value Int)
  }

shutdownEventConfiguration :: ShutdownEventConfiguration
shutdownEventConfiguration =
  { "DelayUntilElbConnectionsDrained" : Nothing
  , "ExecutionTimeout" : Nothing
  }