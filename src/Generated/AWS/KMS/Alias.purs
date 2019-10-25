module CloudFormation.AWS.KMS.Alias where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::KMS::Alias`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-alias.html
-- |
-- | - `AliasName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-alias.html#cfn-kms-alias-aliasname
-- | - `TargetKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-alias.html#cfn-kms-alias-targetkeyid
newtype Alias = Alias
  { "AliasName" :: Value String
  , "TargetKeyId" :: Value String
  }

derive instance newtypeAlias :: Newtype Alias _
derive newtype instance writeAlias :: WriteForeign Alias
instance resourceAlias :: Resource Alias where type_ _ = "AWS::KMS::Alias"

alias :: { "AliasName" :: Value String, "TargetKeyId" :: Value String } -> Alias
alias required = Alias
  required