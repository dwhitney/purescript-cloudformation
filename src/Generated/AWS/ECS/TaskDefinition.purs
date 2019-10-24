module CloudFormation.AWS.ECS.TaskDefinition where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import Record (merge)
import Foreign.Object (Object)


-- | `AWS::ECS::TaskDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html
-- |
-- | - `ContainerDefinitions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-containerdefinitions
-- | - `Cpu`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-cpu
-- | - `ExecutionRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-executionrolearn
-- | - `Family`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-family
-- | - `IpcMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-ipcmode
-- | - `Memory`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-memory
-- | - `NetworkMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-networkmode
-- | - `PidMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-pidmode
-- | - `PlacementConstraints`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-placementconstraints
-- | - `ProxyConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-proxyconfiguration
-- | - `RequiresCompatibilities`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-requirescompatibilities
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-tags
-- | - `TaskRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-taskrolearn
-- | - `Volumes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-volumes
newtype TaskDefinition = TaskDefinition
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

derive instance newtypeTaskDefinition :: Newtype TaskDefinition _
instance resourceTaskDefinition :: Resource TaskDefinition where type_ _ = "AWS::ECS::TaskDefinition"

taskDefinition :: TaskDefinition
taskDefinition = TaskDefinition
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

-- | `AWS::ECS::TaskDefinition.RepositoryCredentials`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-repositorycredentials.html
-- |
-- | - `CredentialsParameter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-repositorycredentials.html#cfn-ecs-taskdefinition-repositorycredentials-credentialsparameter
type RepositoryCredentials =
  { "CredentialsParameter" :: Maybe String
  }

repositoryCredentials :: RepositoryCredentials
repositoryCredentials =
  { "CredentialsParameter" : Nothing
  }

-- | `AWS::ECS::TaskDefinition.HostVolumeProperties`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes-host.html
-- |
-- | - `SourcePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes-host.html#cfn-ecs-taskdefinition-volumes-host-sourcepath
type HostVolumeProperties =
  { "SourcePath" :: Maybe String
  }

hostVolumeProperties :: HostVolumeProperties
hostVolumeProperties =
  { "SourcePath" : Nothing
  }

-- | `AWS::ECS::TaskDefinition.ProxyConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-proxyconfiguration.html
-- |
-- | - `ContainerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-proxyconfiguration.html#cfn-ecs-taskdefinition-proxyconfiguration-containername
-- | - `ProxyConfigurationProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-proxyconfiguration.html#cfn-ecs-taskdefinition-proxyconfiguration-proxyconfigurationproperties
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-proxyconfiguration.html#cfn-ecs-taskdefinition-proxyconfiguration-type
type ProxyConfiguration =
  { "ContainerName" :: String
  , "ProxyConfigurationProperties" :: Maybe (Array KeyValuePair)
  , "Type" :: Maybe String
  }

proxyConfiguration :: { "ContainerName" :: String } -> ProxyConfiguration
proxyConfiguration required =
  (merge required
    { "ProxyConfigurationProperties" : Nothing
    , "Type" : Nothing
    })

-- | `AWS::ECS::TaskDefinition.ContainerDependency`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html
-- |
-- | - `Condition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html#cfn-ecs-taskdefinition-containerdependency-condition
-- | - `ContainerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdependency.html#cfn-ecs-taskdefinition-containerdependency-containername
type ContainerDependency =
  { "Condition" :: String
  , "ContainerName" :: String
  }

containerDependency :: { "Condition" :: String, "ContainerName" :: String } -> ContainerDependency
containerDependency required =
  required

-- | `AWS::ECS::TaskDefinition.LinuxParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html
-- |
-- | - `Capabilities`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-capabilities
-- | - `Devices`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-devices
-- | - `InitProcessEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-initprocessenabled
-- | - `SharedMemorySize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-sharedmemorysize
-- | - `Tmpfs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-tmpfs
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

-- | `AWS::ECS::TaskDefinition.Ulimit`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html
-- |
-- | - `HardLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-hardlimit
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-name
-- | - `SoftLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-ulimit.html#cfn-ecs-taskdefinition-containerdefinition-ulimit-softlimit
type Ulimit =
  { "HardLimit" :: Int
  , "Name" :: String
  , "SoftLimit" :: Int
  }

ulimit :: { "HardLimit" :: Int, "Name" :: String, "SoftLimit" :: Int } -> Ulimit
ulimit required =
  required

-- | `AWS::ECS::TaskDefinition.PortMapping`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-portmappings.html
-- |
-- | - `ContainerPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-portmappings.html#cfn-ecs-taskdefinition-containerdefinition-portmappings-containerport
-- | - `HostPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-portmappings.html#cfn-ecs-taskdefinition-containerdefinition-portmappings-readonly
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-portmappings.html#cfn-ecs-taskdefinition-containerdefinition-portmappings-sourcevolume
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

-- | `AWS::ECS::TaskDefinition.HealthCheck`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html
-- |
-- | - `Command`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-command
-- | - `Interval`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-interval
-- | - `Retries`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-retries
-- | - `StartPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-startperiod
-- | - `Timeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-healthcheck.html#cfn-ecs-taskdefinition-healthcheck-timeout
type HealthCheck =
  { "Command" :: Array String
  , "Interval" :: Maybe Int
  , "Retries" :: Maybe Int
  , "StartPeriod" :: Maybe Int
  , "Timeout" :: Maybe Int
  }

healthCheck :: { "Command" :: Array String } -> HealthCheck
healthCheck required =
  (merge required
    { "Interval" : Nothing
    , "Retries" : Nothing
    , "StartPeriod" : Nothing
    , "Timeout" : Nothing
    })

-- | `AWS::ECS::TaskDefinition.KernelCapabilities`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html
-- |
-- | - `Add`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html#cfn-ecs-taskdefinition-kernelcapabilities-add
-- | - `Drop`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html#cfn-ecs-taskdefinition-kernelcapabilities-drop
type KernelCapabilities =
  { "Add" :: Maybe (Array String)
  , "Drop" :: Maybe (Array String)
  }

kernelCapabilities :: KernelCapabilities
kernelCapabilities =
  { "Add" : Nothing
  , "Drop" : Nothing
  }

-- | `AWS::ECS::TaskDefinition.MountPoint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-mountpoints.html
-- |
-- | - `ContainerPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-mountpoints.html#cfn-ecs-taskdefinition-containerdefinition-mountpoints-containerpath
-- | - `ReadOnly`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-mountpoints.html#cfn-ecs-taskdefinition-containerdefinition-mountpoints-readonly
-- | - `SourceVolume`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-mountpoints.html#cfn-ecs-taskdefinition-containerdefinition-mountpoints-sourcevolume
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

-- | `AWS::ECS::TaskDefinition.KeyValuePair`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-environment.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-environment.html#cfn-ecs-taskdefinition-containerdefinition-environment-name
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-environment.html#cfn-ecs-taskdefinition-containerdefinition-environment-value
type KeyValuePair =
  { "Name" :: Maybe String
  , "Value" :: Maybe String
  }

keyValuePair :: KeyValuePair
keyValuePair =
  { "Name" : Nothing
  , "Value" : Nothing
  }

-- | `AWS::ECS::TaskDefinition.ContainerDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html
-- |
-- | - `Command`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-command
-- | - `Cpu`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-cpu
-- | - `DependsOn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-dependson
-- | - `DisableNetworking`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-disablenetworking
-- | - `DnsSearchDomains`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-dnssearchdomains
-- | - `DnsServers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-dnsservers
-- | - `DockerLabels`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-dockerlabels
-- | - `DockerSecurityOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-dockersecurityoptions
-- | - `EntryPoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-entrypoint
-- | - `Environment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-environment
-- | - `Essential`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-essential
-- | - `ExtraHosts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-extrahosts
-- | - `HealthCheck`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-healthcheck
-- | - `Hostname`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-hostname
-- | - `Image`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-image
-- | - `Interactive`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-interactive
-- | - `Links`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-links
-- | - `LinuxParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-linuxparameters
-- | - `LogConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-logconfiguration
-- | - `Memory`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-memory
-- | - `MemoryReservation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-memoryreservation
-- | - `MountPoints`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-mountpoints
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-name
-- | - `PortMappings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-portmappings
-- | - `Privileged`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-privileged
-- | - `PseudoTerminal`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-pseudoterminal
-- | - `ReadonlyRootFilesystem`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-readonlyrootfilesystem
-- | - `RepositoryCredentials`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-repositorycredentials
-- | - `ResourceRequirements`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-resourcerequirements
-- | - `Secrets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-secrets
-- | - `StartTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-starttimeout
-- | - `StopTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-stoptimeout
-- | - `SystemControls`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-systemcontrols
-- | - `Ulimits`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-ulimits
-- | - `User`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-user
-- | - `VolumesFrom`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-volumesfrom
-- | - `WorkingDirectory`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions.html#cfn-ecs-taskdefinition-containerdefinition-workingdirectory
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

-- | `AWS::ECS::TaskDefinition.DockerVolumeConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html
-- |
-- | - `Autoprovision`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-autoprovision
-- | - `Driver`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-driver
-- | - `DriverOpts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-driveropts
-- | - `Labels`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-labels
-- | - `Scope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-scope
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

-- | `AWS::ECS::TaskDefinition.ResourceRequirement`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-resourcerequirement.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-resourcerequirement.html#cfn-ecs-taskdefinition-resourcerequirement-type
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-resourcerequirement.html#cfn-ecs-taskdefinition-resourcerequirement-value
type ResourceRequirement =
  { "Type" :: String
  , "Value" :: String
  }

resourceRequirement :: { "Type" :: String, "Value" :: String } -> ResourceRequirement
resourceRequirement required =
  required

-- | `AWS::ECS::TaskDefinition.Tmpfs`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-tmpfs.html
-- |
-- | - `ContainerPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-tmpfs.html#cfn-ecs-taskdefinition-tmpfs-containerpath
-- | - `MountOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-tmpfs.html#cfn-ecs-taskdefinition-tmpfs-mountoptions
-- | - `Size`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-tmpfs.html#cfn-ecs-taskdefinition-tmpfs-size
type Tmpfs =
  { "Size" :: Int
  , "ContainerPath" :: Maybe String
  , "MountOptions" :: Maybe (Array String)
  }

tmpfs :: { "Size" :: Int } -> Tmpfs
tmpfs required =
  (merge required
    { "ContainerPath" : Nothing
    , "MountOptions" : Nothing
    })

-- | `AWS::ECS::TaskDefinition.Volume`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes.html
-- |
-- | - `DockerVolumeConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes.html#cfn-ecs-taskdefinition-volume-dockervolumeconfiguration
-- | - `Host`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes.html#cfn-ecs-taskdefinition-volumes-host
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes.html#cfn-ecs-taskdefinition-volumes-name
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

-- | `AWS::ECS::TaskDefinition.SystemControl`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html
-- |
-- | - `Namespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html#cfn-ecs-taskdefinition-systemcontrol-namespace
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-systemcontrol.html#cfn-ecs-taskdefinition-systemcontrol-value
type SystemControl =
  { "Namespace" :: String
  , "Value" :: String
  }

systemControl :: { "Namespace" :: String, "Value" :: String } -> SystemControl
systemControl required =
  required

-- | `AWS::ECS::TaskDefinition.TaskDefinitionPlacementConstraint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-taskdefinitionplacementconstraint.html
-- |
-- | - `Expression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-taskdefinitionplacementconstraint.html#cfn-ecs-taskdefinition-taskdefinitionplacementconstraint-expression
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-taskdefinitionplacementconstraint.html#cfn-ecs-taskdefinition-taskdefinitionplacementconstraint-type
type TaskDefinitionPlacementConstraint =
  { "Type" :: String
  , "Expression" :: Maybe String
  }

taskDefinitionPlacementConstraint :: { "Type" :: String } -> TaskDefinitionPlacementConstraint
taskDefinitionPlacementConstraint required =
  (merge required
    { "Expression" : Nothing
    })

-- | `AWS::ECS::TaskDefinition.HostEntry`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-hostentry.html
-- |
-- | - `Hostname`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-hostentry.html#cfn-ecs-taskdefinition-containerdefinition-hostentry-hostname
-- | - `IpAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-hostentry.html#cfn-ecs-taskdefinition-containerdefinition-hostentry-ipaddress
type HostEntry =
  { "Hostname" :: String
  , "IpAddress" :: String
  }

hostEntry :: { "Hostname" :: String, "IpAddress" :: String } -> HostEntry
hostEntry required =
  required

-- | `AWS::ECS::TaskDefinition.VolumeFrom`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-volumesfrom.html
-- |
-- | - `ReadOnly`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-volumesfrom.html#cfn-ecs-taskdefinition-containerdefinition-volumesfrom-readonly
-- | - `SourceContainer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-volumesfrom.html#cfn-ecs-taskdefinition-containerdefinition-volumesfrom-sourcecontainer
type VolumeFrom =
  { "ReadOnly" :: Maybe Boolean
  , "SourceContainer" :: Maybe String
  }

volumeFrom :: VolumeFrom
volumeFrom =
  { "ReadOnly" : Nothing
  , "SourceContainer" : Nothing
  }

-- | `AWS::ECS::TaskDefinition.Secret`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-secret.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-secret.html#cfn-ecs-taskdefinition-secret-name
-- | - `ValueFrom`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-secret.html#cfn-ecs-taskdefinition-secret-valuefrom
type Secret =
  { "Name" :: String
  , "ValueFrom" :: String
  }

secret :: { "Name" :: String, "ValueFrom" :: String } -> Secret
secret required =
  required

-- | `AWS::ECS::TaskDefinition.Device`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-device.html
-- |
-- | - `ContainerPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-device.html#cfn-ecs-taskdefinition-device-containerpath
-- | - `HostPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-device.html#cfn-ecs-taskdefinition-device-hostpath
-- | - `Permissions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-device.html#cfn-ecs-taskdefinition-device-permissions
type Device =
  { "HostPath" :: String
  , "ContainerPath" :: Maybe String
  , "Permissions" :: Maybe (Array String)
  }

device :: { "HostPath" :: String } -> Device
device required =
  (merge required
    { "ContainerPath" : Nothing
    , "Permissions" : Nothing
    })

-- | `AWS::ECS::TaskDefinition.LogConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html
-- |
-- | - `LogDriver`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html#cfn-ecs-taskdefinition-containerdefinition-logconfiguration-logdriver
-- | - `Options`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html#cfn-ecs-taskdefinition-containerdefinition-logconfiguration-options
-- | - `SecretOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-containerdefinitions-logconfiguration.html#cfn-ecs-taskdefinition-logconfiguration-secretoptions
type LogConfiguration =
  { "LogDriver" :: String
  , "Options" :: Maybe (Object String)
  , "SecretOptions" :: Maybe (Array Secret)
  }

logConfiguration :: { "LogDriver" :: String } -> LogConfiguration
logConfiguration required =
  (merge required
    { "Options" : Nothing
    , "SecretOptions" : Nothing
    })