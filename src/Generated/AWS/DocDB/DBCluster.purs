module CloudFormation.AWS.DocDB.DBCluster where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::DocDB::DBCluster`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html
-- |
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
newtype DBCluster = DBCluster
  { "StorageEncrypted" :: Maybe (Value Boolean)
  , "EngineVersion" :: Maybe (Value String)
  , "KmsKeyId" :: Maybe (Value String)
  , "AvailabilityZones" :: Maybe (Value (Array String))
  , "SnapshotIdentifier" :: Maybe (Value String)
  , "Port" :: Maybe (Value Int)
  , "DBClusterIdentifier" :: Maybe (Value String)
  , "PreferredMaintenanceWindow" :: Maybe (Value String)
  , "DBSubnetGroupName" :: Maybe (Value String)
  , "PreferredBackupWindow" :: Maybe (Value String)
  , "MasterUserPassword" :: Maybe (Value String)
  , "VpcSecurityGroupIds" :: Maybe (Value (Array String))
  , "MasterUsername" :: Maybe (Value String)
  , "DBClusterParameterGroupName" :: Maybe (Value String)
  , "BackupRetentionPeriod" :: Maybe (Value Int)
  , "Tags" :: Maybe (Value (Array Tag))
  , "EnableCloudwatchLogsExports" :: Maybe (Value (Array String))
  }

derive instance newtypeDBCluster :: Newtype DBCluster _
derive newtype instance writeDBCluster :: WriteForeign DBCluster
instance resourceDBCluster :: Resource DBCluster where type_ _ = "AWS::DocDB::DBCluster"

dbcBCluster :: DBCluster
dbcBCluster = DBCluster
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