module AWS.Neptune.DBCluster where 

import Data.Maybe (Maybe(..))
import Tag


type DBCluster =
  { "StorageEncrypted" :: Maybe Boolean
  , "KmsKeyId" :: Maybe String
  , "AvailabilityZones" :: Maybe (Array String)
  , "SnapshotIdentifier" :: Maybe String
  , "Port" :: Maybe Int
  , "DBClusterIdentifier" :: Maybe String
  , "PreferredMaintenanceWindow" :: Maybe String
  , "IamAuthEnabled" :: Maybe Boolean
  , "DBSubnetGroupName" :: Maybe String
  , "PreferredBackupWindow" :: Maybe String
  , "VpcSecurityGroupIds" :: Maybe (Array String)
  , "DBClusterParameterGroupName" :: Maybe String
  , "BackupRetentionPeriod" :: Maybe Int
  , "Tags" :: Maybe (Array Tag)
  , "EnableCloudwatchLogsExports" :: Maybe (Array String)
  }

dbcBCluster :: DBCluster
dbcBCluster =
  { "StorageEncrypted" : Nothing
  , "KmsKeyId" : Nothing
  , "AvailabilityZones" : Nothing
  , "SnapshotIdentifier" : Nothing
  , "Port" : Nothing
  , "DBClusterIdentifier" : Nothing
  , "PreferredMaintenanceWindow" : Nothing
  , "IamAuthEnabled" : Nothing
  , "DBSubnetGroupName" : Nothing
  , "PreferredBackupWindow" : Nothing
  , "VpcSecurityGroupIds" : Nothing
  , "DBClusterParameterGroupName" : Nothing
  , "BackupRetentionPeriod" : Nothing
  , "Tags" : Nothing
  , "EnableCloudwatchLogsExports" : Nothing
  }