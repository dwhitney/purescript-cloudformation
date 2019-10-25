module CloudFormation.AWS.SecretsManager.SecretTargetAttachment where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "SecretId" :: Value String
  , "TargetType" :: Value String
  , "TargetId" :: Value String
  }

derive instance newtypeSecretTargetAttachment :: Newtype SecretTargetAttachment _
derive newtype instance writeSecretTargetAttachment :: WriteForeign SecretTargetAttachment
instance resourceSecretTargetAttachment :: Resource SecretTargetAttachment where type_ _ = "AWS::SecretsManager::SecretTargetAttachment"

secretTargetAttachment :: { "SecretId" :: Value String, "TargetType" :: Value String, "TargetId" :: Value String } -> SecretTargetAttachment
secretTargetAttachment required = SecretTargetAttachment
  required