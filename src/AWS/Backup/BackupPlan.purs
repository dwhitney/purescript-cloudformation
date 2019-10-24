module AWS.Backup.BackupPlan where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type BackupPlan =
  { "BackupPlan" :: BackupPlanResourceType
  , "BackupPlanTags" :: Maybe Foreign
  }

backupPlan :: { "BackupPlan" :: BackupPlanResourceType } -> BackupPlan
backupPlan required =
  merge required
    { "BackupPlanTags" : Nothing
    }

type BackupPlanResourceType =
  { "BackupPlanName" :: String
  , "BackupPlanRule" :: Array BackupRuleResourceType
  }

backupPlanResourceType :: { "BackupPlanName" :: String, "BackupPlanRule" :: Array BackupRuleResourceType } -> BackupPlanResourceType
backupPlanResourceType required =
  required

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

type LifecycleResourceType =
  { "DeleteAfterDays" :: Maybe Number
  , "MoveToColdStorageAfterDays" :: Maybe Number
  }

lifecycleResourceType :: LifecycleResourceType
lifecycleResourceType =
  { "DeleteAfterDays" : Nothing
  , "MoveToColdStorageAfterDays" : Nothing
  }