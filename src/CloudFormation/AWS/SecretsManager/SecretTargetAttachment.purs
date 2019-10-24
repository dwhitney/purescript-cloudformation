module CloudFormation.AWS.SecretsManager.SecretTargetAttachment where 




-- | `AWS::SecretsManager::SecretTargetAttachment`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html-- |
-- | - `SecretId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html#cfn-secretsmanager-secrettargetattachment-secretid
-- | - `TargetType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html#cfn-secretsmanager-secrettargetattachment-targettype
-- | - `TargetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html#cfn-secretsmanager-secrettargetattachment-targetid
type SecretTargetAttachment =
  { "SecretId" :: String
  , "TargetType" :: String
  , "TargetId" :: String
  }

secretTargetAttachment :: { "SecretId" :: String, "TargetType" :: String, "TargetId" :: String } -> SecretTargetAttachment
secretTargetAttachment required =
  required