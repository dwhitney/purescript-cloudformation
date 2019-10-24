module CloudFormation.AWS.SecretsManager.SecretTargetAttachment where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SecretsManager::SecretTargetAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html
-- |
-- | - `SecretId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html#cfn-secretsmanager-secrettargetattachment-secretid
-- | - `TargetType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html#cfn-secretsmanager-secrettargetattachment-targettype
-- | - `TargetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secrettargetattachment.html#cfn-secretsmanager-secrettargetattachment-targetid
newtype SecretTargetAttachment = SecretTargetAttachment
  { "SecretId" :: String
  , "TargetType" :: String
  , "TargetId" :: String
  }

derive instance newtypeSecretTargetAttachment :: Newtype SecretTargetAttachment _
instance resourceSecretTargetAttachment :: Resource SecretTargetAttachment where type_ _ = "AWS::SecretsManager::SecretTargetAttachment"

secretTargetAttachment :: { "SecretId" :: String, "TargetType" :: String, "TargetId" :: String } -> SecretTargetAttachment
secretTargetAttachment required = SecretTargetAttachment
  required