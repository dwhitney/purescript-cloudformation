module AWS.SecretsManager.Secret where 

import Data.Maybe (Maybe(..))
import Tag


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