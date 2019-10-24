module CloudFormation.AWS.Glue.SecurityConfiguration where 

import Data.Maybe (Maybe(..))


-- | `AWS::Glue::SecurityConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-securityconfiguration.html
-- |
-- | - `EncryptionConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-securityconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-securityconfiguration.html#cfn-glue-securityconfiguration-name
type SecurityConfiguration =
  { "EncryptionConfiguration" :: EncryptionConfiguration
  , "Name" :: String
  }

securityConfiguration :: { "EncryptionConfiguration" :: EncryptionConfiguration, "Name" :: String } -> SecurityConfiguration
securityConfiguration required =
  required

type S3Encryptions = Array S3Encryption

-- | `AWS::Glue::SecurityConfiguration.JobBookmarksEncryption`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-jobbookmarksencryption.html
-- |
-- | - `KmsKeyArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-jobbookmarksencryption.html#cfn-glue-securityconfiguration-jobbookmarksencryption-kmskeyarn
-- | - `JobBookmarksEncryptionMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-jobbookmarksencryption.html#cfn-glue-securityconfiguration-jobbookmarksencryption-jobbookmarksencryptionmode
type JobBookmarksEncryption =
  { "KmsKeyArn" :: Maybe String
  , "JobBookmarksEncryptionMode" :: Maybe String
  }

jobBookmarksEncryption :: JobBookmarksEncryption
jobBookmarksEncryption =
  { "KmsKeyArn" : Nothing
  , "JobBookmarksEncryptionMode" : Nothing
  }

-- | `AWS::Glue::SecurityConfiguration.EncryptionConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html
-- |
-- | - `S3Encryptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-s3encryptions
-- | - `CloudWatchEncryption`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-cloudwatchencryption
-- | - `JobBookmarksEncryption`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-encryptionconfiguration.html#cfn-glue-securityconfiguration-encryptionconfiguration-jobbookmarksencryption
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

-- | `AWS::Glue::SecurityConfiguration.CloudWatchEncryption`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-cloudwatchencryption.html
-- |
-- | - `KmsKeyArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-cloudwatchencryption.html#cfn-glue-securityconfiguration-cloudwatchencryption-kmskeyarn
-- | - `CloudWatchEncryptionMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-cloudwatchencryption.html#cfn-glue-securityconfiguration-cloudwatchencryption-cloudwatchencryptionmode
type CloudWatchEncryption =
  { "KmsKeyArn" :: Maybe String
  , "CloudWatchEncryptionMode" :: Maybe String
  }

cloudWatchEncryption :: CloudWatchEncryption
cloudWatchEncryption =
  { "KmsKeyArn" : Nothing
  , "CloudWatchEncryptionMode" : Nothing
  }

-- | `AWS::Glue::SecurityConfiguration.S3Encryption`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-s3encryption.html
-- |
-- | - `KmsKeyArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-s3encryption.html#cfn-glue-securityconfiguration-s3encryption-kmskeyarn
-- | - `S3EncryptionMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-securityconfiguration-s3encryption.html#cfn-glue-securityconfiguration-s3encryption-s3encryptionmode
type S3Encryption =
  { "KmsKeyArn" :: Maybe String
  , "S3EncryptionMode" :: Maybe String
  }

s3Encryption :: S3Encryption
s3Encryption =
  { "KmsKeyArn" : Nothing
  , "S3EncryptionMode" : Nothing
  }