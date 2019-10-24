module CloudFormation.AWS.Backup.BackupPlan where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Backup::BackupPlan`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupplan.html-- |
-- | - `BackupPlan`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupplan.html#cfn-backup-backupplan-backupplan
-- | - `BackupPlanTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupplan.html#cfn-backup-backupplan-backupplantags
type BackupPlan =
  { "BackupPlan" :: BackupPlanResourceType
  , "BackupPlanTags" :: Maybe Foreign
  }

backupPlan :: { "BackupPlan" :: BackupPlanResourceType } -> BackupPlan
backupPlan required =
  merge required
    { "BackupPlanTags" : Nothing
    }

-- | `AWS::Backup::BackupPlan.BackupPlanResourceType`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html-- |
-- | - `BackupPlanName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html#cfn-backup-backupplan-backupplanresourcetype-backupplanname
-- | - `BackupPlanRule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupplanresourcetype.html#cfn-backup-backupplan-backupplanresourcetype-backupplanrule
type BackupPlanResourceType =
  { "BackupPlanName" :: String
  , "BackupPlanRule" :: Array BackupRuleResourceType
  }

backupPlanResourceType :: { "BackupPlanName" :: String, "BackupPlanRule" :: Array BackupRuleResourceType } -> BackupPlanResourceType
backupPlanResourceType required =
  required

-- | `AWS::Backup::BackupPlan.BackupRuleResourceType`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-backupruleresourcetype.html-- |
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
  { "TargetBackupVault" :: String
  , "RuleName" :: String
  , "CompletionWindowMinutes" :: Maybe Number
  , "ScheduleExpression" :: Maybe String
  , "RecoveryPointTags" :: Maybe Foreign
  , "Lifecycle" :: Maybe LifecycleResourceType
  , "StartWindowMinutes" :: Maybe Number
  }

backupRuleResourceType :: { "TargetBackupVault" :: String, "RuleName" :: String } -> BackupRuleResourceType
backupRuleResourceType required =
  merge required
    { "CompletionWindowMinutes" : Nothing
    , "ScheduleExpression" : Nothing
    , "RecoveryPointTags" : Nothing
    , "Lifecycle" : Nothing
    , "StartWindowMinutes" : Nothing
    }

-- | `AWS::Backup::BackupPlan.LifecycleResourceType`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html-- |
-- | - `DeleteAfterDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html#cfn-backup-backupplan-lifecycleresourcetype-deleteafterdays
-- | - `MoveToColdStorageAfterDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupplan-lifecycleresourcetype.html#cfn-backup-backupplan-lifecycleresourcetype-movetocoldstorageafterdays
type LifecycleResourceType =
  { "DeleteAfterDays" :: Maybe Number
  , "MoveToColdStorageAfterDays" :: Maybe Number
  }

lifecycleResourceType :: LifecycleResourceType
lifecycleResourceType =
  { "DeleteAfterDays" : Nothing
  , "MoveToColdStorageAfterDays" : Nothing
  }