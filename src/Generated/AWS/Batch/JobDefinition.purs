module CloudFormation.AWS.Batch.JobDefinition where 

import CloudFormation (Json)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Batch::JobDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-type
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-parameters
-- | - `NodeProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-nodeproperties
-- | - `Timeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-timeout
-- | - `ContainerProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-containerproperties
-- | - `JobDefinitionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-jobdefinitionname
-- | - `RetryStrategy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-retrystrategy
type JobDefinition =
  { "Type" :: String
  , "Parameters" :: Maybe Json
  , "NodeProperties" :: Maybe NodeProperties
  , "Timeout" :: Maybe Timeout
  , "ContainerProperties" :: Maybe ContainerProperties
  , "JobDefinitionName" :: Maybe String
  , "RetryStrategy" :: Maybe RetryStrategy
  }

jobDefinition :: { "Type" :: String } -> JobDefinition
jobDefinition required =
  merge required
    { "Parameters" : Nothing
    , "NodeProperties" : Nothing
    , "Timeout" : Nothing
    , "ContainerProperties" : Nothing
    , "JobDefinitionName" : Nothing
    , "RetryStrategy" : Nothing
    }

-- | `AWS::Batch::JobDefinition.Device`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-device.html
-- |
-- | - `HostPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-device.html#cfn-batch-jobdefinition-device-hostpath
-- | - `Permissions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-device.html#cfn-batch-jobdefinition-device-permissions
-- | - `ContainerPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-device.html#cfn-batch-jobdefinition-device-containerpath
type Device =
  { "HostPath" :: Maybe String
  , "Permissions" :: Maybe (Array String)
  , "ContainerPath" :: Maybe String
  }

device :: Device
device =
  { "HostPath" : Nothing
  , "Permissions" : Nothing
  , "ContainerPath" : Nothing
  }

-- | `AWS::Batch::JobDefinition.NodeRangeProperty`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-noderangeproperty.html
-- |
-- | - `Container`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-noderangeproperty.html#cfn-batch-jobdefinition-noderangeproperty-container
-- | - `TargetNodes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-noderangeproperty.html#cfn-batch-jobdefinition-noderangeproperty-targetnodes
type NodeRangeProperty =
  { "TargetNodes" :: String
  , "Container" :: Maybe ContainerProperties
  }

nodeRangeProperty :: { "TargetNodes" :: String } -> NodeRangeProperty
nodeRangeProperty required =
  merge required
    { "Container" : Nothing
    }

-- | `AWS::Batch::JobDefinition.Timeout`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-timeout.html
-- |
-- | - `AttemptDurationSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-timeout.html#cfn-batch-jobdefinition-timeout-attemptdurationseconds
type Timeout =
  { "AttemptDurationSeconds" :: Maybe Int
  }

timeout :: Timeout
timeout =
  { "AttemptDurationSeconds" : Nothing
  }

-- | `AWS::Batch::JobDefinition.RetryStrategy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-retrystrategy.html
-- |
-- | - `Attempts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-retrystrategy.html#cfn-batch-jobdefinition-retrystrategy-attempts
type RetryStrategy =
  { "Attempts" :: Maybe Int
  }

retryStrategy :: RetryStrategy
retryStrategy =
  { "Attempts" : Nothing
  }

-- | `AWS::Batch::JobDefinition.NodeProperties`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html
-- |
-- | - `MainNode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html#cfn-batch-jobdefinition-nodeproperties-mainnode
-- | - `NodeRangeProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html#cfn-batch-jobdefinition-nodeproperties-noderangeproperties
-- | - `NumNodes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-nodeproperties.html#cfn-batch-jobdefinition-nodeproperties-numnodes
type NodeProperties =
  { "MainNode" :: Int
  , "NodeRangeProperties" :: Array NodeRangeProperty
  , "NumNodes" :: Int
  }

nodeProperties :: { "MainNode" :: Int, "NodeRangeProperties" :: Array NodeRangeProperty, "NumNodes" :: Int } -> NodeProperties
nodeProperties required =
  required

-- | `AWS::Batch::JobDefinition.LinuxParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties-linuxparameters.html
-- |
-- | - `Devices`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties-linuxparameters.html#cfn-batch-jobdefinition-containerproperties-linuxparameters-devices
type LinuxParameters =
  { "Devices" :: Maybe (Array Device)
  }

linuxParameters :: LinuxParameters
linuxParameters =
  { "Devices" : Nothing
  }

-- | `AWS::Batch::JobDefinition.VolumesHost`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumeshost.html
-- |
-- | - `SourcePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumeshost.html#cfn-batch-jobdefinition-volumeshost-sourcepath
type VolumesHost =
  { "SourcePath" :: Maybe String
  }

volumesHost :: VolumesHost
volumesHost =
  { "SourcePath" : Nothing
  }

-- | `AWS::Batch::JobDefinition.Ulimit`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ulimit.html
-- |
-- | - `SoftLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ulimit.html#cfn-batch-jobdefinition-ulimit-softlimit
-- | - `HardLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ulimit.html#cfn-batch-jobdefinition-ulimit-hardlimit
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ulimit.html#cfn-batch-jobdefinition-ulimit-name
type Ulimit =
  { "SoftLimit" :: Int
  , "HardLimit" :: Int
  , "Name" :: String
  }

ulimit :: { "SoftLimit" :: Int, "HardLimit" :: Int, "Name" :: String } -> Ulimit
ulimit required =
  required

-- | `AWS::Batch::JobDefinition.Environment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-environment.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-environment.html#cfn-batch-jobdefinition-environment-value
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-environment.html#cfn-batch-jobdefinition-environment-name
type Environment =
  { "Value" :: Maybe String
  , "Name" :: Maybe String
  }

environment :: Environment
environment =
  { "Value" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::Batch::JobDefinition.MountPoints`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-mountpoints.html
-- |
-- | - `ReadOnly`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-mountpoints.html#cfn-batch-jobdefinition-mountpoints-readonly
-- | - `SourceVolume`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-mountpoints.html#cfn-batch-jobdefinition-mountpoints-sourcevolume
-- | - `ContainerPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-mountpoints.html#cfn-batch-jobdefinition-mountpoints-containerpath
type MountPoints =
  { "ReadOnly" :: Maybe Boolean
  , "SourceVolume" :: Maybe String
  , "ContainerPath" :: Maybe String
  }

mountPoints :: MountPoints
mountPoints =
  { "ReadOnly" : Nothing
  , "SourceVolume" : Nothing
  , "ContainerPath" : Nothing
  }

-- | `AWS::Batch::JobDefinition.ResourceRequirement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourcerequirement.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourcerequirement.html#cfn-batch-jobdefinition-resourcerequirement-type
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-resourcerequirement.html#cfn-batch-jobdefinition-resourcerequirement-value
type ResourceRequirement =
  { "Type" :: Maybe String
  , "Value" :: Maybe String
  }

resourceRequirement :: ResourceRequirement
resourceRequirement =
  { "Type" : Nothing
  , "Value" : Nothing
  }

-- | `AWS::Batch::JobDefinition.ContainerProperties`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html
-- |
-- | - `User`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-user
-- | - `Memory`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-memory
-- | - `Privileged`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-privileged
-- | - `LinuxParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-linuxparameters
-- | - `JobRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-jobrolearn
-- | - `ReadonlyRootFilesystem`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-readonlyrootfilesystem
-- | - `Vcpus`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-vcpus
-- | - `Image`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-image
-- | - `ResourceRequirements`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-resourcerequirements
-- | - `MountPoints`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-mountpoints
-- | - `Volumes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-volumes
-- | - `Command`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-command
-- | - `Environment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-environment
-- | - `Ulimits`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-ulimits
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-instancetype
type ContainerProperties =
  { "Memory" :: Int
  , "Vcpus" :: Int
  , "Image" :: String
  , "User" :: Maybe String
  , "Privileged" :: Maybe Boolean
  , "LinuxParameters" :: Maybe LinuxParameters
  , "JobRoleArn" :: Maybe String
  , "ReadonlyRootFilesystem" :: Maybe Boolean
  , "ResourceRequirements" :: Maybe (Array ResourceRequirement)
  , "MountPoints" :: Maybe (Array MountPoints)
  , "Volumes" :: Maybe (Array Volumes)
  , "Command" :: Maybe (Array String)
  , "Environment" :: Maybe (Array Environment)
  , "Ulimits" :: Maybe (Array Ulimit)
  , "InstanceType" :: Maybe String
  }

containerProperties :: { "Memory" :: Int, "Vcpus" :: Int, "Image" :: String } -> ContainerProperties
containerProperties required =
  merge required
    { "User" : Nothing
    , "Privileged" : Nothing
    , "LinuxParameters" : Nothing
    , "JobRoleArn" : Nothing
    , "ReadonlyRootFilesystem" : Nothing
    , "ResourceRequirements" : Nothing
    , "MountPoints" : Nothing
    , "Volumes" : Nothing
    , "Command" : Nothing
    , "Environment" : Nothing
    , "Ulimits" : Nothing
    , "InstanceType" : Nothing
    }

-- | `AWS::Batch::JobDefinition.Volumes`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html
-- |
-- | - `Host`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html#cfn-batch-jobdefinition-volumes-host
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html#cfn-batch-jobdefinition-volumes-name
type Volumes =
  { "Host" :: Maybe VolumesHost
  , "Name" :: Maybe String
  }

volumes :: Volumes
volumes =
  { "Host" : Nothing
  , "Name" : Nothing
  }