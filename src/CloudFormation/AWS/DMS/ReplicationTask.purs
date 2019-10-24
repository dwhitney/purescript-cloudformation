module CloudFormation.AWS.DMS.ReplicationTask where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type ReplicationTask =
  { "TableMappings" :: String
  , "SourceEndpointArn" :: String
  , "MigrationType" :: String
  , "TargetEndpointArn" :: String
  , "ReplicationInstanceArn" :: String
  , "ReplicationTaskSettings" :: Maybe String
  , "CdcStartPosition" :: Maybe String
  , "ReplicationTaskIdentifier" :: Maybe String
  , "CdcStopPosition" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "CdcStartTime" :: Maybe Number
  }

replicationTask :: { "TableMappings" :: String, "SourceEndpointArn" :: String, "MigrationType" :: String, "TargetEndpointArn" :: String, "ReplicationInstanceArn" :: String } -> ReplicationTask
replicationTask required =
  merge required
    { "ReplicationTaskSettings" : Nothing
    , "CdcStartPosition" : Nothing
    , "ReplicationTaskIdentifier" : Nothing
    , "CdcStopPosition" : Nothing
    , "Tags" : Nothing
    , "CdcStartTime" : Nothing
    }