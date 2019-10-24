module AWS.ECS.TaskDefinition where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)
import Foreign.Object (Object)


type TaskDefinition =
  { "ContainerDefinitions" :: Maybe (Array ContainerDefinition)
  , "Cpu" :: Maybe String
  , "ExecutionRoleArn" :: Maybe String
  , "Family" :: Maybe String
  , "IpcMode" :: Maybe String
  , "Memory" :: Maybe String
  , "NetworkMode" :: Maybe String
  , "PidMode" :: Maybe String
  , "PlacementConstraints" :: Maybe (Array TaskDefinitionPlacementConstraint)
  , "ProxyConfiguration" :: Maybe ProxyConfiguration
  , "RequiresCompatibilities" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  , "TaskRoleArn" :: Maybe String
  , "Volumes" :: Maybe (Array Volume)
  }

taskDefinition :: TaskDefinition
taskDefinition =
  { "ContainerDefinitions" : Nothing
  , "Cpu" : Nothing
  , "ExecutionRoleArn" : Nothing
  , "Family" : Nothing
  , "IpcMode" : Nothing
  , "Memory" : Nothing
  , "NetworkMode" : Nothing
  , "PidMode" : Nothing
  , "PlacementConstraints" : Nothing
  , "ProxyConfiguration" : Nothing
  , "RequiresCompatibilities" : Nothing
  , "Tags" : Nothing
  , "TaskRoleArn" : Nothing
  , "Volumes" : Nothing
  }

type RepositoryCredentials =
  { "CredentialsParameter" :: Maybe String
  }

repositoryCredentials :: RepositoryCredentials
repositoryCredentials =
  { "CredentialsParameter" : Nothing
  }

type HostVolumeProperties =
  { "SourcePath" :: Maybe String
  }

hostVolumeProperties :: HostVolumeProperties
hostVolumeProperties =
  { "SourcePath" : Nothing
  }

type ProxyConfiguration =
  { "ContainerName" :: String
  , "ProxyConfigurationProperties" :: Maybe (Array KeyValuePair)
  , "Type" :: Maybe String
  }

proxyConfiguration :: { "ContainerName" :: String } -> ProxyConfiguration
proxyConfiguration required =
  merge required
    { "ProxyConfigurationProperties" : Nothing
    , "Type" : Nothing
    }

type ContainerDependency =
  { "Condition" :: String
  , "ContainerName" :: String
  }

containerDependency :: { "Condition" :: String, "ContainerName" :: String } -> ContainerDependency
containerDependency required =
  required

type LinuxParameters =
  { "Capabilities" :: Maybe KernelCapabilities
  , "Devices" :: Maybe (Array Device)
  , "InitProcessEnabled" :: Maybe Boolean
  , "SharedMemorySize" :: Maybe Int
  , "Tmpfs" :: Maybe (Array Tmpfs)
  }

linuxParameters :: LinuxParameters
linuxParameters =
  { "Capabilities" : Nothing
  , "Devices" : Nothing
  , "InitProcessEnabled" : Nothing
  , "SharedMemorySize" : Nothing
  , "Tmpfs" : Nothing
  }

type Ulimit =
  { "HardLimit" :: Int
  , "Name" :: String
  , "SoftLimit" :: Int
  }

ulimit :: { "HardLimit" :: Int, "Name" :: String, "SoftLimit" :: Int } -> Ulimit
ulimit required =
  required

type PortMapping =
  { "ContainerPort" :: Maybe Int
  , "HostPort" :: Maybe Int
  , "Protocol" :: Maybe String
  }

portMapping :: PortMapping
portMapping =
  { "ContainerPort" : Nothing
  , "HostPort" : Nothing
  , "Protocol" : Nothing
  }

type HealthCheck =
  { "Command" :: Array String
  , "Interval" :: Maybe Int
  , "Retries" :: Maybe Int
  , "StartPeriod" :: Maybe Int
  , "Timeout" :: Maybe Int
  }

healthCheck :: { "Command" :: Array String } -> HealthCheck
healthCheck required =
  merge required
    { "Interval" : Nothing
    , "Retries" : Nothing
    , "StartPeriod" : Nothing
    , "Timeout" : Nothing
    }

type KernelCapabilities =
  { "Add" :: Maybe (Array String)
  , "Drop" :: Maybe (Array String)
  }

kernelCapabilities :: KernelCapabilities
kernelCapabilities =
  { "Add" : Nothing
  , "Drop" : Nothing
  }

type MountPoint =
  { "ContainerPath" :: Maybe String
  , "ReadOnly" :: Maybe Boolean
  , "SourceVolume" :: Maybe String
  }

mountPoint :: MountPoint
mountPoint =
  { "ContainerPath" : Nothing
  , "ReadOnly" : Nothing
  , "SourceVolume" : Nothing
  }

type KeyValuePair =
  { "Name" :: Maybe String
  , "Value" :: Maybe String
  }

keyValuePair :: KeyValuePair
keyValuePair =
  { "Name" : Nothing
  , "Value" : Nothing
  }

type ContainerDefinition =
  { "Command" :: Maybe (Array String)
  , "Cpu" :: Maybe Int
  , "DependsOn" :: Maybe (Array ContainerDependency)
  , "DisableNetworking" :: Maybe Boolean
  , "DnsSearchDomains" :: Maybe (Array String)
  , "DnsServers" :: Maybe (Array String)
  , "DockerLabels" :: Maybe (Object String)
  , "DockerSecurityOptions" :: Maybe (Array String)
  , "EntryPoint" :: Maybe (Array String)
  , "Environment" :: Maybe (Array KeyValuePair)
  , "Essential" :: Maybe Boolean
  , "ExtraHosts" :: Maybe (Array HostEntry)
  , "HealthCheck" :: Maybe HealthCheck
  , "Hostname" :: Maybe String
  , "Image" :: Maybe String
  , "Interactive" :: Maybe Boolean
  , "Links" :: Maybe (Array String)
  , "LinuxParameters" :: Maybe LinuxParameters
  , "LogConfiguration" :: Maybe LogConfiguration
  , "Memory" :: Maybe Int
  , "MemoryReservation" :: Maybe Int
  , "MountPoints" :: Maybe (Array MountPoint)
  , "Name" :: Maybe String
  , "PortMappings" :: Maybe (Array PortMapping)
  , "Privileged" :: Maybe Boolean
  , "PseudoTerminal" :: Maybe Boolean
  , "ReadonlyRootFilesystem" :: Maybe Boolean
  , "RepositoryCredentials" :: Maybe RepositoryCredentials
  , "ResourceRequirements" :: Maybe (Array ResourceRequirement)
  , "Secrets" :: Maybe (Array Secret)
  , "StartTimeout" :: Maybe Int
  , "StopTimeout" :: Maybe Int
  , "SystemControls" :: Maybe (Array SystemControl)
  , "Ulimits" :: Maybe (Array Ulimit)
  , "User" :: Maybe String
  , "VolumesFrom" :: Maybe (Array VolumeFrom)
  , "WorkingDirectory" :: Maybe String
  }

containerDefinition :: ContainerDefinition
containerDefinition =
  { "Command" : Nothing
  , "Cpu" : Nothing
  , "DependsOn" : Nothing
  , "DisableNetworking" : Nothing
  , "DnsSearchDomains" : Nothing
  , "DnsServers" : Nothing
  , "DockerLabels" : Nothing
  , "DockerSecurityOptions" : Nothing
  , "EntryPoint" : Nothing
  , "Environment" : Nothing
  , "Essential" : Nothing
  , "ExtraHosts" : Nothing
  , "HealthCheck" : Nothing
  , "Hostname" : Nothing
  , "Image" : Nothing
  , "Interactive" : Nothing
  , "Links" : Nothing
  , "LinuxParameters" : Nothing
  , "LogConfiguration" : Nothing
  , "Memory" : Nothing
  , "MemoryReservation" : Nothing
  , "MountPoints" : Nothing
  , "Name" : Nothing
  , "PortMappings" : Nothing
  , "Privileged" : Nothing
  , "PseudoTerminal" : Nothing
  , "ReadonlyRootFilesystem" : Nothing
  , "RepositoryCredentials" : Nothing
  , "ResourceRequirements" : Nothing
  , "Secrets" : Nothing
  , "StartTimeout" : Nothing
  , "StopTimeout" : Nothing
  , "SystemControls" : Nothing
  , "Ulimits" : Nothing
  , "User" : Nothing
  , "VolumesFrom" : Nothing
  , "WorkingDirectory" : Nothing
  }

type DockerVolumeConfiguration =
  { "Autoprovision" :: Maybe Boolean
  , "Driver" :: Maybe String
  , "DriverOpts" :: Maybe (Object String)
  , "Labels" :: Maybe (Object String)
  , "Scope" :: Maybe String
  }

dockerVolumeConfiguration :: DockerVolumeConfiguration
dockerVolumeConfiguration =
  { "Autoprovision" : Nothing
  , "Driver" : Nothing
  , "DriverOpts" : Nothing
  , "Labels" : Nothing
  , "Scope" : Nothing
  }

type ResourceRequirement =
  { "Type" :: String
  , "Value" :: String
  }

resourceRequirement :: { "Type" :: String, "Value" :: String } -> ResourceRequirement
resourceRequirement required =
  required

type Tmpfs =
  { "Size" :: Int
  , "ContainerPath" :: Maybe String
  , "MountOptions" :: Maybe (Array String)
  }

tmpfs :: { "Size" :: Int } -> Tmpfs
tmpfs required =
  merge required
    { "ContainerPath" : Nothing
    , "MountOptions" : Nothing
    }

type Volume =
  { "DockerVolumeConfiguration" :: Maybe DockerVolumeConfiguration
  , "Host" :: Maybe HostVolumeProperties
  , "Name" :: Maybe String
  }

volume :: Volume
volume =
  { "DockerVolumeConfiguration" : Nothing
  , "Host" : Nothing
  , "Name" : Nothing
  }

type SystemControl =
  { "Namespace" :: String
  , "Value" :: String
  }

systemControl :: { "Namespace" :: String, "Value" :: String } -> SystemControl
systemControl required =
  required

type TaskDefinitionPlacementConstraint =
  { "Type" :: String
  , "Expression" :: Maybe String
  }

taskDefinitionPlacementConstraint :: { "Type" :: String } -> TaskDefinitionPlacementConstraint
taskDefinitionPlacementConstraint required =
  merge required
    { "Expression" : Nothing
    }

type HostEntry =
  { "Hostname" :: String
  , "IpAddress" :: String
  }

hostEntry :: { "Hostname" :: String, "IpAddress" :: String } -> HostEntry
hostEntry required =
  required

type VolumeFrom =
  { "ReadOnly" :: Maybe Boolean
  , "SourceContainer" :: Maybe String
  }

volumeFrom :: VolumeFrom
volumeFrom =
  { "ReadOnly" : Nothing
  , "SourceContainer" : Nothing
  }

type Secret =
  { "Name" :: String
  , "ValueFrom" :: String
  }

secret :: { "Name" :: String, "ValueFrom" :: String } -> Secret
secret required =
  required

type Device =
  { "HostPath" :: String
  , "ContainerPath" :: Maybe String
  , "Permissions" :: Maybe (Array String)
  }

device :: { "HostPath" :: String } -> Device
device required =
  merge required
    { "ContainerPath" : Nothing
    , "Permissions" : Nothing
    }

type LogConfiguration =
  { "LogDriver" :: String
  , "Options" :: Maybe (Object String)
  , "SecretOptions" :: Maybe (Array Secret)
  }

logConfiguration :: { "LogDriver" :: String } -> LogConfiguration
logConfiguration required =
  merge required
    { "Options" : Nothing
    , "SecretOptions" : Nothing
    }