module CloudFormation.AWS.RDS.DBCluster where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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

derive instance newtypeDBCluster :: Newtype DBCluster _
instance resourceDBCluster :: Resource DBCluster where type_ _ = "AWS::RDS::DBCluster"

dbcBCluster :: { "Engine" :: String } -> DBCluster
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
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbcluster-dbclusterrole.html#cfn-rds-dbcluster-dbclusterrole-status
type DBClusterRole =
  { "RoleArn" :: String
  , "FeatureName" :: Maybe String
  , "Status" :: Maybe String
  }

dbcBClusterRole :: { "RoleArn" :: String } -> DBClusterRole
dbcBClusterRole required =
  (merge required
    { "FeatureName" : Nothing
    , "Status" : Nothing
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