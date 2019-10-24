module AWS.CodeBuild.Project where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


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

type RegistryCredential =
  { "Credential" :: String
  , "CredentialProvider" :: String
  }

registryCredential :: { "Credential" :: String, "CredentialProvider" :: String } -> RegistryCredential
registryCredential required =
  required

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

type GitSubmodulesConfig =
  { "FetchSubmodules" :: Boolean
  }

gitSubmodulesConfig :: { "FetchSubmodules" :: Boolean } -> GitSubmodulesConfig
gitSubmodulesConfig required =
  required

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

type SourceAuth =
  { "Type" :: String
  , "Resource" :: Maybe String
  }

sourceAuth :: { "Type" :: String } -> SourceAuth
sourceAuth required =
  merge required
    { "Resource" : Nothing
    }

type LogsConfig =
  { "CloudWatchLogs" :: Maybe CloudWatchLogsConfig
  , "S3Logs" :: Maybe S3LogsConfig
  }

logsConfig :: LogsConfig
logsConfig =
  { "CloudWatchLogs" : Nothing
  , "S3Logs" : Nothing
  }

type ProjectSourceVersion =
  { "SourceIdentifier" :: String
  , "SourceVersion" :: Maybe String
  }

projectSourceVersion :: { "SourceIdentifier" :: String } -> ProjectSourceVersion
projectSourceVersion required =
  merge required
    { "SourceVersion" : Nothing
    }