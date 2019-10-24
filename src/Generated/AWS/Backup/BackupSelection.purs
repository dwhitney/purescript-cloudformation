module CloudFormation.AWS.Backup.BackupSelection where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Backup::BackupSelection`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupselection.html
-- |
-- | - `BackupSelection`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupselection.html#cfn-backup-backupselection-backupselection
-- | - `BackupPlanId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-backup-backupselection.html#cfn-backup-backupselection-backupplanid
newtype BackupSelection = BackupSelection
  { "BackupSelection" :: BackupSelectionResourceType
  , "BackupPlanId" :: String
  }

derive instance newtypeBackupSelection :: Newtype BackupSelection _
instance resourceBackupSelection :: Resource BackupSelection where type_ _ = "AWS::Backup::BackupSelection"

backupSelection :: { "BackupSelection" :: BackupSelectionResourceType, "BackupPlanId" :: String } -> BackupSelection
backupSelection required = BackupSelection
  required

-- | `AWS::Backup::BackupSelection.ConditionResourceType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionresourcetype.html
-- |
-- | - `ConditionValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionresourcetype.html#cfn-backup-backupselection-conditionresourcetype-conditionvalue
-- | - `ConditionKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionresourcetype.html#cfn-backup-backupselection-conditionresourcetype-conditionkey
-- | - `ConditionType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-conditionresourcetype.html#cfn-backup-backupselection-conditionresourcetype-conditiontype
type ConditionResourceType =
  { "ConditionValue" :: String
  , "ConditionKey" :: String
  , "ConditionType" :: String
  }

conditionResourceType :: { "ConditionValue" :: String, "ConditionKey" :: String, "ConditionType" :: String } -> ConditionResourceType
conditionResourceType required =
  required

-- | `AWS::Backup::BackupSelection.BackupSelectionResourceType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html
-- |
-- | - `ListOfTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-listoftags
-- | - `SelectionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-selectionname
-- | - `IamRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-iamrolearn
-- | - `Resources`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-backup-backupselection-backupselectionresourcetype.html#cfn-backup-backupselection-backupselectionresourcetype-resources
type BackupSelectionResourceType =
  { "SelectionName" :: String
  , "IamRoleArn" :: String
  , "ListOfTags" :: Maybe (Array ConditionResourceType)
  , "Resources" :: Maybe (Array String)
  }

backupSelectionResourceType :: { "SelectionName" :: String, "IamRoleArn" :: String } -> BackupSelectionResourceType
backupSelectionResourceType required =
  (merge required
    { "ListOfTags" : Nothing
    , "Resources" : Nothing
    })