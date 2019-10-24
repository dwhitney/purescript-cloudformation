module CloudFormation.AWS.SecretsManager.ResourcePolicy where 

import CloudFormation (Json) as CF
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SecretsManager::ResourcePolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html
-- |
-- | - `SecretId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html#cfn-secretsmanager-resourcepolicy-secretid
-- | - `ResourcePolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html#cfn-secretsmanager-resourcepolicy-resourcepolicy
newtype ResourcePolicy = ResourcePolicy
  { "SecretId" :: String
  , "ResourcePolicy" :: CF.Json
  }

derive instance newtypeResourcePolicy :: Newtype ResourcePolicy _
instance resourceResourcePolicy :: Resource ResourcePolicy where type_ _ = "AWS::SecretsManager::ResourcePolicy"

resourcePolicy :: { "SecretId" :: String, "ResourcePolicy" :: CF.Json } -> ResourcePolicy
resourcePolicy required = ResourcePolicy
  required