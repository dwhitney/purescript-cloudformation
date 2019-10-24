module CloudFormation.AWS.KMS.Alias where 




type Alias =
  { "AliasName" :: String
  , "TargetKeyId" :: String
  }

alias :: { "AliasName" :: String, "TargetKeyId" :: String } -> Alias
alias required =
  required