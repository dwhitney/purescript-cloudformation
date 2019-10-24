module CloudFormation.AWS.FSx.FileSystem where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::FSx::FileSystem`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html
-- |
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-kmskeyid
-- | - `StorageCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-storagecapacity
-- | - `FileSystemType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-filesystemtype
-- | - `LustreConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-lustreconfiguration
-- | - `BackupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-backupid
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-subnetids
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-securitygroupids
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-tags
-- | - `WindowsConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-fsx-filesystem.html#cfn-fsx-filesystem-windowsconfiguration
type FileSystem =
  { "FileSystemType" :: String
  , "SubnetIds" :: Array String
  , "KmsKeyId" :: Maybe String
  , "StorageCapacity" :: Maybe Int
  , "LustreConfiguration" :: Maybe LustreConfiguration
  , "BackupId" :: Maybe String
  , "SecurityGroupIds" :: Maybe (Array String)
  , "Tags" :: Maybe (Array Tag)
  , "WindowsConfiguration" :: Maybe WindowsConfiguration
  }

fileSystem :: { "FileSystemType" :: String, "SubnetIds" :: Array String } -> FileSystem
fileSystem required =
  merge required
    { "KmsKeyId" : Nothing
    , "StorageCapacity" : Nothing
    , "LustreConfiguration" : Nothing
    , "BackupId" : Nothing
    , "SecurityGroupIds" : Nothing
    , "Tags" : Nothing
    , "WindowsConfiguration" : Nothing
    }

-- | `AWS::FSx::FileSystem.WindowsConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html
-- |
-- | - `SelfManagedActiveDirectoryConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration
-- | - `WeeklyMaintenanceStartTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-weeklymaintenancestarttime
-- | - `ActiveDirectoryId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-activedirectoryid
-- | - `ThroughputCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-throughputcapacity
-- | - `CopyTagsToBackups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-copytagstobackups
-- | - `DailyAutomaticBackupStartTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-dailyautomaticbackupstarttime
-- | - `AutomaticBackupRetentionDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-automaticbackupretentiondays
type WindowsConfiguration =
  { "SelfManagedActiveDirectoryConfiguration" :: Maybe SelfManagedActiveDirectoryConfiguration
  , "WeeklyMaintenanceStartTime" :: Maybe String
  , "ActiveDirectoryId" :: Maybe String
  , "ThroughputCapacity" :: Maybe Int
  , "CopyTagsToBackups" :: Maybe Boolean
  , "DailyAutomaticBackupStartTime" :: Maybe String
  , "AutomaticBackupRetentionDays" :: Maybe Int
  }

windowsConfiguration :: WindowsConfiguration
windowsConfiguration =
  { "SelfManagedActiveDirectoryConfiguration" : Nothing
  , "WeeklyMaintenanceStartTime" : Nothing
  , "ActiveDirectoryId" : Nothing
  , "ThroughputCapacity" : Nothing
  , "CopyTagsToBackups" : Nothing
  , "DailyAutomaticBackupStartTime" : Nothing
  , "AutomaticBackupRetentionDays" : Nothing
  }

-- | `AWS::FSx::FileSystem.SelfManagedActiveDirectoryConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html
-- |
-- | - `FileSystemAdministratorsGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-filesystemadministratorsgroup
-- | - `UserName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-username
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-domainname
-- | - `OrganizationalUnitDistinguishedName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-organizationalunitdistinguishedname
-- | - `DnsIps`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-dnsips
-- | - `Password`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration-password
type SelfManagedActiveDirectoryConfiguration =
  { "FileSystemAdministratorsGroup" :: Maybe String
  , "UserName" :: Maybe String
  , "DomainName" :: Maybe String
  , "OrganizationalUnitDistinguishedName" :: Maybe String
  , "DnsIps" :: Maybe (Array String)
  , "Password" :: Maybe String
  }

selfManagedActiveDirectoryConfiguration :: SelfManagedActiveDirectoryConfiguration
selfManagedActiveDirectoryConfiguration =
  { "FileSystemAdministratorsGroup" : Nothing
  , "UserName" : Nothing
  , "DomainName" : Nothing
  , "OrganizationalUnitDistinguishedName" : Nothing
  , "DnsIps" : Nothing
  , "Password" : Nothing
  }

-- | `AWS::FSx::FileSystem.LustreConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html
-- |
-- | - `ImportPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-importpath
-- | - `WeeklyMaintenanceStartTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-weeklymaintenancestarttime
-- | - `ImportedFileChunkSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-importedfilechunksize
-- | - `ExportPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-lustreconfiguration.html#cfn-fsx-filesystem-lustreconfiguration-exportpath
type LustreConfiguration =
  { "ImportPath" :: Maybe String
  , "WeeklyMaintenanceStartTime" :: Maybe String
  , "ImportedFileChunkSize" :: Maybe Int
  , "ExportPath" :: Maybe String
  }

lustreConfiguration :: LustreConfiguration
lustreConfiguration =
  { "ImportPath" : Nothing
  , "WeeklyMaintenanceStartTime" : Nothing
  , "ImportedFileChunkSize" : Nothing
  , "ExportPath" : Nothing
  }