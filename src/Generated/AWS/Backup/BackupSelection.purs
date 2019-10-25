module CloudFormation.AWS.Backup.BackupSelection where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
  { "BackupSelection" :: Value BackupSelectionResourceType
  , "BackupPlanId" :: Value String
  }

derive instance newtypeBackupSelection :: Newtype BackupSelection _
derive newtype instance writeBackupSelection :: WriteForeign BackupSelection
instance resourceBackupSelection :: Resource BackupSelection where type_ _ = "AWS::Backup::BackupSelection"

backupSelection :: { "BackupSelection" :: Value BackupSelectionResourceType, "BackupPlanId" :: Value String } -> BackupSelection
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
  { "ConditionValue" :: Value String
  , "ConditionKey" :: Value String
  , "ConditionType" :: Value String
  }

conditionResourceType :: { "ConditionValue" :: Value String, "ConditionKey" :: Value String, "ConditionType" :: Value String } -> ConditionResourceType
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
  { "SelectionName" :: Value String
  , "IamRoleArn" :: Value String
  , "ListOfTags" :: Maybe (Value (Array ConditionResourceType))
  , "Resources" :: Maybe (Value (Array String))
  }

backupSelectionResourceType :: { "SelectionName" :: Value String, "IamRoleArn" :: Value String } -> BackupSelectionResourceType
backupSelectionResourceType required =
  (merge required
    { "ListOfTags" : Nothing
    , "Resources" : Nothing
    })