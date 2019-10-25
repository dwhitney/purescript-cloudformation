module CloudFormation.AWS.ElasticLoadBalancing.LoadBalancer where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation (Json) as CF


-- | `AWS::ElasticLoadBalancing::LoadBalancer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html
-- |
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
newtype LoadBalancer = LoadBalancer
  { "Listeners" :: Value (Array Listeners)
  , "AccessLoggingPolicy" :: Maybe (Value AccessLoggingPolicy)
  , "AppCookieStickinessPolicy" :: Maybe (Value (Array AppCookieStickinessPolicy))
  , "AvailabilityZones" :: Maybe (Value (Array String))
  , "ConnectionDrainingPolicy" :: Maybe (Value ConnectionDrainingPolicy)
  , "ConnectionSettings" :: Maybe (Value ConnectionSettings)
  , "CrossZone" :: Maybe (Value Boolean)
  , "HealthCheck" :: Maybe (Value HealthCheck)
  , "Instances" :: Maybe (Value (Array String))
  , "LBCookieStickinessPolicy" :: Maybe (Value (Array LBCookieStickinessPolicy))
  , "LoadBalancerName" :: Maybe (Value String)
  , "Policies" :: Maybe (Value (Array Policies))
  , "Scheme" :: Maybe (Value String)
  , "SecurityGroups" :: Maybe (Value (Array String))
  , "Subnets" :: Maybe (Value (Array String))
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeLoadBalancer :: Newtype LoadBalancer _
derive newtype instance writeLoadBalancer :: WriteForeign LoadBalancer
instance resourceLoadBalancer :: Resource LoadBalancer where type_ _ = "AWS::ElasticLoadBalancing::LoadBalancer"

loadBalancer :: { "Listeners" :: Value (Array Listeners) } -> LoadBalancer
loadBalancer required = LoadBalancer
  (merge required
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
    })

-- | `AWS::ElasticLoadBalancing::LoadBalancer.AppCookieStickinessPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-AppCookieStickinessPolicy.html
-- |
-- | - `CookieName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-AppCookieStickinessPolicy.html#cfn-elb-appcookiestickinesspolicy-cookiename
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-AppCookieStickinessPolicy.html#cfn-elb-appcookiestickinesspolicy-policyname
type AppCookieStickinessPolicy =
  { "CookieName" :: Value String
  , "PolicyName" :: Value String
  }

appCookieStickinessPolicy :: { "CookieName" :: Value String, "PolicyName" :: Value String } -> AppCookieStickinessPolicy
appCookieStickinessPolicy required =
  required

-- | `AWS::ElasticLoadBalancing::LoadBalancer.Policies`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html
-- |
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
  { "Attributes" :: Value (Array CF.Json)
  , "PolicyName" :: Value String
  , "PolicyType" :: Value String
  , "InstancePorts" :: Maybe (Value (Array String))
  , "LoadBalancerPorts" :: Maybe (Value (Array String))
  }

policies :: { "Attributes" :: Value (Array CF.Json), "PolicyName" :: Value String, "PolicyType" :: Value String } -> Policies
policies required =
  (merge required
    { "InstancePorts" : Nothing
    , "LoadBalancerPorts" : Nothing
    })

-- | `AWS::ElasticLoadBalancing::LoadBalancer.ConnectionDrainingPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html
-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html#cfn-elb-connectiondrainingpolicy-enabled
-- | - `Timeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html#cfn-elb-connectiondrainingpolicy-timeout
type ConnectionDrainingPolicy =
  { "Enabled" :: Value Boolean
  , "Timeout" :: Maybe (Value Int)
  }

connectionDrainingPolicy :: { "Enabled" :: Value Boolean } -> ConnectionDrainingPolicy
connectionDrainingPolicy required =
  (merge required
    { "Timeout" : Nothing
    })

-- | `AWS::ElasticLoadBalancing::LoadBalancer.ConnectionSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html
-- |
-- | - `IdleTimeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html#cfn-elb-connectionsettings-idletimeout
type ConnectionSettings =
  { "IdleTimeout" :: Value Int
  }

connectionSettings :: { "IdleTimeout" :: Value Int } -> ConnectionSettings
connectionSettings required =
  required

-- | `AWS::ElasticLoadBalancing::LoadBalancer.HealthCheck`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-health-check.html
-- |
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
  { "HealthyThreshold" :: Value String
  , "Interval" :: Value String
  , "Target" :: Value String
  , "Timeout" :: Value String
  , "UnhealthyThreshold" :: Value String
  }

healthCheck :: { "HealthyThreshold" :: Value String, "Interval" :: Value String, "Target" :: Value String, "Timeout" :: Value String, "UnhealthyThreshold" :: Value String } -> HealthCheck
healthCheck required =
  required

-- | `AWS::ElasticLoadBalancing::LoadBalancer.Listeners`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html
-- |
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
  { "InstancePort" :: Value String
  , "LoadBalancerPort" :: Value String
  , "Protocol" :: Value String
  , "InstanceProtocol" :: Maybe (Value String)
  , "PolicyNames" :: Maybe (Value (Array String))
  , "SSLCertificateId" :: Maybe (Value String)
  }

listeners :: { "InstancePort" :: Value String, "LoadBalancerPort" :: Value String, "Protocol" :: Value String } -> Listeners
listeners required =
  (merge required
    { "InstanceProtocol" : Nothing
    , "PolicyNames" : Nothing
    , "SSLCertificateId" : Nothing
    })

-- | `AWS::ElasticLoadBalancing::LoadBalancer.LBCookieStickinessPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html
-- |
-- | - `CookieExpirationPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html#cfn-elb-lbcookiestickinesspolicy-cookieexpirationperiod
-- | - `PolicyName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html#cfn-elb-lbcookiestickinesspolicy-policyname
type LBCookieStickinessPolicy =
  { "CookieExpirationPeriod" :: Maybe (Value String)
  , "PolicyName" :: Maybe (Value String)
  }

lbcBCookieStickinessPolicy :: LBCookieStickinessPolicy
lbcBCookieStickinessPolicy =
  { "CookieExpirationPeriod" : Nothing
  , "PolicyName" : Nothing
  }

-- | `AWS::ElasticLoadBalancing::LoadBalancer.AccessLoggingPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html
-- |
-- | - `EmitInterval`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-emitinterval
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-enabled
-- | - `S3BucketName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-s3bucketname
-- | - `S3BucketPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-accessloggingpolicy.html#cfn-elb-accessloggingpolicy-s3bucketprefix
type AccessLoggingPolicy =
  { "Enabled" :: Value Boolean
  , "S3BucketName" :: Value String
  , "EmitInterval" :: Maybe (Value Int)
  , "S3BucketPrefix" :: Maybe (Value String)
  }

accessLoggingPolicy :: { "Enabled" :: Value Boolean, "S3BucketName" :: Value String } -> AccessLoggingPolicy
accessLoggingPolicy required =
  (merge required
    { "EmitInterval" : Nothing
    , "S3BucketPrefix" : Nothing
    })