module AWS.EC2.TrafficMirrorFilterRule where 

import Data.Maybe (Maybe(..))
import Record (merge)


type TrafficMirrorFilterRule =
  { "RuleAction" :: String
  , "SourceCidrBlock" :: String
  , "RuleNumber" :: Int
  , "DestinationCidrBlock" :: String
  , "TrafficMirrorFilterId" :: String
  , "TrafficDirection" :: String
  , "DestinationPortRange" :: Maybe TrafficMirrorPortRange
  , "Description" :: Maybe String
  , "SourcePortRange" :: Maybe TrafficMirrorPortRange
  , "Protocol" :: Maybe Int
  }

trafficMirrorFilterRule :: { "RuleAction" :: String, "SourceCidrBlock" :: String, "RuleNumber" :: Int, "DestinationCidrBlock" :: String, "TrafficMirrorFilterId" :: String, "TrafficDirection" :: String } -> TrafficMirrorFilterRule
trafficMirrorFilterRule required =
  merge required
    { "DestinationPortRange" : Nothing
    , "Description" : Nothing
    , "SourcePortRange" : Nothing
    , "Protocol" : Nothing
    }

type TrafficMirrorPortRange =
  { "FromPort" :: Int
  , "ToPort" :: Int
  }

trafficMirrorPortRange :: { "FromPort" :: Int, "ToPort" :: Int } -> TrafficMirrorPortRange
trafficMirrorPortRange required =
  required