module CloudFormation.AWS.Glue.SecurityConfiguration where 

import Data.Maybe (Maybe(..))


type SecurityConfiguration =
  { "EncryptionConfiguration" :: EncryptionConfiguration
  , "Name" :: String
  }

securityConfiguration :: { "EncryptionConfiguration" :: EncryptionConfiguration, "Name" :: String } -> SecurityConfiguration
securityConfiguration required =
  required

type S3Encryptions = Array S3Encryption

type JobBookmarksEncryption =
  { "KmsKeyArn" :: Maybe String
  , "JobBookmarksEncryptionMode" :: Maybe String
  }

jobBookmarksEncryption :: JobBookmarksEncryption
jobBookmarksEncryption =
  { "KmsKeyArn" : Nothing
  , "JobBookmarksEncryptionMode" : Nothing
  }

type EncryptionConfiguration =
  { "S3Encryptions" :: Maybe S3Encryptions
  , "CloudWatchEncryption" :: Maybe CloudWatchEncryption
  , "JobBookmarksEncryption" :: Maybe JobBookmarksEncryption
  }

encryptionConfiguration :: EncryptionConfiguration
encryptionConfiguration =
  { "S3Encryptions" : Nothing
  , "CloudWatchEncryption" : Nothing
  , "JobBookmarksEncryption" : Nothing
  }

type CloudWatchEncryption =
  { "KmsKeyArn" :: Maybe String
  , "CloudWatchEncryptionMode" :: Maybe String
  }

cloudWatchEncryption :: CloudWatchEncryption
cloudWatchEncryption =
  { "KmsKeyArn" : Nothing
  , "CloudWatchEncryptionMode" : Nothing
  }

type S3Encryption =
  { "KmsKeyArn" :: Maybe String
  , "S3EncryptionMode" :: Maybe String
  }

s3Encryption :: S3Encryption
s3Encryption =
  { "KmsKeyArn" : Nothing
  , "S3EncryptionMode" : Nothing
  }