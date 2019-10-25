module CloudFormation.AWS.AppMesh.VirtualNode where 

import CloudFormation (Value)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::AppMesh::VirtualNode`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html
-- |
-- | - `MeshName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html#cfn-appmesh-virtualnode-meshname
-- | - `Spec`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html#cfn-appmesh-virtualnode-spec
-- | - `VirtualNodeName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html#cfn-appmesh-virtualnode-virtualnodename
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html#cfn-appmesh-virtualnode-tags
newtype VirtualNode = VirtualNode
  { "MeshName" :: Value String
  , "Spec" :: Value VirtualNodeSpec
  , "VirtualNodeName" :: Value String
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeVirtualNode :: Newtype VirtualNode _
derive newtype instance writeVirtualNode :: WriteForeign VirtualNode
instance resourceVirtualNode :: Resource VirtualNode where type_ _ = "AWS::AppMesh::VirtualNode"

virtualNode :: { "MeshName" :: Value String, "Spec" :: Value VirtualNodeSpec, "VirtualNodeName" :: Value String } -> VirtualNode
virtualNode required = VirtualNode
  (merge required
    { "Tags" : Nothing
    })

-- | `AWS::AppMesh::VirtualNode.DnsServiceDiscovery`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-dnsservicediscovery.html
-- |
-- | - `Hostname`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-dnsservicediscovery.html#cfn-appmesh-virtualnode-dnsservicediscovery-hostname
type DnsServiceDiscovery =
  { "Hostname" :: Value String
  }

dnsServiceDiscovery :: { "Hostname" :: Value String } -> DnsServiceDiscovery
dnsServiceDiscovery required =
  required

-- | `AWS::AppMesh::VirtualNode.Listener`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html
-- |
-- | - `HealthCheck`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-healthcheck
-- | - `PortMapping`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-portmapping
type Listener =
  { "PortMapping" :: Value PortMapping
  , "HealthCheck" :: Maybe (Value HealthCheck)
  }

listener :: { "PortMapping" :: Value PortMapping } -> Listener
listener required =
  (merge required
    { "HealthCheck" : Nothing
    })

-- | `AWS::AppMesh::VirtualNode.VirtualNodeSpec`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html
-- |
-- | - `Logging`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-logging
-- | - `Backends`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-backends
-- | - `Listeners`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-listeners
-- | - `ServiceDiscovery`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-servicediscovery
type VirtualNodeSpec =
  { "Logging" :: Maybe (Value Logging)
  , "Backends" :: Maybe (Value (Array Backend))
  , "Listeners" :: Maybe (Value (Array Listener))
  , "ServiceDiscovery" :: Maybe (Value ServiceDiscovery)
  }

virtualNodeSpec :: VirtualNodeSpec
virtualNodeSpec =
  { "Logging" : Nothing
  , "Backends" : Nothing
  , "Listeners" : Nothing
  , "ServiceDiscovery" : Nothing
  }

-- | `AWS::AppMesh::VirtualNode.AccessLog`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-accesslog.html
-- |
-- | - `File`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-accesslog.html#cfn-appmesh-virtualnode-accesslog-file
type AccessLog =
  { "File" :: Maybe (Value FileAccessLog)
  }

accessLog :: AccessLog
accessLog =
  { "File" : Nothing
  }

-- | `AWS::AppMesh::VirtualNode.AwsCloudMapServiceDiscovery`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html
-- |
-- | - `NamespaceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html#cfn-appmesh-virtualnode-awscloudmapservicediscovery-namespacename
-- | - `ServiceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html#cfn-appmesh-virtualnode-awscloudmapservicediscovery-servicename
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapservicediscovery.html#cfn-appmesh-virtualnode-awscloudmapservicediscovery-attributes
type AwsCloudMapServiceDiscovery =
  { "NamespaceName" :: Value String
  , "ServiceName" :: Value String
  , "Attributes" :: Maybe (Value (Array AwsCloudMapInstanceAttribute))
  }

awsCloudMapServiceDiscovery :: { "NamespaceName" :: Value String, "ServiceName" :: Value String } -> AwsCloudMapServiceDiscovery
awsCloudMapServiceDiscovery required =
  (merge required
    { "Attributes" : Nothing
    })

-- | `AWS::AppMesh::VirtualNode.HealthCheck`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html
-- |
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-path
-- | - `UnhealthyThreshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-unhealthythreshold
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-port
-- | - `HealthyThreshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-healthythreshold
-- | - `TimeoutMillis`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-timeoutmillis
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-protocol
-- | - `IntervalMillis`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-healthcheck.html#cfn-appmesh-virtualnode-healthcheck-intervalmillis
type HealthCheck =
  { "UnhealthyThreshold" :: Value Int
  , "HealthyThreshold" :: Value Int
  , "TimeoutMillis" :: Value Int
  , "Protocol" :: Value String
  , "IntervalMillis" :: Value Int
  , "Path" :: Maybe (Value String)
  , "Port" :: Maybe (Value Int)
  }

healthCheck :: { "UnhealthyThreshold" :: Value Int, "HealthyThreshold" :: Value Int, "TimeoutMillis" :: Value Int, "Protocol" :: Value String, "IntervalMillis" :: Value Int } -> HealthCheck
healthCheck required =
  (merge required
    { "Path" : Nothing
    , "Port" : Nothing
    })

-- | `AWS::AppMesh::VirtualNode.VirtualServiceBackend`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualservicebackend.html
-- |
-- | - `VirtualServiceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualservicebackend.html#cfn-appmesh-virtualnode-virtualservicebackend-virtualservicename
type VirtualServiceBackend =
  { "VirtualServiceName" :: Value String
  }

virtualServiceBackend :: { "VirtualServiceName" :: Value String } -> VirtualServiceBackend
virtualServiceBackend required =
  required

-- | `AWS::AppMesh::VirtualNode.PortMapping`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-portmapping.html
-- |
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-portmapping.html#cfn-appmesh-virtualnode-portmapping-port
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-portmapping.html#cfn-appmesh-virtualnode-portmapping-protocol
type PortMapping =
  { "Port" :: Value Int
  , "Protocol" :: Value String
  }

portMapping :: { "Port" :: Value Int, "Protocol" :: Value String } -> PortMapping
portMapping required =
  required

-- | `AWS::AppMesh::VirtualNode.Backend`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-backend.html
-- |
-- | - `VirtualService`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-backend.html#cfn-appmesh-virtualnode-backend-virtualservice
type Backend =
  { "VirtualService" :: Maybe (Value VirtualServiceBackend)
  }

backend :: Backend
backend =
  { "VirtualService" : Nothing
  }

-- | `AWS::AppMesh::VirtualNode.AwsCloudMapInstanceAttribute`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapinstanceattribute.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapinstanceattribute.html#cfn-appmesh-virtualnode-awscloudmapinstanceattribute-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-awscloudmapinstanceattribute.html#cfn-appmesh-virtualnode-awscloudmapinstanceattribute-key
type AwsCloudMapInstanceAttribute =
  { "Value" :: Value String
  , "Key" :: Value String
  }

awsCloudMapInstanceAttribute :: { "Value" :: Value String, "Key" :: Value String } -> AwsCloudMapInstanceAttribute
awsCloudMapInstanceAttribute required =
  required

-- | `AWS::AppMesh::VirtualNode.FileAccessLog`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-fileaccesslog.html
-- |
-- | - `Path`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-fileaccesslog.html#cfn-appmesh-virtualnode-fileaccesslog-path
type FileAccessLog =
  { "Path" :: Value String
  }

fileAccessLog :: { "Path" :: Value String } -> FileAccessLog
fileAccessLog required =
  required

-- | `AWS::AppMesh::VirtualNode.ServiceDiscovery`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-servicediscovery.html
-- |
-- | - `DNS`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-servicediscovery.html#cfn-appmesh-virtualnode-servicediscovery-dns
-- | - `AWSCloudMap`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-servicediscovery.html#cfn-appmesh-virtualnode-servicediscovery-awscloudmap
type ServiceDiscovery =
  { "DNS" :: Maybe (Value DnsServiceDiscovery)
  , "AWSCloudMap" :: Maybe (Value AwsCloudMapServiceDiscovery)
  }

serviceDiscovery :: ServiceDiscovery
serviceDiscovery =
  { "DNS" : Nothing
  , "AWSCloudMap" : Nothing
  }

-- | `AWS::AppMesh::VirtualNode.Logging`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-logging.html
-- |
-- | - `AccessLog`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-logging.html#cfn-appmesh-virtualnode-logging-accesslog
type Logging =
  { "AccessLog" :: Maybe (Value AccessLog)
  }

logging :: Logging
logging =
  { "AccessLog" : Nothing
  }