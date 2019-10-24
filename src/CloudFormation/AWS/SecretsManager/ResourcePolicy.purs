module CloudFormation.AWS.SecretsManager.ResourcePolicy where 

import Foreign (Foreign)


-- | `AWS::SecretsManager::ResourcePolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html
-- |
-- | - `SecretId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html#cfn-secretsmanager-resourcepolicy-secretid
-- | - `ResourcePolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-resourcepolicy.html#cfn-secretsmanager-resourcepolicy-resourcepolicy
type ResourcePolicy =
  { "SecretId" :: String
  , "ResourcePolicy" :: Foreign
  }

resourcePolicy :: { "SecretId" :: String, "ResourcePolicy" :: Foreign } -> ResourcePolicy
resourcePolicy required =
  required