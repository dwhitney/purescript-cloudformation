module CloudFormation.AWS.DMS.ReplicationTask where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "TableMappings" :: Value String
  , "SourceEndpointArn" :: Value String
  , "MigrationType" :: Value String
  , "TargetEndpointArn" :: Value String
  , "ReplicationInstanceArn" :: Value String
  , "ReplicationTaskSettings" :: Maybe (Value String)
  , "CdcStartPosition" :: Maybe (Value String)
  , "ReplicationTaskIdentifier" :: Maybe (Value String)
  , "CdcStopPosition" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "CdcStartTime" :: Maybe (Value Number)
  }

derive instance newtypeReplicationTask :: Newtype ReplicationTask _
derive newtype instance writeReplicationTask :: WriteForeign ReplicationTask
instance resourceReplicationTask :: Resource ReplicationTask where type_ _ = "AWS::DMS::ReplicationTask"

replicationTask :: { "TableMappings" :: Value String, "SourceEndpointArn" :: Value String, "MigrationType" :: Value String, "TargetEndpointArn" :: Value String, "ReplicationInstanceArn" :: Value String } -> ReplicationTask
replicationTask required = ReplicationTask
  (merge required
    { "ReplicationTaskSettings" : Nothing
    , "CdcStartPosition" : Nothing
    , "ReplicationTaskIdentifier" : Nothing
    , "CdcStopPosition" : Nothing
    , "Tags" : Nothing
    , "CdcStartTime" : Nothing
    })