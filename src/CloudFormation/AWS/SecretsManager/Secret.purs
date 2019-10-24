module CloudFormation.AWS.SecretsManager.Secret where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


-- | `AWS::SecretsManager::Secret`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-description
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-kmskeyid
-- | - `SecretString`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-secretstring
-- | - `GenerateSecretString`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-generatesecretstring
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html#cfn-secretsmanager-secret-name
type Secret =
  { "Description" :: Maybe String
  , "KmsKeyId" :: Maybe String
  , "SecretString" :: Maybe String
  , "GenerateSecretString" :: Maybe GenerateSecretString
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  }

secret :: Secret
secret =
  { "Description" : Nothing
  , "KmsKeyId" : Nothing
  , "SecretString" : Nothing
  , "GenerateSecretString" : Nothing
  , "Tags" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::SecretsManager::Secret.GenerateSecretString`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html-- |
-- | - `ExcludeUppercase`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludeuppercase
-- | - `RequireEachIncludedType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-requireeachincludedtype
-- | - `IncludeSpace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-includespace
-- | - `ExcludeCharacters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludecharacters
-- | - `GenerateStringKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-generatestringkey
-- | - `PasswordLength`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-passwordlength
-- | - `ExcludePunctuation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludepunctuation
-- | - `ExcludeLowercase`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludelowercase
-- | - `SecretStringTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-secretstringtemplate
-- | - `ExcludeNumbers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html#cfn-secretsmanager-secret-generatesecretstring-excludenumbers
type GenerateSecretString =
  { "ExcludeUppercase" :: Maybe Boolean
  , "RequireEachIncludedType" :: Maybe Boolean
  , "IncludeSpace" :: Maybe Boolean
  , "ExcludeCharacters" :: Maybe String
  , "GenerateStringKey" :: Maybe String
  , "PasswordLength" :: Maybe Int
  , "ExcludePunctuation" :: Maybe Boolean
  , "ExcludeLowercase" :: Maybe Boolean
  , "SecretStringTemplate" :: Maybe String
  , "ExcludeNumbers" :: Maybe Boolean
  }

generateSecretString :: GenerateSecretString
generateSecretString =
  { "ExcludeUppercase" : Nothing
  , "RequireEachIncludedType" : Nothing
  , "IncludeSpace" : Nothing
  , "ExcludeCharacters" : Nothing
  , "GenerateStringKey" : Nothing
  , "PasswordLength" : Nothing
  , "ExcludePunctuation" : Nothing
  , "ExcludeLowercase" : Nothing
  , "SecretStringTemplate" : Nothing
  , "ExcludeNumbers" : Nothing
  }