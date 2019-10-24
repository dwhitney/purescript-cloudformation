module AWS.ApiGateway.Deployment where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign.Object (Object)
import Tag


type Deployment =
  { "RestApiId" :: String
  , "DeploymentCanarySettings" :: Maybe DeploymentCanarySettings
  , "Description" :: Maybe String
  , "StageDescription" :: Maybe StageDescription
  , "StageName" :: Maybe String
  }

deployment :: { "RestApiId" :: String } -> Deployment
deployment required =
  merge required
    { "DeploymentCanarySettings" : Nothing
    , "Description" : Nothing
    , "StageDescription" : Nothing
    , "StageName" : Nothing
    }

type AccessLogSetting =
  { "DestinationArn" :: Maybe String
  , "Format" :: Maybe String
  }

accessLogSetting :: AccessLogSetting
accessLogSetting =
  { "DestinationArn" : Nothing
  , "Format" : Nothing
  }

type CanarySetting =
  { "PercentTraffic" :: Maybe Number
  , "StageVariableOverrides" :: Maybe (Object String)
  , "UseStageCache" :: Maybe Boolean
  }

canarySetting :: CanarySetting
canarySetting =
  { "PercentTraffic" : Nothing
  , "StageVariableOverrides" : Nothing
  , "UseStageCache" : Nothing
  }

type StageDescription =
  { "AccessLogSetting" :: Maybe AccessLogSetting
  , "CacheClusterEnabled" :: Maybe Boolean
  , "CacheClusterSize" :: Maybe String
  , "CacheDataEncrypted" :: Maybe Boolean
  , "CacheTtlInSeconds" :: Maybe Int
  , "CachingEnabled" :: Maybe Boolean
  , "CanarySetting" :: Maybe CanarySetting
  , "ClientCertificateId" :: Maybe String
  , "DataTraceEnabled" :: Maybe Boolean
  , "Description" :: Maybe String
  , "DocumentationVersion" :: Maybe String
  , "LoggingLevel" :: Maybe String
  , "MethodSettings" :: Maybe (Array MethodSetting)
  , "MetricsEnabled" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tag)
  , "ThrottlingBurstLimit" :: Maybe Int
  , "ThrottlingRateLimit" :: Maybe Number
  , "TracingEnabled" :: Maybe Boolean
  , "Variables" :: Maybe (Object String)
  }

stageDescription :: StageDescription
stageDescription =
  { "AccessLogSetting" : Nothing
  , "CacheClusterEnabled" : Nothing
  , "CacheClusterSize" : Nothing
  , "CacheDataEncrypted" : Nothing
  , "CacheTtlInSeconds" : Nothing
  , "CachingEnabled" : Nothing
  , "CanarySetting" : Nothing
  , "ClientCertificateId" : Nothing
  , "DataTraceEnabled" : Nothing
  , "Description" : Nothing
  , "DocumentationVersion" : Nothing
  , "LoggingLevel" : Nothing
  , "MethodSettings" : Nothing
  , "MetricsEnabled" : Nothing
  , "Tags" : Nothing
  , "ThrottlingBurstLimit" : Nothing
  , "ThrottlingRateLimit" : Nothing
  , "TracingEnabled" : Nothing
  , "Variables" : Nothing
  }

type MethodSetting =
  { "CacheDataEncrypted" :: Maybe Boolean
  , "CacheTtlInSeconds" :: Maybe Int
  , "CachingEnabled" :: Maybe Boolean
  , "DataTraceEnabled" :: Maybe Boolean
  , "HttpMethod" :: Maybe String
  , "LoggingLevel" :: Maybe String
  , "MetricsEnabled" :: Maybe Boolean
  , "ResourcePath" :: Maybe String
  , "ThrottlingBurstLimit" :: Maybe Int
  , "ThrottlingRateLimit" :: Maybe Number
  }

methodSetting :: MethodSetting
methodSetting =
  { "CacheDataEncrypted" : Nothing
  , "CacheTtlInSeconds" : Nothing
  , "CachingEnabled" : Nothing
  , "DataTraceEnabled" : Nothing
  , "HttpMethod" : Nothing
  , "LoggingLevel" : Nothing
  , "MetricsEnabled" : Nothing
  , "ResourcePath" : Nothing
  , "ThrottlingBurstLimit" : Nothing
  , "ThrottlingRateLimit" : Nothing
  }

type DeploymentCanarySettings =
  { "PercentTraffic" :: Maybe Number
  , "StageVariableOverrides" :: Maybe (Object String)
  , "UseStageCache" :: Maybe Boolean
  }

deploymentCanarySettings :: DeploymentCanarySettings
deploymentCanarySettings =
  { "PercentTraffic" : Nothing
  , "StageVariableOverrides" : Nothing
  , "UseStageCache" : Nothing
  }