module CloudFormation.AWS.Neptune.DBCluster where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "StorageEncrypted" :: Maybe (Value Boolean)
  , "KmsKeyId" :: Maybe (Value String)
  , "AvailabilityZones" :: Maybe (Value (Array String))
  , "SnapshotIdentifier" :: Maybe (Value String)
  , "Port" :: Maybe (Value Int)
  , "DBClusterIdentifier" :: Maybe (Value String)
  , "PreferredMaintenanceWindow" :: Maybe (Value String)
  , "IamAuthEnabled" :: Maybe (Value Boolean)
  , "DBSubnetGroupName" :: Maybe (Value String)
  , "PreferredBackupWindow" :: Maybe (Value String)
  , "VpcSecurityGroupIds" :: Maybe (Value (Array String))
  , "DBClusterParameterGroupName" :: Maybe (Value String)
  , "BackupRetentionPeriod" :: Maybe (Value Int)
  , "Tags" :: Maybe (Value (Array Tag))
  , "EnableCloudwatchLogsExports" :: Maybe (Value (Array String))
  }

derive instance newtypeDBCluster :: Newtype DBCluster _
derive newtype instance writeDBCluster :: WriteForeign DBCluster
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