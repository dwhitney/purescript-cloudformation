module AWS.GameLift.Fleet where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Fleet =
  { "BuildId" :: String
  , "DesiredEC2Instances" :: Int
  , "EC2InstanceType" :: String
  , "Name" :: String
  , "ServerLaunchPath" :: String
  , "Description" :: Maybe String
  , "EC2InboundPermissions" :: Maybe (Array IpPermission)
  , "LogPaths" :: Maybe (Array String)
  , "MaxSize" :: Maybe Int
  , "MinSize" :: Maybe Int
  , "ServerLaunchParameters" :: Maybe String
  }

fleet :: { "BuildId" :: String, "DesiredEC2Instances" :: Int, "EC2InstanceType" :: String, "Name" :: String, "ServerLaunchPath" :: String } -> Fleet
fleet required =
  merge required
    { "Description" : Nothing
    , "EC2InboundPermissions" : Nothing
    , "LogPaths" : Nothing
    , "MaxSize" : Nothing
    , "MinSize" : Nothing
    , "ServerLaunchParameters" : Nothing
    }

type IpPermission =
  { "FromPort" :: Int
  , "IpRange" :: String
  , "Protocol" :: String
  , "ToPort" :: Int
  }

ipPermission :: { "FromPort" :: Int, "IpRange" :: String, "Protocol" :: String, "ToPort" :: Int } -> IpPermission
ipPermission required =
  required