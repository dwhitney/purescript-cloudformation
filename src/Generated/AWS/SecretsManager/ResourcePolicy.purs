module CloudFormation.AWS.SecretsManager.ResourcePolicy where 

import CloudFormation (Json)


-- | `AWS::SecretsManager::ResourcePolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html
-- |
-- | - `SecretId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html#cfn-secretsmanager-resourcepolicy-secretid
-- | - `ResourcePolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html#cfn-secretsmanager-resourcepolicy-resourcepolicy
type ResourcePolicy =
  { "SecretId" :: String
  , "ResourcePolicy" :: Json
  }

resourcePolicy :: { "SecretId" :: String, "ResourcePolicy" :: Json } -> ResourcePolicy
resourcePolicy required =
  required