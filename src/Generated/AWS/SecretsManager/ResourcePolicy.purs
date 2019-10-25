module CloudFormation.AWS.SecretsManager.ResourcePolicy where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SecretsManager::ResourcePolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html
-- |
-- | - `SecretId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html#cfn-secretsmanager-resourcepolicy-secretid
-- | - `ResourcePolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html#cfn-secretsmanager-resourcepolicy-resourcepolicy
newtype ResourcePolicy = ResourcePolicy
  { "SecretId" :: Value String
  , "ResourcePolicy" :: Value CF.Json
  }

derive instance newtypeResourcePolicy :: Newtype ResourcePolicy _
derive newtype instance writeResourcePolicy :: WriteForeign ResourcePolicy
instance resourceResourcePolicy :: Resource ResourcePolicy where type_ _ = "AWS::SecretsManager::ResourcePolicy"

resourcePolicy :: { "SecretId" :: Value String, "ResourcePolicy" :: Value CF.Json } -> ResourcePolicy
resourcePolicy required = ResourcePolicy
  required