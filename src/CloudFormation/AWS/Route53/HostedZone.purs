module CloudFormation.AWS.Route53.HostedZone where 

import Data.Maybe (Maybe(..))
import Record (merge)


type HostedZone =
  { "Name" :: String
  , "HostedZoneConfig" :: Maybe HostedZoneConfig
  , "HostedZoneTags" :: Maybe (Array HostedZoneTag)
  , "QueryLoggingConfig" :: Maybe QueryLoggingConfig
  , "VPCs" :: Maybe (Array VPC)
  }

hostedZone :: { "Name" :: String } -> HostedZone
hostedZone required =
  merge required
    { "HostedZoneConfig" : Nothing
    , "HostedZoneTags" : Nothing
    , "QueryLoggingConfig" : Nothing
    , "VPCs" : Nothing
    }

type VPC =
  { "VPCId" :: String
  , "VPCRegion" :: String
  }

vpcPC :: { "VPCId" :: String, "VPCRegion" :: String } -> VPC
vpcPC required =
  required

type QueryLoggingConfig =
  { "CloudWatchLogsLogGroupArn" :: String
  }

queryLoggingConfig :: { "CloudWatchLogsLogGroupArn" :: String } -> QueryLoggingConfig
queryLoggingConfig required =
  required

type HostedZoneConfig =
  { "Comment" :: Maybe String
  }

hostedZoneConfig :: HostedZoneConfig
hostedZoneConfig =
  { "Comment" : Nothing
  }

type HostedZoneTag =
  { "Key" :: String
  , "Value" :: String
  }

hostedZoneTag :: { "Key" :: String, "Value" :: String } -> HostedZoneTag
hostedZoneTag required =
  required