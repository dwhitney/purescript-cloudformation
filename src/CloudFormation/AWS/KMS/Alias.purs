module CloudFormation.AWS.KMS.Alias where 




-- | `AWS::KMS::Alias`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-alias.html
-- |
-- | - `AliasName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-alias.html#cfn-kms-alias-aliasname
-- | - `TargetKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-alias.html#cfn-kms-alias-targetkeyid
type Alias =
  { "AliasName" :: String
  , "TargetKeyId" :: String
  }

alias :: { "AliasName" :: String, "TargetKeyId" :: String } -> Alias
alias required =
  required