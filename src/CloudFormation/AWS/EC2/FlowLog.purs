module CloudFormation.AWS.EC2.FlowLog where 

import Data.Maybe (Maybe(..))
import Record (merge)


type FlowLog =
  { "ResourceId" :: String
  , "ResourceType" :: String
  , "TrafficType" :: String
  , "DeliverLogsPermissionArn" :: Maybe String
  , "LogDestination" :: Maybe String
  , "LogDestinationType" :: Maybe String
  , "LogGroupName" :: Maybe String
  }

flowLog :: { "ResourceId" :: String, "ResourceType" :: String, "TrafficType" :: String } -> FlowLog
flowLog required =
  merge required
    { "DeliverLogsPermissionArn" : Nothing
    , "LogDestination" : Nothing
    , "LogDestinationType" : Nothing
    , "LogGroupName" : Nothing
    }