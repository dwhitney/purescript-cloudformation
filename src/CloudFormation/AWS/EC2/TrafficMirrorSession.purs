module CloudFormation.AWS.EC2.TrafficMirrorSession where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type TrafficMirrorSession =
  { "TrafficMirrorTargetId" :: String
  , "SessionNumber" :: Int
  , "NetworkInterfaceId" :: String
  , "TrafficMirrorFilterId" :: String
  , "Description" :: Maybe String
  , "VirtualNetworkId" :: Maybe Int
  , "PacketLength" :: Maybe Int
  , "Tags" :: Maybe (Array Tag)
  }

trafficMirrorSession :: { "TrafficMirrorTargetId" :: String, "SessionNumber" :: Int, "NetworkInterfaceId" :: String, "TrafficMirrorFilterId" :: String } -> TrafficMirrorSession
trafficMirrorSession required =
  merge required
    { "Description" : Nothing
    , "VirtualNetworkId" : Nothing
    , "PacketLength" : Nothing
    , "Tags" : Nothing
    }