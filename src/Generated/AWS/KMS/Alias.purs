module CloudFormation.AWS.KMS.Alias where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::KMS::Alias`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-alias.html
-- |
-- | - `AliasName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-alias.html#cfn-kms-alias-aliasname
-- | - `TargetKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-alias.html#cfn-kms-alias-targetkeyid
newtype Alias = Alias
  { "AliasName" :: String
  , "TargetKeyId" :: String
  }

derive instance newtypeAlias :: Newtype Alias _
instance resourceAlias :: Resource Alias where type_ _ = "AWS::KMS::Alias"

alias :: { "AliasName" :: String, "TargetKeyId" :: String } -> Alias
alias required = Alias
  required