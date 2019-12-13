module CloudFormation.AWS.FSx.FileSystem where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype FileSystem = FileSystem
  { "FileSystemType" :: Value String
  , "SubnetIds" :: Value (Array String)
  , "KmsKeyId" :: Maybe (Value String)
  , "StorageCapacity" :: Maybe (Value Int)
  , "LustreConfiguration" :: Maybe (Value LustreConfiguration)
  , "BackupId" :: Maybe (Value String)
  , "SecurityGroupIds" :: Maybe (Value (Array String))
  , "Tags" :: Maybe (Value (Array Tag))
  , "WindowsConfiguration" :: Maybe (Value WindowsConfiguration)
  }

derive instance newtypeFileSystem :: Newtype FileSystem _
derive newtype instance writeFileSystem :: WriteForeign FileSystem
instance resourceFileSystem :: Resource FileSystem where type_ _ = "AWS::FSx::FileSystem"

fileSystem :: { "FileSystemType" :: Value String, "SubnetIds" :: Value (Array String) } -> FileSystem
fileSystem required = FileSystem
  (merge required
    { "KmsKeyId" : Nothing
    , "StorageCapacity" : Nothing
    , "LustreConfiguration" : Nothing
    , "BackupId" : Nothing
    , "SecurityGroupIds" : Nothing
    , "Tags" : Nothing
    , "WindowsConfiguration" : Nothing
    })

-- | `AWS::FSx::FileSystem.WindowsConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html
-- |
-- | - `SelfManagedActiveDirectoryConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-selfmanagedactivedirectoryconfiguration
-- | - `WeeklyMaintenanceStartTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-weeklymaintenancestarttime
-- | - `ActiveDirectoryId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-activedirectoryid
-- | - `DeploymentType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-deploymenttype
-- | - `ThroughputCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-throughputcapacity
-- | - `CopyTagsToBackups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-copytagstobackups
-- | - `DailyAutomaticBackupStartTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-dailyautomaticbackupstarttime
-- | - `AutomaticBackupRetentionDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-automaticbackupretentiondays
-- | - `PreferredSubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-filesystem-windowsconfiguration.html#cfn-fsx-filesystem-windowsconfiguration-preferredsubnetid
type WindowsConfiguration =
  { "SelfManagedActiveDirectoryConfiguration" :: Maybe (Value SelfManagedActiveDirectoryConfiguration)
  , "WeeklyMaintenanceStartTime" :: Maybe (Value String)
  , "ActiveDirectoryId" :: Maybe (Value String)
  , "DeploymentType" :: Maybe (Value String)
  , "ThroughputCapacity" :: Maybe (Value Int)
  , "CopyTagsToBackups" :: Maybe (Value Boolean)
  , "DailyAutomaticBackupStartTime" :: Maybe (Value String)
  , "AutomaticBackupRetentionDays" :: Maybe (Value Int)
  , "PreferredSubnetId" :: Maybe (Value String)
  }

windowsConfiguration :: WindowsConfiguration
windowsConfiguration =
  { "SelfManagedActiveDirectoryConfiguration" : Nothing
  , "WeeklyMaintenanceStartTime" : Nothing
  , "ActiveDirectoryId" : Nothing
  , "DeploymentType" : Nothing
  , "ThroughputCapacity" : Nothing
  , "CopyTagsToBackups" : Nothing
  , "DailyAutomaticBackupStartTime" : Nothing
  , "AutomaticBackupRetentionDays" : Nothing
  , "PreferredSubnetId" : Nothing
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
  { "FileSystemAdministratorsGroup" :: Maybe (Value String)
  , "UserName" :: Maybe (Value String)
  , "DomainName" :: Maybe (Value String)
  , "OrganizationalUnitDistinguishedName" :: Maybe (Value String)
  , "DnsIps" :: Maybe (Value (Array String))
  , "Password" :: Maybe (Value String)
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
  { "ImportPath" :: Maybe (Value String)
  , "WeeklyMaintenanceStartTime" :: Maybe (Value String)
  , "ImportedFileChunkSize" :: Maybe (Value Int)
  , "ExportPath" :: Maybe (Value String)
  }

lustreConfiguration :: LustreConfiguration
lustreConfiguration =
  { "ImportPath" : Nothing
  , "WeeklyMaintenanceStartTime" : Nothing
  , "ImportedFileChunkSize" : Nothing
  , "ExportPath" : Nothing
  }