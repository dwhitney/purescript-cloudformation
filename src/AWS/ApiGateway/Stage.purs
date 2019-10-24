module AWS.ApiGateway.Stage where 

import Data.Maybe (Maybe(..))
import Tag
import Foreign.Object (Object)
import Record (merge)


type Stage =
  { "RestApiId" :: String
  , "AccessLogSetting" :: Maybe AccessLogSetting
  , "CacheClusterEnabled" :: Maybe Boolean
  , "CacheClusterSize" :: Maybe String
  , "CanarySetting" :: Maybe CanarySetting
  , "ClientCertificateId" :: Maybe String
  , "DeploymentId" :: Maybe String
  , "Description" :: Maybe String
  , "DocumentationVersion" :: Maybe String
  , "MethodSettings" :: Maybe (Array MethodSetting)
  , "StageName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "TracingEnabled" :: Maybe Boolean
  , "Variables" :: Maybe (Object String)
  }

stage :: { "RestApiId" :: String } -> Stage
stage required =
  merge required
    { "AccessLogSetting" : Nothing
    , "CacheClusterEnabled" : Nothing
    , "CacheClusterSize" : Nothing
    , "CanarySetting" : Nothing
    , "ClientCertificateId" : Nothing
    , "DeploymentId" : Nothing
    , "Description" : Nothing
    , "DocumentationVersion" : Nothing
    , "MethodSettings" : Nothing
    , "StageName" : Nothing
    , "Tags" : Nothing
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
  { "DeploymentId" :: Maybe String
  , "PercentTraffic" :: Maybe Number
  , "StageVariableOverrides" :: Maybe (Object String)
  , "UseStageCache" :: Maybe Boolean
  }

canarySetting :: CanarySetting
canarySetting =
  { "DeploymentId" : Nothing
  , "PercentTraffic" : Nothing
  , "StageVariableOverrides" : Nothing
  , "UseStageCache" : Nothing
  }