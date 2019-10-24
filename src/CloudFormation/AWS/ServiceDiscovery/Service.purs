module CloudFormation.AWS.ServiceDiscovery.Service where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ServiceDiscovery::Service`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html#cfn-servicediscovery-service-description
-- | - `HealthCheckCustomConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html#cfn-servicediscovery-service-healthcheckcustomconfig
-- | - `DnsConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html#cfn-servicediscovery-service-dnsconfig
-- | - `NamespaceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html#cfn-servicediscovery-service-namespaceid
-- | - `HealthCheckConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html#cfn-servicediscovery-service-healthcheckconfig
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html#cfn-servicediscovery-service-name
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

-- | `AWS::ServiceDiscovery::Service.HealthCheckConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-type
-- | - `ResourcePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-resourcepath
-- | - `FailureThreshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-failurethreshold
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

-- | `AWS::ServiceDiscovery::Service.DnsRecord`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsrecord.html-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsrecord.html#cfn-servicediscovery-service-dnsrecord-type
-- | - `TTL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsrecord.html#cfn-servicediscovery-service-dnsrecord-ttl
type DnsRecord =
  { "Type" :: String
  , "TTL" :: Number
  }

dnsRecord :: { "Type" :: String, "TTL" :: Number } -> DnsRecord
dnsRecord required =
  required

-- | `AWS::ServiceDiscovery::Service.DnsConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html-- |
-- | - `DnsRecords`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html#cfn-servicediscovery-service-dnsconfig-dnsrecords
-- | - `RoutingPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html#cfn-servicediscovery-service-dnsconfig-routingpolicy
-- | - `NamespaceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html#cfn-servicediscovery-service-dnsconfig-namespaceid
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

-- | `AWS::ServiceDiscovery::Service.HealthCheckCustomConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckcustomconfig.html-- |
-- | - `FailureThreshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckcustomconfig.html#cfn-servicediscovery-service-healthcheckcustomconfig-failurethreshold
type HealthCheckCustomConfig =
  { "FailureThreshold" :: Maybe Number
  }

healthCheckCustomConfig :: HealthCheckCustomConfig
healthCheckCustomConfig =
  { "FailureThreshold" : Nothing
  }