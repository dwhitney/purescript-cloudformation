module CloudFormation.AWS.ServiceDiscovery.Service where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Service =
  { "Description" :: Maybe String
  , "HealthCheckCustomConfig" :: Maybe HealthCheckCustomConfig
  , "DnsConfig" :: Maybe DnsConfig
  , "NamespaceId" :: Maybe String
  , "HealthCheckConfig" :: Maybe HealthCheckConfig
  , "Name" :: Maybe String
  }

service :: Service
service =
  { "Description" : Nothing
  , "HealthCheckCustomConfig" : Nothing
  , "DnsConfig" : Nothing
  , "NamespaceId" : Nothing
  , "HealthCheckConfig" : Nothing
  , "Name" : Nothing
  }

type HealthCheckConfig =
  { "Type" :: String
  , "ResourcePath" :: Maybe String
  , "FailureThreshold" :: Maybe Number
  }

healthCheckConfig :: { "Type" :: String } -> HealthCheckConfig
healthCheckConfig required =
  merge required
    { "ResourcePath" : Nothing
    , "FailureThreshold" : Nothing
    }

type DnsRecord =
  { "Type" :: String
  , "TTL" :: Number
  }

dnsRecord :: { "Type" :: String, "TTL" :: Number } -> DnsRecord
dnsRecord required =
  required

type DnsConfig =
  { "DnsRecords" :: Array DnsRecord
  , "RoutingPolicy" :: Maybe String
  , "NamespaceId" :: Maybe String
  }

dnsConfig :: { "DnsRecords" :: Array DnsRecord } -> DnsConfig
dnsConfig required =
  merge required
    { "RoutingPolicy" : Nothing
    , "NamespaceId" : Nothing
    }

type HealthCheckCustomConfig =
  { "FailureThreshold" :: Maybe Number
  }

healthCheckCustomConfig :: HealthCheckCustomConfig
healthCheckCustomConfig =
  { "FailureThreshold" : Nothing
  }