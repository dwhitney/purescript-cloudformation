module CloudFormation.AWS.Backup.BackupPlan where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Backup::BackupPlan`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupplan.html
-- |
-- | - `BackupPlan`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupplan.html#cfn-backup-backupplan-backupplan
-- | - `BackupPlanTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupplan.html#cfn-backup-backupplan-backupplantags
newtype BackupPlan = BackupPlan
  { "BackupPlan" :: Value BackupPlanResourceType
  , "BackupPlanTags" :: Maybe (Value CF.Json)
  }

derive instance newtypeBackupPlan :: Newtype BackupPlan _
derive newtype instance writeBackupPlan :: WriteForeign BackupPlan
instance resourceBackupPlan :: Resource BackupPlan where type_ _ = "AWS::Backup::BackupPlan"

backupPlan :: { "BackupPlan" :: Value BackupPlanResourceType } -> BackupPlan
backupPlan required = BackupPlan
  (merge required
    { "BackupPlanTags" : Nothing
    })

-- | `AWS::Backup::BackupPlan.BackupPlanResourceType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html
-- |
-- | - `BackupPlanName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html#cfn-backup-backupplan-backupplanresourcetype-backupplanname
-- | - `BackupPlanRule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html#cfn-backup-backupplan-backupplanresourcetype-backupplanrule
type BackupPlanResourceType =
  { "BackupPlanName" :: Value String
  , "BackupPlanRule" :: Value (Array BackupRuleResourceType)
  }

backupPlanResourceType :: { "BackupPlanName" :: Value String, "BackupPlanRule" :: Value (Array BackupRuleResourceType) } -> BackupPlanResourceType
backupPlanResourceType required =
  required

-- | `AWS::Backup::BackupPlan.BackupRuleResourceType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html
-- |
-- | - `CompletionWindowMinutes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-completionwindowminutes
-- | - `ScheduleExpression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-scheduleexpression
-- | - `RecoveryPointTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-recoverypointtags
-- | - `Lifecycle`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-lifecycle
-- | - `TargetBackupVault`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-targetbackupvault
-- | - `StartWindowMinutes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-startwindowminutes
-- | - `RuleName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html#cfn-backup-backupplan-backupruleresourcetype-rulename
type BackupRuleResourceType =
  { "TargetBackupVault" :: Value String
  , "RuleName" :: Value String
  , "CompletionWindowMinutes" :: Maybe (Value Number)
  , "ScheduleExpression" :: Maybe (Value String)
  , "RecoveryPointTags" :: Maybe (Value CF.Json)
  , "Lifecycle" :: Maybe (Value LifecycleResourceType)
  , "StartWindowMinutes" :: Maybe (Value Number)
  }

backupRuleResourceType :: { "TargetBackupVault" :: Value String, "RuleName" :: Value String } -> BackupRuleResourceType
backupRuleResourceType required =
  (merge required
    { "CompletionWindowMinutes" : Nothing
    , "ScheduleExpression" : Nothing
    , "RecoveryPointTags" : Nothing
    , "Lifecycle" : Nothing
    , "StartWindowMinutes" : Nothing
    })

-- | `AWS::Backup::BackupPlan.LifecycleResourceType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html
-- |
-- | - `DeleteAfterDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html#cfn-backup-backupplan-lifecycleresourcetype-deleteafterdays
-- | - `MoveToColdStorageAfterDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html#cfn-backup-backupplan-lifecycleresourcetype-movetocoldstorageafterdays
type LifecycleResourceType =
  { "DeleteAfterDays" :: Maybe (Value Number)
  , "MoveToColdStorageAfterDays" :: Maybe (Value Number)
  }

lifecycleResourceType :: LifecycleResourceType
lifecycleResourceType =
  { "DeleteAfterDays" : Nothing
  , "MoveToColdStorageAfterDays" : Nothing
  }