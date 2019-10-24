module CloudFormation.AWS.RDS.DBInstance where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type DBInstance =
  { "DBInstanceClass" :: String
  , "AllocatedStorage" :: Maybe String
  , "AllowMajorVersionUpgrade" :: Maybe Boolean
  , "AssociatedRoles" :: Maybe (Array DBInstanceRole)
  , "AutoMinorVersionUpgrade" :: Maybe Boolean
  , "AvailabilityZone" :: Maybe String
  , "BackupRetentionPeriod" :: Maybe Int
  , "CharacterSetName" :: Maybe String
  , "CopyTagsToSnapshot" :: Maybe Boolean
  , "DBClusterIdentifier" :: Maybe String
  , "DBInstanceIdentifier" :: Maybe String
  , "DBName" :: Maybe String
  , "DBParameterGroupName" :: Maybe String
  , "DBSecurityGroups" :: Maybe (Array String)
  , "DBSnapshotIdentifier" :: Maybe String
  , "DBSubnetGroupName" :: Maybe String
  , "DeleteAutomatedBackups" :: Maybe Boolean
  , "DeletionProtection" :: Maybe Boolean
  , "Domain" :: Maybe String
  , "DomainIAMRoleName" :: Maybe String
  , "EnableCloudwatchLogsExports" :: Maybe (Array String)
  , "EnableIAMDatabaseAuthentication" :: Maybe Boolean
  , "EnablePerformanceInsights" :: Maybe Boolean
  , "Engine" :: Maybe String
  , "EngineVersion" :: Maybe String
  , "Iops" :: Maybe Int
  , "KmsKeyId" :: Maybe String
  , "LicenseModel" :: Maybe String
  , "MasterUserPassword" :: Maybe String
  , "MasterUsername" :: Maybe String
  , "MonitoringInterval" :: Maybe Int
  , "MonitoringRoleArn" :: Maybe String
  , "MultiAZ" :: Maybe Boolean
  , "OptionGroupName" :: Maybe String
  , "PerformanceInsightsKMSKeyId" :: Maybe String
  , "PerformanceInsightsRetentionPeriod" :: Maybe Int
  , "Port" :: Maybe String
  , "PreferredBackupWindow" :: Maybe String
  , "PreferredMaintenanceWindow" :: Maybe String
  , "ProcessorFeatures" :: Maybe (Array ProcessorFeature)
  , "PromotionTier" :: Maybe Int
  , "PubliclyAccessible" :: Maybe Boolean
  , "SourceDBInstanceIdentifier" :: Maybe String
  , "SourceRegion" :: Maybe String
  , "StorageEncrypted" :: Maybe Boolean
  , "StorageType" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "Timezone" :: Maybe String
  , "UseDefaultProcessorFeatures" :: Maybe Boolean
  , "VPCSecurityGroups" :: Maybe (Array String)
  }

dbiBInstance :: { "DBInstanceClass" :: String } -> DBInstance
dbiBInstance required =
  merge required
    { "AllocatedStorage" : Nothing
    , "AllowMajorVersionUpgrade" : Nothing
    , "AssociatedRoles" : Nothing
    , "AutoMinorVersionUpgrade" : Nothing
    , "AvailabilityZone" : Nothing
    , "BackupRetentionPeriod" : Nothing
    , "CharacterSetName" : Nothing
    , "CopyTagsToSnapshot" : Nothing
    , "DBClusterIdentifier" : Nothing
    , "DBInstanceIdentifier" : Nothing
    , "DBName" : Nothing
    , "DBParameterGroupName" : Nothing
    , "DBSecurityGroups" : Nothing
    , "DBSnapshotIdentifier" : Nothing
    , "DBSubnetGroupName" : Nothing
    , "DeleteAutomatedBackups" : Nothing
    , "DeletionProtection" : Nothing
    , "Domain" : Nothing
    , "DomainIAMRoleName" : Nothing
    , "EnableCloudwatchLogsExports" : Nothing
    , "EnableIAMDatabaseAuthentication" : Nothing
    , "EnablePerformanceInsights" : Nothing
    , "Engine" : Nothing
    , "EngineVersion" : Nothing
    , "Iops" : Nothing
    , "KmsKeyId" : Nothing
    , "LicenseModel" : Nothing
    , "MasterUserPassword" : Nothing
    , "MasterUsername" : Nothing
    , "MonitoringInterval" : Nothing
    , "MonitoringRoleArn" : Nothing
    , "MultiAZ" : Nothing
    , "OptionGroupName" : Nothing
    , "PerformanceInsightsKMSKeyId" : Nothing
    , "PerformanceInsightsRetentionPeriod" : Nothing
    , "Port" : Nothing
    , "PreferredBackupWindow" : Nothing
    , "PreferredMaintenanceWindow" : Nothing
    , "ProcessorFeatures" : Nothing
    , "PromotionTier" : Nothing
    , "PubliclyAccessible" : Nothing
    , "SourceDBInstanceIdentifier" : Nothing
    , "SourceRegion" : Nothing
    , "StorageEncrypted" : Nothing
    , "StorageType" : Nothing
    , "Tags" : Nothing
    , "Timezone" : Nothing
    , "UseDefaultProcessorFeatures" : Nothing
    , "VPCSecurityGroups" : Nothing
    }

type ProcessorFeature =
  { "Name" :: Maybe String
  , "Value" :: Maybe String
  }

processorFeature :: ProcessorFeature
processorFeature =
  { "Name" : Nothing
  , "Value" : Nothing
  }

type DBInstanceRole =
  { "FeatureName" :: String
  , "RoleArn" :: String
  , "Status" :: Maybe String
  }

dbiBInstanceRole :: { "FeatureName" :: String, "RoleArn" :: String } -> DBInstanceRole
dbiBInstanceRole required =
  merge required
    { "Status" : Nothing
    }