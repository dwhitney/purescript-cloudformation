module CloudFormation.AWS.DMS.ReplicationTask where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::DMS::ReplicationTask`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html
-- |
-- | - `ReplicationTaskSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-replicationtasksettings
-- | - `TableMappings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-tablemappings
-- | - `CdcStartPosition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-cdcstartposition
-- | - `ReplicationTaskIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-replicationtaskidentifier
-- | - `CdcStopPosition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-cdcstopposition
-- | - `SourceEndpointArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-sourceendpointarn
-- | - `MigrationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-migrationtype
-- | - `TargetEndpointArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-targetendpointarn
-- | - `ReplicationInstanceArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-replicationinstancearn
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-tags
-- | - `CdcStartTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-replicationtask.html#cfn-dms-replicationtask-cdcstarttime
newtype ReplicationTask = ReplicationTask
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

derive instance newtypeReplicationTask :: Newtype ReplicationTask _
instance resourceReplicationTask :: Resource ReplicationTask where type_ _ = "AWS::DMS::ReplicationTask"

replicationTask :: { "TableMappings" :: String, "SourceEndpointArn" :: String, "MigrationType" :: String, "TargetEndpointArn" :: String, "ReplicationInstanceArn" :: String } -> ReplicationTask
replicationTask required = ReplicationTask
  (merge required
    { "ReplicationTaskSettings" : Nothing
    , "CdcStartPosition" : Nothing
    , "ReplicationTaskIdentifier" : Nothing
    , "CdcStopPosition" : Nothing
    , "Tags" : Nothing
    , "CdcStartTime" : Nothing
    })