module CloudFormation.AWS.ECS.TaskDefinition where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
  { "ContainerDefinitions" :: Maybe (Value (Array ContainerDefinition))
  , "Cpu" :: Maybe (Value String)
  , "ExecutionRoleArn" :: Maybe (Value String)
  , "Family" :: Maybe (Value String)
  , "IpcMode" :: Maybe (Value String)
  , "Memory" :: Maybe (Value String)
  , "NetworkMode" :: Maybe (Value String)
  , "PidMode" :: Maybe (Value String)
  , "PlacementConstraints" :: Maybe (Value (Array TaskDefinitionPlacementConstraint))
  , "ProxyConfiguration" :: Maybe (Value ProxyConfiguration)
  , "RequiresCompatibilities" :: Maybe (Value (Array String))
  , "Tags" :: Maybe (Value (Array Tag))
  , "TaskRoleArn" :: Maybe (Value String)
  , "Volumes" :: Maybe (Value (Array Volume))
  }

derive instance newtypeTaskDefinition :: Newtype TaskDefinition _
derive newtype instance writeTaskDefinition :: WriteForeign TaskDefinition
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
  { "CredentialsParameter" :: Maybe (Value String)
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
  { "SourcePath" :: Maybe (Value String)
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
  { "ContainerName" :: Value String
  , "ProxyConfigurationProperties" :: Maybe (Value (Array KeyValuePair))
  , "Type" :: Maybe (Value String)
  }

proxyConfiguration :: { "ContainerName" :: Value String } -> ProxyConfiguration
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
  { "Condition" :: Value String
  , "ContainerName" :: Value String
  }

containerDependency :: { "Condition" :: Value String, "ContainerName" :: Value String } -> ContainerDependency
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
  { "Capabilities" :: Maybe (Value KernelCapabilities)
  , "Devices" :: Maybe (Value (Array Device))
  , "InitProcessEnabled" :: Maybe (Value Boolean)
  , "SharedMemorySize" :: Maybe (Value Int)
  , "Tmpfs" :: Maybe (Value (Array Tmpfs))
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
  { "HardLimit" :: Value Int
  , "Name" :: Value String
  , "SoftLimit" :: Value Int
  }

ulimit :: { "HardLimit" :: Value Int, "Name" :: Value String, "SoftLimit" :: Value Int } -> Ulimit
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
  { "ContainerPort" :: Maybe (Value Int)
  , "HostPort" :: Maybe (Value Int)
  , "Protocol" :: Maybe (Value String)
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
  { "Command" :: Value (Array String)
  , "Interval" :: Maybe (Value Int)
  , "Retries" :: Maybe (Value Int)
  , "StartPeriod" :: Maybe (Value Int)
  , "Timeout" :: Maybe (Value Int)
  }

healthCheck :: { "Command" :: Value (Array String) } -> HealthCheck
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
  { "Add" :: Maybe (Value (Array String))
  , "Drop" :: Maybe (Value (Array String))
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
  { "ContainerPath" :: Maybe (Value String)
  , "ReadOnly" :: Maybe (Value Boolean)
  , "SourceVolume" :: Maybe (Value String)
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
  { "Name" :: Maybe (Value String)
  , "Value" :: Maybe (Value String)
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
  { "Command" :: Maybe (Value (Array String))
  , "Cpu" :: Maybe (Value Int)
  , "DependsOn" :: Maybe (Value (Array ContainerDependency))
  , "DisableNetworking" :: Maybe (Value Boolean)
  , "DnsSearchDomains" :: Maybe (Value (Array String))
  , "DnsServers" :: Maybe (Value (Array String))
  , "DockerLabels" :: Maybe (Value (Object String))
  , "DockerSecurityOptions" :: Maybe (Value (Array String))
  , "EntryPoint" :: Maybe (Value (Array String))
  , "Environment" :: Maybe (Value (Array KeyValuePair))
  , "Essential" :: Maybe (Value Boolean)
  , "ExtraHosts" :: Maybe (Value (Array HostEntry))
  , "HealthCheck" :: Maybe (Value HealthCheck)
  , "Hostname" :: Maybe (Value String)
  , "Image" :: Maybe (Value String)
  , "Interactive" :: Maybe (Value Boolean)
  , "Links" :: Maybe (Value (Array String))
  , "LinuxParameters" :: Maybe (Value LinuxParameters)
  , "LogConfiguration" :: Maybe (Value LogConfiguration)
  , "Memory" :: Maybe (Value Int)
  , "MemoryReservation" :: Maybe (Value Int)
  , "MountPoints" :: Maybe (Value (Array MountPoint))
  , "Name" :: Maybe (Value String)
  , "PortMappings" :: Maybe (Value (Array PortMapping))
  , "Privileged" :: Maybe (Value Boolean)
  , "PseudoTerminal" :: Maybe (Value Boolean)
  , "ReadonlyRootFilesystem" :: Maybe (Value Boolean)
  , "RepositoryCredentials" :: Maybe (Value RepositoryCredentials)
  , "ResourceRequirements" :: Maybe (Value (Array ResourceRequirement))
  , "Secrets" :: Maybe (Value (Array Secret))
  , "StartTimeout" :: Maybe (Value Int)
  , "StopTimeout" :: Maybe (Value Int)
  , "SystemControls" :: Maybe (Value (Array SystemControl))
  , "Ulimits" :: Maybe (Value (Array Ulimit))
  , "User" :: Maybe (Value String)
  , "VolumesFrom" :: Maybe (Value (Array VolumeFrom))
  , "WorkingDirectory" :: Maybe (Value String)
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
  { "Autoprovision" :: Maybe (Value Boolean)
  , "Driver" :: Maybe (Value String)
  , "DriverOpts" :: Maybe (Value (Object String))
  , "Labels" :: Maybe (Value (Object String))
  , "Scope" :: Maybe (Value String)
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
  { "Type" :: Value String
  , "Value" :: Value String
  }

resourceRequirement :: { "Type" :: Value String, "Value" :: Value String } -> ResourceRequirement
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
  { "Size" :: Value Int
  , "ContainerPath" :: Maybe (Value String)
  , "MountOptions" :: Maybe (Value (Array String))
  }

tmpfs :: { "Size" :: Value Int } -> Tmpfs
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
  { "DockerVolumeConfiguration" :: Maybe (Value DockerVolumeConfiguration)
  , "Host" :: Maybe (Value HostVolumeProperties)
  , "Name" :: Maybe (Value String)
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
  { "Namespace" :: Value String
  , "Value" :: Value String
  }

systemControl :: { "Namespace" :: Value String, "Value" :: Value String } -> SystemControl
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
  { "Type" :: Value String
  , "Expression" :: Maybe (Value String)
  }

taskDefinitionPlacementConstraint :: { "Type" :: Value String } -> TaskDefinitionPlacementConstraint
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
  { "Hostname" :: Value String
  , "IpAddress" :: Value String
  }

hostEntry :: { "Hostname" :: Value String, "IpAddress" :: Value String } -> HostEntry
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
  { "ReadOnly" :: Maybe (Value Boolean)
  , "SourceContainer" :: Maybe (Value String)
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
  { "Name" :: Value String
  , "ValueFrom" :: Value String
  }

secret :: { "Name" :: Value String, "ValueFrom" :: Value String } -> Secret
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
  { "HostPath" :: Value String
  , "ContainerPath" :: Maybe (Value String)
  , "Permissions" :: Maybe (Value (Array String))
  }

device :: { "HostPath" :: Value String } -> Device
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
  { "LogDriver" :: Value String
  , "Options" :: Maybe (Value (Object String))
  , "SecretOptions" :: Maybe (Value (Array Secret))
  }

logConfiguration :: { "LogDriver" :: Value String } -> LogConfiguration
logConfiguration required =
  (merge required
    { "Options" : Nothing
    , "SecretOptions" : Nothing
    })