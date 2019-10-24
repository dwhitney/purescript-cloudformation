module CloudFormation.AWS.AppMesh.VirtualNode where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


type VirtualNode =
  { "MeshName" :: String
  , "Spec" :: VirtualNodeSpec
  , "VirtualNodeName" :: String
  , "Tags" :: Maybe (Array Tag)
  }

virtualNode :: { "MeshName" :: String, "Spec" :: VirtualNodeSpec, "VirtualNodeName" :: String } -> VirtualNode
virtualNode required =
  merge required
    { "Tags" : Nothing
    }

type DnsServiceDiscovery =
  { "Hostname" :: String
  }

dnsServiceDiscovery :: { "Hostname" :: String } -> DnsServiceDiscovery
dnsServiceDiscovery required =
  required

type Listener =
  { "PortMapping" :: PortMapping
  , "HealthCheck" :: Maybe HealthCheck
  }

listener :: { "PortMapping" :: PortMapping } -> Listener
listener required =
  merge required
    { "HealthCheck" : Nothing
    }

type VirtualNodeSpec =
  { "Logging" :: Maybe Logging
  , "Backends" :: Maybe (Array Backend)
  , "Listeners" :: Maybe (Array Listener)
  , "ServiceDiscovery" :: Maybe ServiceDiscovery
  }

virtualNodeSpec :: VirtualNodeSpec
virtualNodeSpec =
  { "Logging" : Nothing
  , "Backends" : Nothing
  , "Listeners" : Nothing
  , "ServiceDiscovery" : Nothing
  }

type AccessLog =
  { "File" :: Maybe FileAccessLog
  }

accessLog :: AccessLog
accessLog =
  { "File" : Nothing
  }

type AwsCloudMapServiceDiscovery =
  { "NamespaceName" :: String
  , "ServiceName" :: String
  , "Attributes" :: Maybe (Array AwsCloudMapInstanceAttribute)
  }

awsCloudMapServiceDiscovery :: { "NamespaceName" :: String, "ServiceName" :: String } -> AwsCloudMapServiceDiscovery
awsCloudMapServiceDiscovery required =
  merge required
    { "Attributes" : Nothing
    }

type HealthCheck =
  { "UnhealthyThreshold" :: Int
  , "HealthyThreshold" :: Int
  , "TimeoutMillis" :: Int
  , "Protocol" :: String
  , "IntervalMillis" :: Int
  , "Path" :: Maybe String
  , "Port" :: Maybe Int
  }

healthCheck :: { "UnhealthyThreshold" :: Int, "HealthyThreshold" :: Int, "TimeoutMillis" :: Int, "Protocol" :: String, "IntervalMillis" :: Int } -> HealthCheck
healthCheck required =
  merge required
    { "Path" : Nothing
    , "Port" : Nothing
    }

type VirtualServiceBackend =
  { "VirtualServiceName" :: String
  }

virtualServiceBackend :: { "VirtualServiceName" :: String } -> VirtualServiceBackend
virtualServiceBackend required =
  required

type PortMapping =
  { "Port" :: Int
  , "Protocol" :: String
  }

portMapping :: { "Port" :: Int, "Protocol" :: String } -> PortMapping
portMapping required =
  required

type Backend =
  { "VirtualService" :: Maybe VirtualServiceBackend
  }

backend :: Backend
backend =
  { "VirtualService" : Nothing
  }

type AwsCloudMapInstanceAttribute =
  { "Value" :: String
  , "Key" :: String
  }

awsCloudMapInstanceAttribute :: { "Value" :: String, "Key" :: String } -> AwsCloudMapInstanceAttribute
awsCloudMapInstanceAttribute required =
  required

type FileAccessLog =
  { "Path" :: String
  }

fileAccessLog :: { "Path" :: String } -> FileAccessLog
fileAccessLog required =
  required

type ServiceDiscovery =
  { "DNS" :: Maybe DnsServiceDiscovery
  , "AWSCloudMap" :: Maybe AwsCloudMapServiceDiscovery
  }

serviceDiscovery :: ServiceDiscovery
serviceDiscovery =
  { "DNS" : Nothing
  , "AWSCloudMap" : Nothing
  }

type Logging =
  { "AccessLog" :: Maybe AccessLog
  }

logging :: Logging
logging =
  { "AccessLog" : Nothing
  }