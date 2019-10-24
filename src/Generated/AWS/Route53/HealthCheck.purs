module CloudFormation.AWS.Route53.HealthCheck where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Route53::HealthCheck`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-healthcheck.html
-- |
-- | - `HealthCheckConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-healthcheck.html#cfn-route53-healthcheck-healthcheckconfig
-- | - `HealthCheckTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-healthcheck.html#cfn-route53-healthcheck-healthchecktags
newtype HealthCheck = HealthCheck
  { "HealthCheckConfig" :: HealthCheckConfig
  , "HealthCheckTags" :: Maybe (Array HealthCheckTag)
  }

derive instance newtypeHealthCheck :: Newtype HealthCheck _
instance resourceHealthCheck :: Resource HealthCheck where type_ _ = "AWS::Route53::HealthCheck"

healthCheck :: { "HealthCheckConfig" :: HealthCheckConfig } -> HealthCheck
healthCheck required = HealthCheck
  (merge required
    { "HealthCheckTags" : Nothing
    })

-- | `AWS::Route53::HealthCheck.HealthCheckTag`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthchecktag.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthchecktag.html#cfn-route53-healthchecktags-key
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthchecktag.html#cfn-route53-healthchecktags-value
type HealthCheckTag =
  { "Key" :: String
  , "Value" :: String
  }

healthCheckTag :: { "Key" :: String, "Value" :: String } -> HealthCheckTag
healthCheckTag required =
  required

-- | `AWS::Route53::HealthCheck.AlarmIdentifier`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-alarmidentifier.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-alarmidentifier.html#cfn-route53-healthcheck-alarmidentifier-name
-- | - `Region`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-alarmidentifier.html#cfn-route53-healthcheck-alarmidentifier-region
type AlarmIdentifier =
  { "Name" :: String
  , "Region" :: String
  }

alarmIdentifier :: { "Name" :: String, "Region" :: String } -> AlarmIdentifier
alarmIdentifier required =
  required

-- | `AWS::Route53::HealthCheck.HealthCheckConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html
-- |
-- | - `AlarmIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-alarmidentifier
-- | - `ChildHealthChecks`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-childhealthchecks
-- | - `EnableSNI`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-enablesni
-- | - `FailureThreshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-failurethreshold
-- | - `FullyQualifiedDomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-fullyqualifieddomainname
-- | - `HealthThreshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-healththreshold
-- | - `IPAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-ipaddress
-- | - `InsufficientDataHealthStatus`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-insufficientdatahealthstatus
-- | - `Inverted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-inverted
-- | - `MeasureLatency`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-measurelatency
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-port
-- | - `Regions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-regions
-- | - `RequestInterval`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-requestinterval
-- | - `ResourcePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-resourcepath
-- | - `SearchString`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-searchstring
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthcheckconfig.html#cfn-route53-healthcheck-healthcheckconfig-type
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
  (merge required
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
    })