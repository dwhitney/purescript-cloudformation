module CloudFormation.AWS.Backup.BackupVault where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype BackupVault = BackupVault
  { "BackupVaultName" :: Value String
  , "BackupVaultTags" :: Maybe (Value CF.Json)
  , "EncryptionKeyArn" :: Maybe (Value String)
  , "Notifications" :: Maybe (Value NotificationObjectType)
  , "AccessPolicy" :: Maybe (Value CF.Json)
  }

derive instance newtypeBackupVault :: Newtype BackupVault _
derive newtype instance writeBackupVault :: WriteForeign BackupVault
instance resourceBackupVault :: Resource BackupVault where type_ _ = "AWS::Backup::BackupVault"

backupVault :: { "BackupVaultName" :: Value String } -> BackupVault
backupVault required = BackupVault
  (merge required
    { "BackupVaultTags" : Nothing
    , "EncryptionKeyArn" : Nothing
    , "Notifications" : Nothing
    , "AccessPolicy" : Nothing
    })

-- | `AWS::Backup::BackupVault.NotificationObjectType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html
-- |
-- | - `SNSTopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html#cfn-backup-backupvault-notificationobjecttype-snstopicarn
-- | - `BackupVaultEvents`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupvault-notificationobjecttype.html#cfn-backup-backupvault-notificationobjecttype-backupvaultevents
type NotificationObjectType =
  { "SNSTopicArn" :: Value String
  , "BackupVaultEvents" :: Value (Array String)
  }

notificationObjectType :: { "SNSTopicArn" :: Value String, "BackupVaultEvents" :: Value (Array String) } -> NotificationObjectType
notificationObjectType required =
  required