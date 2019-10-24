module CloudFormation.AWS.ElasticLoadBalancing.LoadBalancer where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import Foreign (Foreign)


type LoadBalancer =
  { "Listeners" :: Array Listeners
  , "AccessLoggingPolicy" :: Maybe AccessLoggingPolicy
  , "AppCookieStickinessPolicy" :: Maybe (Array AppCookieStickinessPolicy)
  , "AvailabilityZones" :: Maybe (Array String)
  , "ConnectionDrainingPolicy" :: Maybe ConnectionDrainingPolicy
  , "ConnectionSettings" :: Maybe ConnectionSettings
  , "CrossZone" :: Maybe Boolean
  , "HealthCheck" :: Maybe HealthCheck
  , "Instances" :: Maybe (Array String)
  , "LBCookieStickinessPolicy" :: Maybe (Array LBCookieStickinessPolicy)
  , "LoadBalancerName" :: Maybe String
  , "Policies" :: Maybe (Array Policies)
  , "Scheme" :: Maybe String
  , "SecurityGroups" :: Maybe (Array String)
  , "Subnets" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  }

loadBalancer :: { "Listeners" :: Array Listeners } -> LoadBalancer
loadBalancer required =
  merge required
    { "AccessLoggingPolicy" : Nothing
    , "AppCookieStickinessPolicy" : Nothing
    , "AvailabilityZones" : Nothing
    , "ConnectionDrainingPolicy" : Nothing
    , "ConnectionSettings" : Nothing
    , "CrossZone" : Nothing
    , "HealthCheck" : Nothing
    , "Instances" : Nothing
    , "LBCookieStickinessPolicy" : Nothing
    , "LoadBalancerName" : Nothing
    , "Policies" : Nothing
    , "Scheme" : Nothing
    , "SecurityGroups" : Nothing
    , "Subnets" : Nothing
    , "Tags" : Nothing
    }

type AppCookieStickinessPolicy =
  { "CookieName" :: String
  , "PolicyName" :: String
  }

appCookieStickinessPolicy :: { "CookieName" :: String, "PolicyName" :: String } -> AppCookieStickinessPolicy
appCookieStickinessPolicy required =
  required

type Policies =
  { "Attributes" :: Array Foreign
  , "PolicyName" :: String
  , "PolicyType" :: String
  , "InstancePorts" :: Maybe (Array String)
  , "LoadBalancerPorts" :: Maybe (Array String)
  }

policies :: { "Attributes" :: Array Foreign, "PolicyName" :: String, "PolicyType" :: String } -> Policies
policies required =
  merge required
    { "InstancePorts" : Nothing
    , "LoadBalancerPorts" : Nothing
    }

type ConnectionDrainingPolicy =
  { "Enabled" :: Boolean
  , "Timeout" :: Maybe Int
  }

connectionDrainingPolicy :: { "Enabled" :: Boolean } -> ConnectionDrainingPolicy
connectionDrainingPolicy required =
  merge required
    { "Timeout" : Nothing
    }

type ConnectionSettings =
  { "IdleTimeout" :: Int
  }

connectionSettings :: { "IdleTimeout" :: Int } -> ConnectionSettings
connectionSettings required =
  required

type HealthCheck =
  { "HealthyThreshold" :: String
  , "Interval" :: String
  , "Target" :: String
  , "Timeout" :: String
  , "UnhealthyThreshold" :: String
  }

healthCheck :: { "HealthyThreshold" :: String, "Interval" :: String, "Target" :: String, "Timeout" :: String, "UnhealthyThreshold" :: String } -> HealthCheck
healthCheck required =
  required

type Listeners =
  { "InstancePort" :: String
  , "LoadBalancerPort" :: String
  , "Protocol" :: String
  , "InstanceProtocol" :: Maybe String
  , "PolicyNames" :: Maybe (Array String)
  , "SSLCertificateId" :: Maybe String
  }

listeners :: { "InstancePort" :: String, "LoadBalancerPort" :: String, "Protocol" :: String } -> Listeners
listeners required =
  merge required
    { "InstanceProtocol" : Nothing
    , "PolicyNames" : Nothing
    , "SSLCertificateId" : Nothing
    }

type LBCookieStickinessPolicy =
  { "CookieExpirationPeriod" :: Maybe String
  , "PolicyName" :: Maybe String
  }

lbcBCookieStickinessPolicy :: LBCookieStickinessPolicy
lbcBCookieStickinessPolicy =
  { "CookieExpirationPeriod" : Nothing
  , "PolicyName" : Nothing
  }

type AccessLoggingPolicy =
  { "Enabled" :: Boolean
  , "S3BucketName" :: String
  , "EmitInterval" :: Maybe Int
  , "S3BucketPrefix" :: Maybe String
  }

accessLoggingPolicy :: { "Enabled" :: Boolean, "S3BucketName" :: String } -> AccessLoggingPolicy
accessLoggingPolicy required =
  merge required
    { "EmitInterval" : Nothing
    , "S3BucketPrefix" : Nothing
    }