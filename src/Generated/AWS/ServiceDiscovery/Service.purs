module CloudFormation.AWS.ServiceDiscovery.Service where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Record (merge)


-- | `AWS::ServiceDiscovery::Service`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-servicediscovery-service.html
-- |
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
newtype Service = Service
  { "Description" :: Maybe (Value String)
  , "HealthCheckCustomConfig" :: Maybe (Value HealthCheckCustomConfig)
  , "DnsConfig" :: Maybe (Value DnsConfig)
  , "NamespaceId" :: Maybe (Value String)
  , "HealthCheckConfig" :: Maybe (Value HealthCheckConfig)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeService :: Newtype Service _
derive newtype instance writeService :: WriteForeign Service
instance resourceService :: Resource Service where type_ _ = "AWS::ServiceDiscovery::Service"

service :: Service
service = Service
  { "Description" : Nothing
  , "HealthCheckCustomConfig" : Nothing
  , "DnsConfig" : Nothing
  , "NamespaceId" : Nothing
  , "HealthCheckConfig" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::ServiceDiscovery::Service.HealthCheckConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-type
-- | - `ResourcePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-resourcepath
-- | - `FailureThreshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckconfig.html#cfn-servicediscovery-service-healthcheckconfig-failurethreshold
type HealthCheckConfig =
  { "Type" :: Value String
  , "ResourcePath" :: Maybe (Value String)
  , "FailureThreshold" :: Maybe (Value Number)
  }

healthCheckConfig :: { "Type" :: Value String } -> HealthCheckConfig
healthCheckConfig required =
  (merge required
    { "ResourcePath" : Nothing
    , "FailureThreshold" : Nothing
    })

-- | `AWS::ServiceDiscovery::Service.DnsRecord`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsrecord.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsrecord.html#cfn-servicediscovery-service-dnsrecord-type
-- | - `TTL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsrecord.html#cfn-servicediscovery-service-dnsrecord-ttl
type DnsRecord =
  { "Type" :: Value String
  , "TTL" :: Value Number
  }

dnsRecord :: { "Type" :: Value String, "TTL" :: Value Number } -> DnsRecord
dnsRecord required =
  required

-- | `AWS::ServiceDiscovery::Service.DnsConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html
-- |
-- | - `DnsRecords`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html#cfn-servicediscovery-service-dnsconfig-dnsrecords
-- | - `RoutingPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html#cfn-servicediscovery-service-dnsconfig-routingpolicy
-- | - `NamespaceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-dnsconfig.html#cfn-servicediscovery-service-dnsconfig-namespaceid
type DnsConfig =
  { "DnsRecords" :: Value (Array DnsRecord)
  , "RoutingPolicy" :: Maybe (Value String)
  , "NamespaceId" :: Maybe (Value String)
  }

dnsConfig :: { "DnsRecords" :: Value (Array DnsRecord) } -> DnsConfig
dnsConfig required =
  (merge required
    { "RoutingPolicy" : Nothing
    , "NamespaceId" : Nothing
    })

-- | `AWS::ServiceDiscovery::Service.HealthCheckCustomConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckcustomconfig.html
-- |
-- | - `FailureThreshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-service-healthcheckcustomconfig.html#cfn-servicediscovery-service-healthcheckcustomconfig-failurethreshold
type HealthCheckCustomConfig =
  { "FailureThreshold" :: Maybe (Value Number)
  }

healthCheckCustomConfig :: HealthCheckCustomConfig
healthCheckCustomConfig =
  { "FailureThreshold" : Nothing
  }