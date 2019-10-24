module CloudFormation.AWS.DocDB.DBCluster where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


-- | `AWS::DocDB::DBCluster`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html-- |
-- | - `StorageEncrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-storageencrypted
-- | - `EngineVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-engineversion
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-kmskeyid
-- | - `AvailabilityZones`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-availabilityzones
-- | - `SnapshotIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-snapshotidentifier
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-port
-- | - `DBClusterIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-dbclusteridentifier
-- | - `PreferredMaintenanceWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-preferredmaintenancewindow
-- | - `DBSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-dbsubnetgroupname
-- | - `PreferredBackupWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-preferredbackupwindow
-- | - `MasterUserPassword`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-masteruserpassword
-- | - `VpcSecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-vpcsecuritygroupids
-- | - `MasterUsername`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-masterusername
-- | - `DBClusterParameterGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-dbclusterparametergroupname
-- | - `BackupRetentionPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-backupretentionperiod
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-tags
-- | - `EnableCloudwatchLogsExports`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-enablecloudwatchlogsexports
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