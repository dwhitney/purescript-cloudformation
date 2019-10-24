module AWS.RDS.DBCluster where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type DBCluster =
  { "Engine" :: String
  , "AssociatedRoles" :: Maybe (Array DBClusterRole)
  , "AvailabilityZones" :: Maybe (Array String)
  , "BacktrackWindow" :: Maybe Number
  , "BackupRetentionPeriod" :: Maybe Int
  , "DBClusterIdentifier" :: Maybe String
  , "DBClusterParameterGroupName" :: Maybe String
  , "DBSubnetGroupName" :: Maybe String
  , "DatabaseName" :: Maybe String
  , "DeletionProtection" :: Maybe Boolean
  , "EnableCloudwatchLogsExports" :: Maybe (Array String)
  , "EnableIAMDatabaseAuthentication" :: Maybe Boolean
  , "EngineMode" :: Maybe String
  , "EngineVersion" :: Maybe String
  , "KmsKeyId" :: Maybe String
  , "MasterUserPassword" :: Maybe String
  , "MasterUsername" :: Maybe String
  , "Port" :: Maybe Int
  , "PreferredBackupWindow" :: Maybe String
  , "PreferredMaintenanceWindow" :: Maybe String
  , "ReplicationSourceIdentifier" :: Maybe String
  , "RestoreType" :: Maybe String
  , "ScalingConfiguration" :: Maybe ScalingConfiguration
  , "SnapshotIdentifier" :: Maybe String
  , "SourceDBClusterIdentifier" :: Maybe String
  , "SourceRegion" :: Maybe String
  , "StorageEncrypted" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tag)
  , "UseLatestRestorableTime" :: Maybe Boolean
  , "VpcSecurityGroupIds" :: Maybe (Array String)
  }

dbcBCluster :: { "Engine" :: String } -> DBCluster
dbcBCluster required =
  merge required
    { "AssociatedRoles" : Nothing
    , "AvailabilityZones" : Nothing
    , "BacktrackWindow" : Nothing
    , "BackupRetentionPeriod" : Nothing
    , "DBClusterIdentifier" : Nothing
    , "DBClusterParameterGroupName" : Nothing
    , "DBSubnetGroupName" : Nothing
    , "DatabaseName" : Nothing
    , "DeletionProtection" : Nothing
    , "EnableCloudwatchLogsExports" : Nothing
    , "EnableIAMDatabaseAuthentication" : Nothing
    , "EngineMode" : Nothing
    , "EngineVersion" : Nothing
    , "KmsKeyId" : Nothing
    , "MasterUserPassword" : Nothing
    , "MasterUsername" : Nothing
    , "Port" : Nothing
    , "PreferredBackupWindow" : Nothing
    , "PreferredMaintenanceWindow" : Nothing
    , "ReplicationSourceIdentifier" : Nothing
    , "RestoreType" : Nothing
    , "ScalingConfiguration" : Nothing
    , "SnapshotIdentifier" : Nothing
    , "SourceDBClusterIdentifier" : Nothing
    , "SourceRegion" : Nothing
    , "StorageEncrypted" : Nothing
    , "Tags" : Nothing
    , "UseLatestRestorableTime" : Nothing
    , "VpcSecurityGroupIds" : Nothing
    }

type DBClusterRole =
  { "RoleArn" :: String
  , "FeatureName" :: Maybe String
  , "Status" :: Maybe String
  }

dbcBClusterRole :: { "RoleArn" :: String } -> DBClusterRole
dbcBClusterRole required =
  merge required
    { "FeatureName" : Nothing
    , "Status" : Nothing
    }

type ScalingConfiguration =
  { "AutoPause" :: Maybe Boolean
  , "MaxCapacity" :: Maybe Int
  , "MinCapacity" :: Maybe Int
  , "SecondsUntilAutoPause" :: Maybe Int
  }

scalingConfiguration :: ScalingConfiguration
scalingConfiguration =
  { "AutoPause" : Nothing
  , "MaxCapacity" : Nothing
  , "MinCapacity" : Nothing
  , "SecondsUntilAutoPause" : Nothing
  }