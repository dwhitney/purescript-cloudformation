module CloudFormation.AWS.Batch.JobDefinition where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype JobDefinition = JobDefinition
  { "Type" :: Value String
  , "Parameters" :: Maybe (Value CF.Json)
  , "NodeProperties" :: Maybe (Value NodeProperties)
  , "Timeout" :: Maybe (Value Timeout)
  , "ContainerProperties" :: Maybe (Value ContainerProperties)
  , "JobDefinitionName" :: Maybe (Value String)
  , "RetryStrategy" :: Maybe (Value RetryStrategy)
  }

derive instance newtypeJobDefinition :: Newtype JobDefinition _
derive newtype instance writeJobDefinition :: WriteForeign JobDefinition
instance resourceJobDefinition :: Resource JobDefinition where type_ _ = "AWS::Batch::JobDefinition"

jobDefinition :: { "Type" :: Value String } -> JobDefinition
jobDefinition required = JobDefinition
  (merge required
    { "Parameters" : Nothing
    , "NodeProperties" : Nothing
    , "Timeout" : Nothing
    , "ContainerProperties" : Nothing
    , "JobDefinitionName" : Nothing
    , "RetryStrategy" : Nothing
    })

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
  { "HostPath" :: Maybe (Value String)
  , "Permissions" :: Maybe (Value (Array String))
  , "ContainerPath" :: Maybe (Value String)
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
  { "TargetNodes" :: Value String
  , "Container" :: Maybe (Value ContainerProperties)
  }

nodeRangeProperty :: { "TargetNodes" :: Value String } -> NodeRangeProperty
nodeRangeProperty required =
  (merge required
    { "Container" : Nothing
    })

-- | `AWS::Batch::JobDefinition.Timeout`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-timeout.html
-- |
-- | - `AttemptDurationSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-timeout.html#cfn-batch-jobdefinition-timeout-attemptdurationseconds
type Timeout =
  { "AttemptDurationSeconds" :: Maybe (Value Int)
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
  { "Attempts" :: Maybe (Value Int)
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
  { "MainNode" :: Value Int
  , "NodeRangeProperties" :: Value (Array NodeRangeProperty)
  , "NumNodes" :: Value Int
  }

nodeProperties :: { "MainNode" :: Value Int, "NodeRangeProperties" :: Value (Array NodeRangeProperty), "NumNodes" :: Value Int } -> NodeProperties
nodeProperties required =
  required

-- | `AWS::Batch::JobDefinition.LinuxParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties-linuxparameters.html
-- |
-- | - `Devices`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties-linuxparameters.html#cfn-batch-jobdefinition-containerproperties-linuxparameters-devices
type LinuxParameters =
  { "Devices" :: Maybe (Value (Array Device))
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
  { "SourcePath" :: Maybe (Value String)
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
  { "SoftLimit" :: Value Int
  , "HardLimit" :: Value Int
  , "Name" :: Value String
  }

ulimit :: { "SoftLimit" :: Value Int, "HardLimit" :: Value Int, "Name" :: Value String } -> Ulimit
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
  { "Value" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
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
  { "ReadOnly" :: Maybe (Value Boolean)
  , "SourceVolume" :: Maybe (Value String)
  , "ContainerPath" :: Maybe (Value String)
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
  { "Type" :: Maybe (Value String)
  , "Value" :: Maybe (Value String)
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
  { "Memory" :: Value Int
  , "Vcpus" :: Value Int
  , "Image" :: Value String
  , "User" :: Maybe (Value String)
  , "Privileged" :: Maybe (Value Boolean)
  , "LinuxParameters" :: Maybe (Value LinuxParameters)
  , "JobRoleArn" :: Maybe (Value String)
  , "ReadonlyRootFilesystem" :: Maybe (Value Boolean)
  , "ResourceRequirements" :: Maybe (Value (Array ResourceRequirement))
  , "MountPoints" :: Maybe (Value (Array MountPoints))
  , "Volumes" :: Maybe (Value (Array Volumes))
  , "Command" :: Maybe (Value (Array String))
  , "Environment" :: Maybe (Value (Array Environment))
  , "Ulimits" :: Maybe (Value (Array Ulimit))
  , "InstanceType" :: Maybe (Value String)
  }

containerProperties :: { "Memory" :: Value Int, "Vcpus" :: Value Int, "Image" :: Value String } -> ContainerProperties
containerProperties required =
  (merge required
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
    })

-- | `AWS::Batch::JobDefinition.Volumes`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html
-- |
-- | - `Host`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html#cfn-batch-jobdefinition-volumes-host
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-volumes.html#cfn-batch-jobdefinition-volumes-name
type Volumes =
  { "Host" :: Maybe (Value VolumesHost)
  , "Name" :: Maybe (Value String)
  }

volumes :: Volumes
volumes =
  { "Host" : Nothing
  , "Name" : Nothing
  }