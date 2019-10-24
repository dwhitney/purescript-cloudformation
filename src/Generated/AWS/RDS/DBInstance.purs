module CloudFormation.AWS.RDS.DBInstance where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::RDS::DBInstance`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html
-- |
-- | - `AllocatedStorage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-allocatedstorage
-- | - `AllowMajorVersionUpgrade`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-allowmajorversionupgrade
-- | - `AssociatedRoles`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-associatedroles
-- | - `AutoMinorVersionUpgrade`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-autominorversionupgrade
-- | - `AvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-availabilityzone
-- | - `BackupRetentionPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-backupretentionperiod
-- | - `CharacterSetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-charactersetname
-- | - `CopyTagsToSnapshot`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-copytagstosnapshot
-- | - `DBClusterIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbclusteridentifier
-- | - `DBInstanceClass`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbinstanceclass
-- | - `DBInstanceIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbinstanceidentifier
-- | - `DBName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbname
-- | - `DBParameterGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbparametergroupname
-- | - `DBSecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsecuritygroups
-- | - `DBSnapshotIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsnapshotidentifier
-- | - `DBSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-dbsubnetgroupname
-- | - `DeleteAutomatedBackups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-deleteautomatedbackups
-- | - `DeletionProtection`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-deletionprotection
-- | - `Domain`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-domain
-- | - `DomainIAMRoleName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-domainiamrolename
-- | - `EnableCloudwatchLogsExports`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-enablecloudwatchlogsexports
-- | - `EnableIAMDatabaseAuthentication`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-enableiamdatabaseauthentication
-- | - `EnablePerformanceInsights`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-enableperformanceinsights
-- | - `Engine`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-engine
-- | - `EngineVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-engineversion
-- | - `Iops`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-iops
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-kmskeyid
-- | - `LicenseModel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-licensemodel
-- | - `MasterUserPassword`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-masteruserpassword
-- | - `MasterUsername`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-masterusername
-- | - `MonitoringInterval`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-monitoringinterval
-- | - `MonitoringRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-monitoringrolearn
-- | - `MultiAZ`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-multiaz
-- | - `OptionGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-optiongroupname
-- | - `PerformanceInsightsKMSKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-performanceinsightskmskeyid
-- | - `PerformanceInsightsRetentionPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-performanceinsightsretentionperiod
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-port
-- | - `PreferredBackupWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-preferredbackupwindow
-- | - `PreferredMaintenanceWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-preferredmaintenancewindow
-- | - `ProcessorFeatures`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-processorfeatures
-- | - `PromotionTier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-promotiontier
-- | - `PubliclyAccessible`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-publiclyaccessible
-- | - `SourceDBInstanceIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-sourcedbinstanceidentifier
-- | - `SourceRegion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-sourceregion
-- | - `StorageEncrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-storageencrypted
-- | - `StorageType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-storagetype
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-tags
-- | - `Timezone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-timezone
-- | - `UseDefaultProcessorFeatures`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-usedefaultprocessorfeatures
-- | - `VPCSecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-database-instance.html#cfn-rds-dbinstance-vpcsecuritygroups
newtype DBInstance = DBInstance
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

derive instance newtypeDBInstance :: Newtype DBInstance _
instance resourceDBInstance :: Resource DBInstance where type_ _ = "AWS::RDS::DBInstance"

dbiBInstance :: { "DBInstanceClass" :: String } -> DBInstance
dbiBInstance required = DBInstance
  (merge required
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
    })

-- | `AWS::RDS::DBInstance.ProcessorFeature`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-processorfeature.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-processorfeature.html#cfn-rds-dbinstance-processorfeature-name
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-processorfeature.html#cfn-rds-dbinstance-processorfeature-value
type ProcessorFeature =
  { "Name" :: Maybe String
  , "Value" :: Maybe String
  }

processorFeature :: ProcessorFeature
processorFeature =
  { "Name" : Nothing
  , "Value" : Nothing
  }

-- | `AWS::RDS::DBInstance.DBInstanceRole`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html
-- |
-- | - `FeatureName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html#cfn-rds-dbinstance-dbinstancerole-featurename
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html#cfn-rds-dbinstance-dbinstancerole-rolearn
-- | - `Status`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbinstance-dbinstancerole.html#cfn-rds-dbinstance-dbinstancerole-status
type DBInstanceRole =
  { "FeatureName" :: String
  , "RoleArn" :: String
  , "Status" :: Maybe String
  }

dbiBInstanceRole :: { "FeatureName" :: String, "RoleArn" :: String } -> DBInstanceRole
dbiBInstanceRole required =
  (merge required
    { "Status" : Nothing
    })