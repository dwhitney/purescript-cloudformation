module CloudFormation.AWS.Backup.BackupVault where 

import CloudFormation (Json)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Backup::BackupVault`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupvault.html
-- |
-- | - `BackupVaultTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupvault.html#cfn-backup-backupvault-backupvaulttags
-- | - `BackupVaultName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupvault.html#cfn-backup-backupvault-backupvaultname
-- | - `EncryptionKeyArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupvault.html#cfn-backup-backupvault-encryptionkeyarn
-- | - `Notifications`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupvault.html#cfn-backup-backupvault-notifications
-- | - `AccessPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupvault.html#cfn-backup-backupvault-accesspolicy
type BackupVault =
  { "BackupVaultName" :: String
  , "BackupVaultTags" :: Maybe Json
  , "EncryptionKeyArn" :: Maybe String
  , "Notifications" :: Maybe NotificationObjectType
  , "AccessPolicy" :: Maybe Json
  }

backupVault :: { "BackupVaultName" :: String } -> BackupVault
backupVault required =
  merge required
    { "BackupVaultTags" : Nothing
    , "EncryptionKeyArn" : Nothing
    , "Notifications" : Nothing
    , "AccessPolicy" : Nothing
    }

-- | `AWS::Backup::BackupVault.NotificationObjectType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html
-- |
-- | - `SNSTopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html#cfn-backup-backupvault-notificationobjecttype-snstopicarn
-- | - `BackupVaultEvents`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html#cfn-backup-backupvault-notificationobjecttype-backupvaultevents
type NotificationObjectType =
  { "SNSTopicArn" :: String
  , "BackupVaultEvents" :: Array String
  }

notificationObjectType :: { "SNSTopicArn" :: String, "BackupVaultEvents" :: Array String } -> NotificationObjectType
notificationObjectType required =
  required