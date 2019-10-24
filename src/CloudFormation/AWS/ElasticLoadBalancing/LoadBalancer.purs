module CloudFormation.AWS.ElasticLoadBalancing.LoadBalancer where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import Foreign (Foreign)


-- | `AWS::ElasticLoadBalancing::LoadBalancer`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html-- |
-- | - `AccessLoggingPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-accessloggingpolicy
-- | - `AppCookieStickinessPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-appcookiestickinesspolicy
-- | - `AvailabilityZones`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-availabilityzones
-- | - `ConnectionDrainingPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-connectiondrainingpolicy
-- | - `ConnectionSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-connectionsettings
-- | - `CrossZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-crosszone
-- | - `HealthCheck`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-healthcheck
-- | - `Instances`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-instances
-- | - `LBCookieStickinessPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-lbcookiestickinesspolicy
-- | - `Listeners`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-listeners
-- | - `LoadBalancerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-elbname
-- | - `Policies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-policies
-- | - `Scheme`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-scheme
-- | - `SecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-securitygroups
-- | - `Subnets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-ec2-elb-subnets
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html#cfn-elasticloadbalancing-loadbalancer-tags
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

-- | `AWS::ElasticLoadBalancing::LoadBalancer.AppCookieStickinessPolicy`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-AppCookieStickinessPolicy.html-- |
-- | - `CookieName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-AppCookieStickinessPolicy.html#cfn-elb-appcookiestickinesspolicy-cookiename
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-AppCookieStickinessPolicy.html#cfn-elb-appcookiestickinesspolicy-policyname
type AppCookieStickinessPolicy =
  { "CookieName" :: String
  , "PolicyName" :: String
  }

appCookieStickinessPolicy :: { "CookieName" :: String, "PolicyName" :: String } -> AppCookieStickinessPolicy
appCookieStickinessPolicy required =
  required

-- | `AWS::ElasticLoadBalancing::LoadBalancer.Policies`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html-- |
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-attributes
-- | - `InstancePorts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-instanceports
-- | - `LoadBalancerPorts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-loadbalancerports
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-policyname
-- | - `PolicyType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-policytype
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

-- | `AWS::ElasticLoadBalancing::LoadBalancer.ConnectionDrainingPolicy`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html#cfn-elb-connectiondrainingpolicy-enabled
-- | - `Timeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html#cfn-elb-connectiondrainingpolicy-timeout
type ConnectionDrainingPolicy =
  { "Enabled" :: Boolean
  , "Timeout" :: Maybe Int
  }

connectionDrainingPolicy :: { "Enabled" :: Boolean } -> ConnectionDrainingPolicy
connectionDrainingPolicy required =
  merge required
    { "Timeout" : Nothing
    }

-- | `AWS::ElasticLoadBalancing::LoadBalancer.ConnectionSettings`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html-- |
-- | - `IdleTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html#cfn-elb-connectionsettings-idletimeout
type ConnectionSettings =
  { "IdleTimeout" :: Int
  }

connectionSettings :: { "IdleTimeout" :: Int } -> ConnectionSettings
connectionSettings required =
  required

-- | `AWS::ElasticLoadBalancing::LoadBalancer.HealthCheck`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html-- |
-- | - `HealthyThreshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-healthythreshold
-- | - `Interval`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-interval
-- | - `Target`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-target
-- | - `Timeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-timeout
-- | - `UnhealthyThreshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html#cfn-elb-healthcheck-unhealthythreshold
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

-- | `AWS::ElasticLoadBalancing::LoadBalancer.Listeners`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html-- |
-- | - `InstancePort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-instanceport
-- | - `InstanceProtocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-instanceprotocol
-- | - `LoadBalancerPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-loadbalancerport
-- | - `PolicyNames`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-policynames
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-protocol
-- | - `SSLCertificateId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-sslcertificateid
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

-- | `AWS::ElasticLoadBalancing::LoadBalancer.LBCookieStickinessPolicy`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html-- |
-- | - `CookieExpirationPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html#cfn-elb-lbcookiestickinesspolicy-cookieexpirationperiod
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html#cfn-elb-lbcookiestickinesspolicy-policyname
type LBCookieStickinessPolicy =
  { "CookieExpirationPeriod" :: Maybe String
  , "PolicyName" :: Maybe String
  }

lbcBCookieStickinessPolicy :: LBCookieStickinessPolicy
lbcBCookieStickinessPolicy =
  { "CookieExpirationPeriod" : Nothing
  , "PolicyName" : Nothing
  }

-- | `AWS::ElasticLoadBalancing::LoadBalancer.AccessLoggingPolicy`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html-- |
-- | - `EmitInterval`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-emitinterval
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-enabled
-- | - `S3BucketName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-s3bucketname
-- | - `S3BucketPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-s3bucketprefix
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