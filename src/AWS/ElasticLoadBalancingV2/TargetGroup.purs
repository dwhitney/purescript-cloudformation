module AWS.ElasticLoadBalancingV2.TargetGroup where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type TargetGroup =
  { "HealthCheckEnabled" :: Maybe Boolean
  , "HealthCheckIntervalSeconds" :: Maybe Int
  , "HealthCheckPath" :: Maybe String
  , "HealthCheckPort" :: Maybe String
  , "HealthCheckProtocol" :: Maybe String
  , "HealthCheckTimeoutSeconds" :: Maybe Int
  , "HealthyThresholdCount" :: Maybe Int
  , "Matcher" :: Maybe Matcher
  , "Name" :: Maybe String
  , "Port" :: Maybe Int
  , "Protocol" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "TargetGroupAttributes" :: Maybe (Array TargetGroupAttribute)
  , "TargetType" :: Maybe String
  , "Targets" :: Maybe (Array TargetDescription)
  , "UnhealthyThresholdCount" :: Maybe Int
  , "VpcId" :: Maybe String
  }

targetGroup :: TargetGroup
targetGroup =
  { "HealthCheckEnabled" : Nothing
  , "HealthCheckIntervalSeconds" : Nothing
  , "HealthCheckPath" : Nothing
  , "HealthCheckPort" : Nothing
  , "HealthCheckProtocol" : Nothing
  , "HealthCheckTimeoutSeconds" : Nothing
  , "HealthyThresholdCount" : Nothing
  , "Matcher" : Nothing
  , "Name" : Nothing
  , "Port" : Nothing
  , "Protocol" : Nothing
  , "Tags" : Nothing
  , "TargetGroupAttributes" : Nothing
  , "TargetType" : Nothing
  , "Targets" : Nothing
  , "UnhealthyThresholdCount" : Nothing
  , "VpcId" : Nothing
  }

type TargetDescription =
  { "Id" :: String
  , "AvailabilityZone" :: Maybe String
  , "Port" :: Maybe Int
  }

targetDescription :: { "Id" :: String } -> TargetDescription
targetDescription required =
  merge required
    { "AvailabilityZone" : Nothing
    , "Port" : Nothing
    }

type Matcher =
  { "HttpCode" :: String
  }

matcher :: { "HttpCode" :: String } -> Matcher
matcher required =
  required

type TargetGroupAttribute =
  { "Key" :: Maybe String
  , "Value" :: Maybe String
  }

targetGroupAttribute :: TargetGroupAttribute
targetGroupAttribute =
  { "Key" : Nothing
  , "Value" : Nothing
  }