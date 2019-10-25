module CloudFormation.AWS.SecretsManager.Secret where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SecretsManager::Secret`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-secretsmanager-secret.html
-- |
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
newtype Secret = Secret
  { "Description" :: Maybe (Value String)
  , "KmsKeyId" :: Maybe (Value String)
  , "SecretString" :: Maybe (Value String)
  , "GenerateSecretString" :: Maybe (Value GenerateSecretString)
  , "Tags" :: Maybe (Value (Array Tag))
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeSecret :: Newtype Secret _
derive newtype instance writeSecret :: WriteForeign Secret
instance resourceSecret :: Resource Secret where type_ _ = "AWS::SecretsManager::Secret"

secret :: Secret
secret = Secret
  { "Description" : Nothing
  , "KmsKeyId" : Nothing
  , "SecretString" : Nothing
  , "GenerateSecretString" : Nothing
  , "Tags" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::SecretsManager::Secret.GenerateSecretString`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-secretsmanager-secret-generatesecretstring.html
-- |
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
  { "ExcludeUppercase" :: Maybe (Value Boolean)
  , "RequireEachIncludedType" :: Maybe (Value Boolean)
  , "IncludeSpace" :: Maybe (Value Boolean)
  , "ExcludeCharacters" :: Maybe (Value String)
  , "GenerateStringKey" :: Maybe (Value String)
  , "PasswordLength" :: Maybe (Value Int)
  , "ExcludePunctuation" :: Maybe (Value Boolean)
  , "ExcludeLowercase" :: Maybe (Value Boolean)
  , "SecretStringTemplate" :: Maybe (Value String)
  , "ExcludeNumbers" :: Maybe (Value Boolean)
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