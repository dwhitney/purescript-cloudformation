module AWS.AmazonMQ.Broker where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Broker =
  { "EngineVersion" :: String
  , "HostInstanceType" :: String
  , "AutoMinorVersionUpgrade" :: Boolean
  , "Users" :: Array User
  , "BrokerName" :: String
  , "DeploymentMode" :: String
  , "EngineType" :: String
  , "PubliclyAccessible" :: Boolean
  , "SecurityGroups" :: Maybe (Array String)
  , "Configuration" :: Maybe ConfigurationId
  , "MaintenanceWindowStartTime" :: Maybe MaintenanceWindow
  , "Logs" :: Maybe LogList
  , "SubnetIds" :: Maybe (Array String)
  , "EncryptionOptions" :: Maybe EncryptionOptions
  , "Tags" :: Maybe (Array TagsEntry)
  }

broker :: { "EngineVersion" :: String, "HostInstanceType" :: String, "AutoMinorVersionUpgrade" :: Boolean, "Users" :: Array User, "BrokerName" :: String, "DeploymentMode" :: String, "EngineType" :: String, "PubliclyAccessible" :: Boolean } -> Broker
broker required =
  merge required
    { "SecurityGroups" : Nothing
    , "Configuration" : Nothing
    , "MaintenanceWindowStartTime" : Nothing
    , "Logs" : Nothing
    , "SubnetIds" : Nothing
    , "EncryptionOptions" : Nothing
    , "Tags" : Nothing
    }

type ConfigurationId =
  { "Revision" :: Int
  , "Id" :: String
  }

configurationId :: { "Revision" :: Int, "Id" :: String } -> ConfigurationId
configurationId required =
  required

type User =
  { "Username" :: String
  , "Password" :: String
  , "Groups" :: Maybe (Array String)
  , "ConsoleAccess" :: Maybe Boolean
  }

user :: { "Username" :: String, "Password" :: String } -> User
user required =
  merge required
    { "Groups" : Nothing
    , "ConsoleAccess" : Nothing
    }

type TagsEntry =
  { "Value" :: String
  , "Key" :: String
  }

tagsEntry :: { "Value" :: String, "Key" :: String } -> TagsEntry
tagsEntry required =
  required

type LogList =
  { "Audit" :: Maybe Boolean
  , "General" :: Maybe Boolean
  }

logList :: LogList
logList =
  { "Audit" : Nothing
  , "General" : Nothing
  }

type MaintenanceWindow =
  { "DayOfWeek" :: String
  , "TimeOfDay" :: String
  , "TimeZone" :: String
  }

maintenanceWindow :: { "DayOfWeek" :: String, "TimeOfDay" :: String, "TimeZone" :: String } -> MaintenanceWindow
maintenanceWindow required =
  required

type EncryptionOptions =
  { "UseAwsOwnedKey" :: Boolean
  , "KmsKeyId" :: Maybe String
  }

encryptionOptions :: { "UseAwsOwnedKey" :: Boolean } -> EncryptionOptions
encryptionOptions required =
  merge required
    { "KmsKeyId" : Nothing
    }