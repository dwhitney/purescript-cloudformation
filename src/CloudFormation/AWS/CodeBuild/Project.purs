module CloudFormation.AWS.CodeBuild.Project where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::CodeBuild::Project`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html-- |
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
type Project =
  { "Source" :: Source
  , "Artifacts" :: Artifacts
  , "ServiceRole" :: String
  , "Environment" :: Environment
  , "Description" :: Maybe String
  , "VpcConfig" :: Maybe VpcConfig
  , "SecondarySources" :: Maybe (Array Source)
  , "EncryptionKey" :: Maybe String
  , "SourceVersion" :: Maybe String
  , "Triggers" :: Maybe ProjectTriggers
  , "SecondaryArtifacts" :: Maybe (Array Artifacts)
  , "Name" :: Maybe String
  , "BadgeEnabled" :: Maybe Boolean
  , "LogsConfig" :: Maybe LogsConfig
  , "QueuedTimeoutInMinutes" :: Maybe Int
  , "SecondarySourceVersions" :: Maybe (Array ProjectSourceVersion)
  , "Tags" :: Maybe (Array Tag)
  , "TimeoutInMinutes" :: Maybe Int
  , "Cache" :: Maybe ProjectCache
  }

project :: { "Source" :: Source, "Artifacts" :: Artifacts, "ServiceRole" :: String, "Environment" :: Environment } -> Project
project required =
  merge required
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
    }

-- | `AWS::CodeBuild::Project.Source`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html-- |
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
  { "Type" :: String
  , "ReportBuildStatus" :: Maybe Boolean
  , "Auth" :: Maybe SourceAuth
  , "SourceIdentifier" :: Maybe String
  , "BuildSpec" :: Maybe String
  , "GitCloneDepth" :: Maybe Int
  , "GitSubmodulesConfig" :: Maybe GitSubmodulesConfig
  , "InsecureSsl" :: Maybe Boolean
  , "Location" :: Maybe String
  }

source :: { "Type" :: String } -> Source
source required =
  merge required
    { "ReportBuildStatus" : Nothing
    , "Auth" : Nothing
    , "SourceIdentifier" : Nothing
    , "BuildSpec" : Nothing
    , "GitCloneDepth" : Nothing
    , "GitSubmodulesConfig" : Nothing
    , "InsecureSsl" : Nothing
    , "Location" : Nothing
    }

-- | `AWS::CodeBuild::Project.EnvironmentVariable`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-type
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-value
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-name
type EnvironmentVariable =
  { "Value" :: String
  , "Name" :: String
  , "Type" :: Maybe String
  }

environmentVariable :: { "Value" :: String, "Name" :: String } -> EnvironmentVariable
environmentVariable required =
  merge required
    { "Type" : Nothing
    }

-- | `AWS::CodeBuild::Project.ProjectTriggers`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html-- |
-- | - `FilterGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html#cfn-codebuild-project-projecttriggers-filtergroups
-- | - `Webhook`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html#cfn-codebuild-project-projecttriggers-webhook
type ProjectTriggers =
  { "FilterGroups" :: Maybe (Array FilterGroup)
  , "Webhook" :: Maybe Boolean
  }

projectTriggers :: ProjectTriggers
projectTriggers =
  { "FilterGroups" : Nothing
  , "Webhook" : Nothing
  }

type FilterGroup = Array WebhookFilter

-- | `AWS::CodeBuild::Project.ProjectCache`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html-- |
-- | - `Modes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-modes
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-type
-- | - `Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectcache.html#cfn-codebuild-project-projectcache-location
type ProjectCache =
  { "Type" :: String
  , "Modes" :: Maybe (Array String)
  , "Location" :: Maybe String
  }

projectCache :: { "Type" :: String } -> ProjectCache
projectCache required =
  merge required
    { "Modes" : Nothing
    , "Location" : Nothing
    }

-- | `AWS::CodeBuild::Project.CloudWatchLogsConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html-- |
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html#cfn-codebuild-project-cloudwatchlogsconfig-status
-- | - `GroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html#cfn-codebuild-project-cloudwatchlogsconfig-groupname
-- | - `StreamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html#cfn-codebuild-project-cloudwatchlogsconfig-streamname
type CloudWatchLogsConfig =
  { "Status" :: String
  , "GroupName" :: Maybe String
  , "StreamName" :: Maybe String
  }

cloudWatchLogsConfig :: { "Status" :: String } -> CloudWatchLogsConfig
cloudWatchLogsConfig required =
  merge required
    { "GroupName" : Nothing
    , "StreamName" : Nothing
    }

-- | `AWS::CodeBuild::Project.RegistryCredential`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html-- |
-- | - `Credential`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html#cfn-codebuild-project-registrycredential-credential
-- | - `CredentialProvider`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-registrycredential.html#cfn-codebuild-project-registrycredential-credentialprovider
type RegistryCredential =
  { "Credential" :: String
  , "CredentialProvider" :: String
  }

registryCredential :: { "Credential" :: String, "CredentialProvider" :: String } -> RegistryCredential
registryCredential required =
  required

-- | `AWS::CodeBuild::Project.Artifacts`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html-- |
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
  { "Type" :: String
  , "Path" :: Maybe String
  , "ArtifactIdentifier" :: Maybe String
  , "OverrideArtifactName" :: Maybe Boolean
  , "Packaging" :: Maybe String
  , "EncryptionDisabled" :: Maybe Boolean
  , "Location" :: Maybe String
  , "Name" :: Maybe String
  , "NamespaceType" :: Maybe String
  }

artifacts :: { "Type" :: String } -> Artifacts
artifacts required =
  merge required
    { "Path" : Nothing
    , "ArtifactIdentifier" : Nothing
    , "OverrideArtifactName" : Nothing
    , "Packaging" : Nothing
    , "EncryptionDisabled" : Nothing
    , "Location" : Nothing
    , "Name" : Nothing
    , "NamespaceType" : Nothing
    }

-- | `AWS::CodeBuild::Project.WebhookFilter`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html-- |
-- | - `Pattern`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-pattern
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-type
-- | - `ExcludeMatchedPattern`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-webhookfilter.html#cfn-codebuild-project-webhookfilter-excludematchedpattern
type WebhookFilter =
  { "Pattern" :: String
  , "Type" :: String
  , "ExcludeMatchedPattern" :: Maybe Boolean
  }

webhookFilter :: { "Pattern" :: String, "Type" :: String } -> WebhookFilter
webhookFilter required =
  merge required
    { "ExcludeMatchedPattern" : Nothing
    }

-- | `AWS::CodeBuild::Project.S3LogsConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-s3logsconfig.html-- |
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-s3logsconfig.html#cfn-codebuild-project-s3logsconfig-status
-- | - `EncryptionDisabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-s3logsconfig.html#cfn-codebuild-project-s3logsconfig-encryptiondisabled
-- | - `Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-s3logsconfig.html#cfn-codebuild-project-s3logsconfig-location
type S3LogsConfig =
  { "Status" :: String
  , "EncryptionDisabled" :: Maybe Boolean
  , "Location" :: Maybe String
  }

s3LogsConfig :: { "Status" :: String } -> S3LogsConfig
s3LogsConfig required =
  merge required
    { "EncryptionDisabled" : Nothing
    , "Location" : Nothing
    }

-- | `AWS::CodeBuild::Project.VpcConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html-- |
-- | - `Subnets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-subnets
-- | - `VpcId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-vpcid
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-securitygroupids
type VpcConfig =
  { "Subnets" :: Maybe (Array String)
  , "VpcId" :: Maybe String
  , "SecurityGroupIds" :: Maybe (Array String)
  }

vpcConfig :: VpcConfig
vpcConfig =
  { "Subnets" : Nothing
  , "VpcId" : Nothing
  , "SecurityGroupIds" : Nothing
  }

-- | `AWS::CodeBuild::Project.GitSubmodulesConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-gitsubmodulesconfig.html-- |
-- | - `FetchSubmodules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-gitsubmodulesconfig.html#cfn-codebuild-project-gitsubmodulesconfig-fetchsubmodules
type GitSubmodulesConfig =
  { "FetchSubmodules" :: Boolean
  }

gitSubmodulesConfig :: { "FetchSubmodules" :: Boolean } -> GitSubmodulesConfig
gitSubmodulesConfig required =
  required

-- | `AWS::CodeBuild::Project.Environment`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html-- |
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
  { "Type" :: String
  , "Image" :: String
  , "ComputeType" :: String
  , "EnvironmentVariables" :: Maybe (Array EnvironmentVariable)
  , "PrivilegedMode" :: Maybe Boolean
  , "ImagePullCredentialsType" :: Maybe String
  , "RegistryCredential" :: Maybe RegistryCredential
  , "Certificate" :: Maybe String
  }

environment :: { "Type" :: String, "Image" :: String, "ComputeType" :: String } -> Environment
environment required =
  merge required
    { "EnvironmentVariables" : Nothing
    , "PrivilegedMode" : Nothing
    , "ImagePullCredentialsType" : Nothing
    , "RegistryCredential" : Nothing
    , "Certificate" : Nothing
    }

-- | `AWS::CodeBuild::Project.SourceAuth`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html#cfn-codebuild-project-sourceauth-type
-- | - `Resource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html#cfn-codebuild-project-sourceauth-resource
type SourceAuth =
  { "Type" :: String
  , "Resource" :: Maybe String
  }

sourceAuth :: { "Type" :: String } -> SourceAuth
sourceAuth required =
  merge required
    { "Resource" : Nothing
    }

-- | `AWS::CodeBuild::Project.LogsConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html-- |
-- | - `CloudWatchLogs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html#cfn-codebuild-project-logsconfig-cloudwatchlogs
-- | - `S3Logs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html#cfn-codebuild-project-logsconfig-s3logs
type LogsConfig =
  { "CloudWatchLogs" :: Maybe CloudWatchLogsConfig
  , "S3Logs" :: Maybe S3LogsConfig
  }

logsConfig :: LogsConfig
logsConfig =
  { "CloudWatchLogs" : Nothing
  , "S3Logs" : Nothing
  }

-- | `AWS::CodeBuild::Project.ProjectSourceVersion`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html-- |
-- | - `SourceIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html#cfn-codebuild-project-projectsourceversion-sourceidentifier
-- | - `SourceVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projectsourceversion.html#cfn-codebuild-project-projectsourceversion-sourceversion
type ProjectSourceVersion =
  { "SourceIdentifier" :: String
  , "SourceVersion" :: Maybe String
  }

projectSourceVersion :: { "SourceIdentifier" :: String } -> ProjectSourceVersion
projectSourceVersion required =
  merge required
    { "SourceVersion" : Nothing
    }