module CloudFormation.AWS.Route53.RecordSetGroup where 

import Data.Maybe (Maybe(..))
import Record (merge)


type RecordSetGroup =
  { "Comment" :: Maybe String
  , "HostedZoneId" :: Maybe String
  , "HostedZoneName" :: Maybe String
  , "RecordSets" :: Maybe (Array RecordSet)
  }

recordSetGroup :: RecordSetGroup
recordSetGroup =
  { "Comment" : Nothing
  , "HostedZoneId" : Nothing
  , "HostedZoneName" : Nothing
  , "RecordSets" : Nothing
  }

type GeoLocation =
  { "ContinentCode" :: Maybe String
  , "CountryCode" :: Maybe String
  , "SubdivisionCode" :: Maybe String
  }

geoLocation :: GeoLocation
geoLocation =
  { "ContinentCode" : Nothing
  , "CountryCode" : Nothing
  , "SubdivisionCode" : Nothing
  }

type AliasTarget =
  { "DNSName" :: String
  , "HostedZoneId" :: String
  , "EvaluateTargetHealth" :: Maybe Boolean
  }

aliasTarget :: { "DNSName" :: String, "HostedZoneId" :: String } -> AliasTarget
aliasTarget required =
  merge required
    { "EvaluateTargetHealth" : Nothing
    }

type RecordSet =
  { "Name" :: String
  , "Type" :: String
  , "AliasTarget" :: Maybe AliasTarget
  , "Comment" :: Maybe String
  , "Failover" :: Maybe String
  , "GeoLocation" :: Maybe GeoLocation
  , "HealthCheckId" :: Maybe String
  , "HostedZoneId" :: Maybe String
  , "HostedZoneName" :: Maybe String
  , "MultiValueAnswer" :: Maybe Boolean
  , "Region" :: Maybe String
  , "ResourceRecords" :: Maybe (Array String)
  , "SetIdentifier" :: Maybe String
  , "TTL" :: Maybe String
  , "Weight" :: Maybe Int
  }

recordSet :: { "Name" :: String, "Type" :: String } -> RecordSet
recordSet required =
  merge required
    { "AliasTarget" : Nothing
    , "Comment" : Nothing
    , "Failover" : Nothing
    , "GeoLocation" : Nothing
    , "HealthCheckId" : Nothing
    , "HostedZoneId" : Nothing
    , "HostedZoneName" : Nothing
    , "MultiValueAnswer" : Nothing
    , "Region" : Nothing
    , "ResourceRecords" : Nothing
    , "SetIdentifier" : Nothing
    , "TTL" : Nothing
    , "Weight" : Nothing
    }