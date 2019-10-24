module CloudFormation.AWS.DocDB.DBCluster where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


type DBCluster =
  { "StorageEncrypted" :: Maybe Boolean
  , "EngineVersion" :: Maybe String
  , "KmsKeyId" :: Maybe String
  , "AvailabilityZones" :: Maybe (Array String)
  , "SnapshotIdentifier" :: Maybe String
  , "Port" :: Maybe Int
  , "DBClusterIdentifier" :: Maybe String
  , "PreferredMaintenanceWindow" :: Maybe String
  , "DBSubnetGroupName" :: Maybe String
  , "PreferredBackupWindow" :: Maybe String
  , "MasterUserPassword" :: Maybe String
  , "VpcSecurityGroupIds" :: Maybe (Array String)
  , "MasterUsername" :: Maybe String
  , "DBClusterParameterGroupName" :: Maybe String
  , "BackupRetentionPeriod" :: Maybe Int
  , "Tags" :: Maybe (Array Tag)
  , "EnableCloudwatchLogsExports" :: Maybe (Array String)
  }

dbcBCluster :: DBCluster
dbcBCluster =
  { "StorageEncrypted" : Nothing
  , "EngineVersion" : Nothing
  , "KmsKeyId" : Nothing
  , "AvailabilityZones" : Nothing
  , "SnapshotIdentifier" : Nothing
  , "Port" : Nothing
  , "DBClusterIdentifier" : Nothing
  , "PreferredMaintenanceWindow" : Nothing
  , "DBSubnetGroupName" : Nothing
  , "PreferredBackupWindow" : Nothing
  , "MasterUserPassword" : Nothing
  , "VpcSecurityGroupIds" : Nothing
  , "MasterUsername" : Nothing
  , "DBClusterParameterGroupName" : Nothing
  , "BackupRetentionPeriod" : Nothing
  , "Tags" : Nothing
  , "EnableCloudwatchLogsExports" : Nothing
  }