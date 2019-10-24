module CloudFormation.AWS.Neptune.DBCluster where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Neptune::DBCluster`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html
-- |
-- | - `StorageEncrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-storageencrypted
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-kmskeyid
-- | - `AvailabilityZones`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-availabilityzones
-- | - `SnapshotIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-snapshotidentifier
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-port
-- | - `DBClusterIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-dbclusteridentifier
-- | - `PreferredMaintenanceWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-preferredmaintenancewindow
-- | - `IamAuthEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-iamauthenabled
-- | - `DBSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-dbsubnetgroupname
-- | - `PreferredBackupWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-preferredbackupwindow
-- | - `VpcSecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-vpcsecuritygroupids
-- | - `DBClusterParameterGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-dbclusterparametergroupname
-- | - `BackupRetentionPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-backupretentionperiod
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-tags
-- | - `EnableCloudwatchLogsExports`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-enablecloudwatchlogsexports
newtype DBCluster = DBCluster
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

derive instance newtypeDBCluster :: Newtype DBCluster _
instance resourceDBCluster :: Resource DBCluster where type_ _ = "AWS::Neptune::DBCluster"

dbcBCluster :: DBCluster
dbcBCluster = DBCluster
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