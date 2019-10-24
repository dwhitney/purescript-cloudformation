module CloudFormation.AWS.Batch.JobDefinition where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type JobDefinition =
  { "Type" :: String
  , "Parameters" :: Maybe Foreign
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

type NodeRangeProperty =
  { "TargetNodes" :: String
  , "Container" :: Maybe ContainerProperties
  }

nodeRangeProperty :: { "TargetNodes" :: String } -> NodeRangeProperty
nodeRangeProperty required =
  merge required
    { "Container" : Nothing
    }

type Timeout =
  { "AttemptDurationSeconds" :: Maybe Int
  }

timeout :: Timeout
timeout =
  { "AttemptDurationSeconds" : Nothing
  }

type RetryStrategy =
  { "Attempts" :: Maybe Int
  }

retryStrategy :: RetryStrategy
retryStrategy =
  { "Attempts" : Nothing
  }

type NodeProperties =
  { "MainNode" :: Int
  , "NodeRangeProperties" :: Array NodeRangeProperty
  , "NumNodes" :: Int
  }

nodeProperties :: { "MainNode" :: Int, "NodeRangeProperties" :: Array NodeRangeProperty, "NumNodes" :: Int } -> NodeProperties
nodeProperties required =
  required

type LinuxParameters =
  { "Devices" :: Maybe (Array Device)
  }

linuxParameters :: LinuxParameters
linuxParameters =
  { "Devices" : Nothing
  }

type VolumesHost =
  { "SourcePath" :: Maybe String
  }

volumesHost :: VolumesHost
volumesHost =
  { "SourcePath" : Nothing
  }

type Ulimit =
  { "SoftLimit" :: Int
  , "HardLimit" :: Int
  , "Name" :: String
  }

ulimit :: { "SoftLimit" :: Int, "HardLimit" :: Int, "Name" :: String } -> Ulimit
ulimit required =
  required

type Environment =
  { "Value" :: Maybe String
  , "Name" :: Maybe String
  }

environment :: Environment
environment =
  { "Value" : Nothing
  , "Name" : Nothing
  }

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

type ResourceRequirement =
  { "Type" :: Maybe String
  , "Value" :: Maybe String
  }

resourceRequirement :: ResourceRequirement
resourceRequirement =
  { "Type" : Nothing
  , "Value" : Nothing
  }

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

type Volumes =
  { "Host" :: Maybe VolumesHost
  , "Name" :: Maybe String
  }

volumes :: Volumes
volumes =
  { "Host" : Nothing
  , "Name" : Nothing
  }