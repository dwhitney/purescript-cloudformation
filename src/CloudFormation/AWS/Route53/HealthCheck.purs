module CloudFormation.AWS.Route53.HealthCheck where 

import Data.Maybe (Maybe(..))
import Record (merge)


type HealthCheck =
  { "HealthCheckConfig" :: HealthCheckConfig
  , "HealthCheckTags" :: Maybe (Array HealthCheckTag)
  }

healthCheck :: { "HealthCheckConfig" :: HealthCheckConfig } -> HealthCheck
healthCheck required =
  merge required
    { "HealthCheckTags" : Nothing
    }

type HealthCheckTag =
  { "Key" :: String
  , "Value" :: String
  }

healthCheckTag :: { "Key" :: String, "Value" :: String } -> HealthCheckTag
healthCheckTag required =
  required

type AlarmIdentifier =
  { "Name" :: String
  , "Region" :: String
  }

alarmIdentifier :: { "Name" :: String, "Region" :: String } -> AlarmIdentifier
alarmIdentifier required =
  required

type HealthCheckConfig =
  { "Type" :: String
  , "AlarmIdentifier" :: Maybe AlarmIdentifier
  , "ChildHealthChecks" :: Maybe (Array String)
  , "EnableSNI" :: Maybe Boolean
  , "FailureThreshold" :: Maybe Int
  , "FullyQualifiedDomainName" :: Maybe String
  , "HealthThreshold" :: Maybe Int
  , "IPAddress" :: Maybe String
  , "InsufficientDataHealthStatus" :: Maybe String
  , "Inverted" :: Maybe Boolean
  , "MeasureLatency" :: Maybe Boolean
  , "Port" :: Maybe Int
  , "Regions" :: Maybe (Array String)
  , "RequestInterval" :: Maybe Int
  , "ResourcePath" :: Maybe String
  , "SearchString" :: Maybe String
  }

healthCheckConfig :: { "Type" :: String } -> HealthCheckConfig
healthCheckConfig required =
  merge required
    { "AlarmIdentifier" : Nothing
    , "ChildHealthChecks" : Nothing
    , "EnableSNI" : Nothing
    , "FailureThreshold" : Nothing
    , "FullyQualifiedDomainName" : Nothing
    , "HealthThreshold" : Nothing
    , "IPAddress" : Nothing
    , "InsufficientDataHealthStatus" : Nothing
    , "Inverted" : Nothing
    , "MeasureLatency" : Nothing
    , "Port" : Nothing
    , "Regions" : Nothing
    , "RequestInterval" : Nothing
    , "ResourcePath" : Nothing
    , "SearchString" : Nothing
    }