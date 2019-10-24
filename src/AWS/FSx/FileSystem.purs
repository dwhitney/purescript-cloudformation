module AWS.FSx.FileSystem where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


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