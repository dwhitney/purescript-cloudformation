module CloudFormation.AWS.CodeBuild.Project where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CodeBuild::Project`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-description
-- | - `VpcConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-vpcconfig
-- | - `SecondarySources`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-secondarysources
-- | - `EncryptionKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-encryptionkey
-- | - `SourceVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-sourceversion
-- | - `Triggers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-triggers
-- | - `SecondaryArtifacts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-secondaryartifacts
-- | - `Source`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-source
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-name
-- | - `Artifacts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-artifacts
-- | - `BadgeEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-badgeenabled
-- | - `LogsConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-logsconfig
-- | - `ServiceRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-servicerole
-- | - `QueuedTimeoutInMinutes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-queuedtimeoutinminutes
-- | - `Environment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-environment
-- | - `SecondarySourceVersions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-secondarysourceversions
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-tags
-- | - `TimeoutInMinutes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-timeoutinminutes
-- | - `Cache`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-cache
newtype Project = Project
  { "Source" :: Value Source
  , "Artifacts" :: Value Artifacts
  , "ServiceRole" :: Value String
  , "Environment" :: Value Environment
  , "Description" :: Maybe (Value String)
  , "VpcConfig" :: Maybe (Value VpcConfig)
  , "SecondarySources" :: Maybe (Value (Array Source))
  , "EncryptionKey" :: Maybe (Value String)
  , "SourceVersion" :: Maybe (Value String)
  , "Triggers" :: Maybe (Value ProjectTriggers)
  , "SecondaryArtifacts" :: Maybe (Value (Array Artifacts))
  , "Name" :: Maybe (Value String)
  , "BadgeEnabled" :: Maybe (Value Boolean)
  , "LogsConfig" :: Maybe (Value LogsConfig)
  , "QueuedTimeoutInMinutes" :: Maybe (Value Int)
  , "SecondarySourceVersions" :: Maybe (Value (Array ProjectSourceVersion))
  , "Tags" :: Maybe (Value (Array Tag))
  , "TimeoutInMinutes" :: Maybe (Value Int)
  , "Cache" :: Maybe (Value ProjectCache)
  }

derive instance newtypeProject :: Newtype Project _
derive newtype instance writeProject :: WriteForeign Project
instance resourceProject :: Resource Project where type_ _ = "AWS::CodeBuild::Project"

project :: { "Source" :: Value Source, "Artifacts" :: Value Artifacts, "ServiceRole" :: Value String, "Environment" :: Value Environment } -> Project
project required = Project
  (merge required
    { "Description" : Nothing
    , "VpcConfig" : Nothing
    , "SecondarySources" : Nothing
    , "EncryptionKey" : Nothing
    , "SourceVersion" : Nothing
    , "Triggers" : Nothing
    , "SecondaryArtifacts" : Nothing
    , "Name" : Nothing
    , "BadgeEnabled" : Nothing
    , "LogsConfig" : Nothing
    , "QueuedTimeoutInMinutes" : Nothing
    , "SecondarySourceVersions" : Nothing
    , "Tags" : Nothing
    , "TimeoutInMinutes" : Nothing
    , "Cache" : Nothing
    })

-- | `AWS::CodeBuild::Project.Source`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-type
-- | - `ReportBuildStatus`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-reportbuildstatus
-- | - `Auth`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-auth
-- | - `SourceIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-sourceidentifier
-- | - `BuildSpec`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-buildspec
-- | - `GitCloneDepth`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-gitclonedepth
-- | - `GitSubmodulesConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-gitsubmodulesconfig
-- | - `InsecureSsl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-insecuressl
-- | - `Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-location
type Source =
  { "Type" :: Value String
  , "ReportBuildStatus" :: Maybe (Value Boolean)
  , "Auth" :: Maybe (Value SourceAuth)
  , "SourceIdentifier" :: Maybe (Value String)
  , "BuildSpec" :: Maybe (Value String)
  , "GitCloneDepth" :: Maybe (Value Int)
  , "GitSubmodulesConfig" :: Maybe (Value GitSubmodulesConfig)
  , "InsecureSsl" :: Maybe (Value Boolean)
  , "Location" :: Maybe (Value String)
  }

source :: { "Type" :: Value String } -> Source
source required =
  (merge required
    { "ReportBuildStatus" : Nothing
    , "Auth" : Nothing
    , "SourceIdentifier" : Nothing
    , "BuildSpec" : Nothing
    , "GitCloneDepth" : Nothing
    , "GitSubmodulesConfig" : Nothing
    , "InsecureSsl" : Nothing
    , "Location" : Nothing
    })

-- | `AWS::CodeBuild::Project.EnvironmentVariable`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-type
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-value
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-name
type EnvironmentVariable =
  { "Value" :: Value String
  , "Name" :: Value String
  , "Type" :: Maybe (Value String)
  }

environmentVariable :: { "Value" :: Value String, "Name" :: Value String } -> EnvironmentVariable
environmentVariable required =
  (merge required
    { "Type" : Nothing
    })

-- | `AWS::CodeBuild::Project.ProjectTriggers`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html
-- |
-- | - `FilterGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html#cfn-codebuild-project-projecttriggers-filtergroups
-- | - `Webhook`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html#cfn-codebuild-project-projecttriggers-webhook
type ProjectTriggers =
  { "FilterGroups" :: Maybe (Value (Array FilterGroup))
  , "Webhook" :: Maybe (Value Boolean)
  }

projectTriggers :: ProjectTriggers
projectTriggers =
  { "FilterGroups" : Nothing
  , "Webhook" : Nothing
  }

type FilterGroup = Array WebhookFilter

-- | `AWS::CodeBuild::Project.ProjectCache`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html
-- |
-- | - `Modes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-modes
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-type
-- | - `Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-location
type ProjectCache =
  { "Type" :: Value String
  , "Modes" :: Maybe (Value (Array String))
  , "Location" :: Maybe (Value String)
  }

projectCache :: { "Type" :: Value String } -> ProjectCache
projectCache required =
  (merge required
    { "Modes" : Nothing
    , "Location" : Nothing
    })

-- | `AWS::CodeBuild::Project.CloudWatchLogsConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html
-- |
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html#cfn-codebuild-project-cloudwatchlogsconfig-status
-- | - `GroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html#cfn-codebuild-project-cloudwatchlogsconfig-groupname
-- | - `StreamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html#cfn-codebuild-project-cloudwatchlogsconfig-streamname
type CloudWatchLogsConfig =
  { "Status" :: Value String
  , "GroupName" :: Maybe (Value String)
  , "StreamName" :: Maybe (Value String)
  }

cloudWatchLogsConfig :: { "Status" :: Value String } -> CloudWatchLogsConfig
cloudWatchLogsConfig required =
  (merge required
    { "GroupName" : Nothing
    , "StreamName" : Nothing
    })

-- | `AWS::CodeBuild::Project.RegistryCredential`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html
-- |
-- | - `Credential`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html#cfn-codebuild-project-registrycredential-credential
-- | - `CredentialProvider`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html#cfn-codebuild-project-registrycredential-credentialprovider
type RegistryCredential =
  { "Credential" :: Value String
  , "CredentialProvider" :: Value String
  }

registryCredential :: { "Credential" :: Value String, "CredentialProvider" :: Value String } -> RegistryCredential
registryCredential required =
  required

-- | `AWS::CodeBuild::Project.Artifacts`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html
-- |
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-path
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-type
-- | - `ArtifactIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-artifactidentifier
-- | - `OverrideArtifactName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-overrideartifactname
-- | - `Packaging`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-packaging
-- | - `EncryptionDisabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-encryptiondisabled
-- | - `Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-location
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-name
-- | - `NamespaceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-namespacetype
type Artifacts =
  { "Type" :: Value String
  , "Path" :: Maybe (Value String)
  , "ArtifactIdentifier" :: Maybe (Value String)
  , "OverrideArtifactName" :: Maybe (Value Boolean)
  , "Packaging" :: Maybe (Value String)
  , "EncryptionDisabled" :: Maybe (Value Boolean)
  , "Location" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
  , "NamespaceType" :: Maybe (Value String)
  }

artifacts :: { "Type" :: Value String } -> Artifacts
artifacts required =
  (merge required
    { "Path" : Nothing
    , "ArtifactIdentifier" : Nothing
    , "OverrideArtifactName" : Nothing
    , "Packaging" : Nothing
    , "EncryptionDisabled" : Nothing
    , "Location" : Nothing
    , "Name" : Nothing
    , "NamespaceType" : Nothing
    })

-- | `AWS::CodeBuild::Project.WebhookFilter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html
-- |
-- | - `Pattern`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-pattern
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-type
-- | - `ExcludeMatchedPattern`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-excludematchedpattern
type WebhookFilter =
  { "Pattern" :: Value String
  , "Type" :: Value String
  , "ExcludeMatchedPattern" :: Maybe (Value Boolean)
  }

webhookFilter :: { "Pattern" :: Value String, "Type" :: Value String } -> WebhookFilter
webhookFilter required =
  (merge required
    { "ExcludeMatchedPattern" : Nothing
    })

-- | `AWS::CodeBuild::Project.S3LogsConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-s3logsconfig.html
-- |
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-s3logsconfig.html#cfn-codebuild-project-s3logsconfig-status
-- | - `EncryptionDisabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-s3logsconfig.html#cfn-codebuild-project-s3logsconfig-encryptiondisabled
-- | - `Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-s3logsconfig.html#cfn-codebuild-project-s3logsconfig-location
type S3LogsConfig =
  { "Status" :: Value String
  , "EncryptionDisabled" :: Maybe (Value Boolean)
  , "Location" :: Maybe (Value String)
  }

s3LogsConfig :: { "Status" :: Value String } -> S3LogsConfig
s3LogsConfig required =
  (merge required
    { "EncryptionDisabled" : Nothing
    , "Location" : Nothing
    })

-- | `AWS::CodeBuild::Project.VpcConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html
-- |
-- | - `Subnets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-subnets
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-vpcid
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-securitygroupids
type VpcConfig =
  { "Subnets" :: Maybe (Value (Array String))
  , "VpcId" :: Maybe (Value String)
  , "SecurityGroupIds" :: Maybe (Value (Array String))
  }

vpcConfig :: VpcConfig
vpcConfig =
  { "Subnets" : Nothing
  , "VpcId" : Nothing
  , "SecurityGroupIds" : Nothing
  }

-- | `AWS::CodeBuild::Project.GitSubmodulesConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-gitsubmodulesconfig.html
-- |
-- | - `FetchSubmodules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-gitsubmodulesconfig.html#cfn-codebuild-project-gitsubmodulesconfig-fetchsubmodules
type GitSubmodulesConfig =
  { "FetchSubmodules" :: Value Boolean
  }

gitSubmodulesConfig :: { "FetchSubmodules" :: Value Boolean } -> GitSubmodulesConfig
gitSubmodulesConfig required =
  required

-- | `AWS::CodeBuild::Project.Environment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-type
-- | - `EnvironmentVariables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-environmentvariables
-- | - `PrivilegedMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-privilegedmode
-- | - `ImagePullCredentialsType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-imagepullcredentialstype
-- | - `Image`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-image
-- | - `RegistryCredential`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-registrycredential
-- | - `ComputeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-computetype
-- | - `Certificate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-certificate
type Environment =
  { "Type" :: Value String
  , "Image" :: Value String
  , "ComputeType" :: Value String
  , "EnvironmentVariables" :: Maybe (Value (Array EnvironmentVariable))
  , "PrivilegedMode" :: Maybe (Value Boolean)
  , "ImagePullCredentialsType" :: Maybe (Value String)
  , "RegistryCredential" :: Maybe (Value RegistryCredential)
  , "Certificate" :: Maybe (Value String)
  }

environment :: { "Type" :: Value String, "Image" :: Value String, "ComputeType" :: Value String } -> Environment
environment required =
  (merge required
    { "EnvironmentVariables" : Nothing
    , "PrivilegedMode" : Nothing
    , "ImagePullCredentialsType" : Nothing
    , "RegistryCredential" : Nothing
    , "Certificate" : Nothing
    })

-- | `AWS::CodeBuild::Project.SourceAuth`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html#cfn-codebuild-project-sourceauth-type
-- | - `Resource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html#cfn-codebuild-project-sourceauth-resource
type SourceAuth =
  { "Type" :: Value String
  , "Resource" :: Maybe (Value String)
  }

sourceAuth :: { "Type" :: Value String } -> SourceAuth
sourceAuth required =
  (merge required
    { "Resource" : Nothing
    })

-- | `AWS::CodeBuild::Project.LogsConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html
-- |
-- | - `CloudWatchLogs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html#cfn-codebuild-project-logsconfig-cloudwatchlogs
-- | - `S3Logs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html#cfn-codebuild-project-logsconfig-s3logs
type LogsConfig =
  { "CloudWatchLogs" :: Maybe (Value CloudWatchLogsConfig)
  , "S3Logs" :: Maybe (Value S3LogsConfig)
  }

logsConfig :: LogsConfig
logsConfig =
  { "CloudWatchLogs" : Nothing
  , "S3Logs" : Nothing
  }

-- | `AWS::CodeBuild::Project.ProjectSourceVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html
-- |
-- | - `SourceIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html#cfn-codebuild-project-projectsourceversion-sourceidentifier
-- | - `SourceVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html#cfn-codebuild-project-projectsourceversion-sourceversion
type ProjectSourceVersion =
  { "SourceIdentifier" :: Value String
  , "SourceVersion" :: Maybe (Value String)
  }

projectSourceVersion :: { "SourceIdentifier" :: Value String } -> ProjectSourceVersion
projectSourceVersion required =
  (merge required
    { "SourceVersion" : Nothing
    })