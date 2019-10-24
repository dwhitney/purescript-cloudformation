module AWS.Backup.BackupVault where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type BackupVault =
  { "BackupVaultName" :: String
  , "BackupVaultTags" :: Maybe Foreign
  , "EncryptionKeyArn" :: Maybe String
  , "Notifications" :: Maybe NotificationObjectType
  , "AccessPolicy" :: Maybe Foreign
  }

backupVault :: { "BackupVaultName" :: String } -> BackupVault
backupVault required =
  merge required
    { "BackupVaultTags" : Nothing
    , "EncryptionKeyArn" : Nothing
    , "Notifications" : Nothing
    , "AccessPolicy" : Nothing
    }

type NotificationObjectType =
  { "SNSTopicArn" :: String
  , "BackupVaultEvents" :: Array String
  }

notificationObjectType :: { "SNSTopicArn" :: String, "BackupVaultEvents" :: Array String } -> NotificationObjectType
notificationObjectType required =
  required