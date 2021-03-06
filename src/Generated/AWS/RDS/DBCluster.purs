module CloudFormation.AWS.RDS.DBCluster where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::RDS::DBCluster`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html
-- |
-- | - `AssociatedRoles`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-associatedroles
-- | - `AvailabilityZones`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-availabilityzones
-- | - `BacktrackWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-backtrackwindow
-- | - `BackupRetentionPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-backuprententionperiod
-- | - `DBClusterIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbclusteridentifier
-- | - `DBClusterParameterGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbclusterparametergroupname
-- | - `DBSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbsubnetgroupname
-- | - `DatabaseName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-databasename
-- | - `DeletionProtection`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-deletionprotection
-- | - `EnableCloudwatchLogsExports`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enablecloudwatchlogsexports
-- | - `EnableHttpEndpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enablehttpendpoint
-- | - `EnableIAMDatabaseAuthentication`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enableiamdatabaseauthentication
-- | - `Engine`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-engine
-- | - `EngineMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enginemode
-- | - `EngineVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-engineversion
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-kmskeyid
-- | - `MasterUserPassword`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-masteruserpassword
-- | - `MasterUsername`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-masterusername
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-port
-- | - `PreferredBackupWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-preferredbackupwindow
-- | - `PreferredMaintenanceWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-preferredmaintenancewindow
-- | - `ReplicationSourceIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-replicationsourceidentifier
-- | - `RestoreType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-restoretype
-- | - `ScalingConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-scalingconfiguration
-- | - `SnapshotIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-snapshotidentifier
-- | - `SourceDBClusterIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-sourcedbclusteridentifier
-- | - `SourceRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-sourceregion
-- | - `StorageEncrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-storageencrypted
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-tags
-- | - `UseLatestRestorableTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-uselatestrestorabletime
-- | - `VpcSecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-vpcsecuritygroupids
newtype DBCluster = DBCluster
  { "Engine" :: Value String
  , "AssociatedRoles" :: Maybe (Value (Array DBClusterRole))
  , "AvailabilityZones" :: Maybe (Value (Array String))
  , "BacktrackWindow" :: Maybe (Value Number)
  , "BackupRetentionPeriod" :: Maybe (Value Int)
  , "DBClusterIdentifier" :: Maybe (Value String)
  , "DBClusterParameterGroupName" :: Maybe (Value String)
  , "DBSubnetGroupName" :: Maybe (Value String)
  , "DatabaseName" :: Maybe (Value String)
  , "DeletionProtection" :: Maybe (Value Boolean)
  , "EnableCloudwatchLogsExports" :: Maybe (Value (Array String))
  , "EnableHttpEndpoint" :: Maybe (Value Boolean)
  , "EnableIAMDatabaseAuthentication" :: Maybe (Value Boolean)
  , "EngineMode" :: Maybe (Value String)
  , "EngineVersion" :: Maybe (Value String)
  , "KmsKeyId" :: Maybe (Value String)
  , "MasterUserPassword" :: Maybe (Value String)
  , "MasterUsername" :: Maybe (Value String)
  , "Port" :: Maybe (Value Int)
  , "PreferredBackupWindow" :: Maybe (Value String)
  , "PreferredMaintenanceWindow" :: Maybe (Value String)
  , "ReplicationSourceIdentifier" :: Maybe (Value String)
  , "RestoreType" :: Maybe (Value String)
  , "ScalingConfiguration" :: Maybe (Value ScalingConfiguration)
  , "SnapshotIdentifier" :: Maybe (Value String)
  , "SourceDBClusterIdentifier" :: Maybe (Value String)
  , "SourceRegion" :: Maybe (Value String)
  , "StorageEncrypted" :: Maybe (Value Boolean)
  , "Tags" :: Maybe (Value (Array Tag))
  , "UseLatestRestorableTime" :: Maybe (Value Boolean)
  , "VpcSecurityGroupIds" :: Maybe (Value (Array String))
  }

derive instance newtypeDBCluster :: Newtype DBCluster _
derive newtype instance writeDBCluster :: WriteForeign DBCluster
instance resourceDBCluster :: Resource DBCluster where type_ _ = "AWS::RDS::DBCluster"

dbcBCluster :: { "Engine" :: Value String } -> DBCluster
dbcBCluster required = DBCluster
  (merge required
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
    , "EnableHttpEndpoint" : Nothing
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
    })

-- | `AWS::RDS::DBCluster.DBClusterRole`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-dbclusterrole.html
-- |
-- | - `FeatureName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-dbclusterrole.html#cfn-rds-dbcluster-dbclusterrole-featurename
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-dbclusterrole.html#cfn-rds-dbcluster-dbclusterrole-rolearn
type DBClusterRole =
  { "RoleArn" :: Value String
  , "FeatureName" :: Maybe (Value String)
  }

dbcBClusterRole :: { "RoleArn" :: Value String } -> DBClusterRole
dbcBClusterRole required =
  (merge required
    { "FeatureName" : Nothing
    })

-- | `AWS::RDS::DBCluster.ScalingConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html
-- |
-- | - `AutoPause`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-autopause
-- | - `MaxCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-maxcapacity
-- | - `MinCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-mincapacity
-- | - `SecondsUntilAutoPause`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-scalingconfiguration.html#cfn-rds-dbcluster-scalingconfiguration-secondsuntilautopause
type ScalingConfiguration =
  { "AutoPause" :: Maybe (Value Boolean)
  , "MaxCapacity" :: Maybe (Value Int)
  , "MinCapacity" :: Maybe (Value Int)
  , "SecondsUntilAutoPause" :: Maybe (Value Int)
  }

scalingConfiguration :: ScalingConfiguration
scalingConfiguration =
  { "AutoPause" : Nothing
  , "MaxCapacity" : Nothing
  , "MinCapacity" : Nothing
  , "SecondsUntilAutoPause" : Nothing
  }