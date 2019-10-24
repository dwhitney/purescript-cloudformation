module AWS.SecretsManager.SecretTargetAttachment where 




type SecretTargetAttachment =
  { "SecretId" :: String
  , "TargetType" :: String
  , "TargetId" :: String
  }

secretTargetAttachment :: { "SecretId" :: String, "TargetType" :: String, "TargetId" :: String } -> SecretTargetAttachment
secretTargetAttachment required =
  required