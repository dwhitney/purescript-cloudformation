module AWS.Backup.BackupSelection where 

import Data.Maybe (Maybe(..))
import Record (merge)


type BackupSelection =
  { "BackupSelection" :: BackupSelectionResourceType
  , "BackupPlanId" :: String
  }

backupSelection :: { "BackupSelection" :: BackupSelectionResourceType, "BackupPlanId" :: String } -> BackupSelection
backupSelection required =
  required

type ConditionResourceType =
  { "ConditionValue" :: String
  , "ConditionKey" :: String
  , "ConditionType" :: String
  }

conditionResourceType :: { "ConditionValue" :: String, "ConditionKey" :: String, "ConditionType" :: String } -> ConditionResourceType
conditionResourceType required =
  required

type BackupSelectionResourceType =
  { "SelectionName" :: String
  , "IamRoleArn" :: String
  , "ListOfTags" :: Maybe (Array ConditionResourceType)
  , "Resources" :: Maybe (Array String)
  }

backupSelectionResourceType :: { "SelectionName" :: String, "IamRoleArn" :: String } -> BackupSelectionResourceType
backupSelectionResourceType required =
  merge required
    { "ListOfTags" : Nothing
    , "Resources" : Nothing
    }