module CloudFormation.AWS.Glue.DataCatalogEncryptionSettings where 

import Data.Maybe (Maybe(..))


-- | `AWS::Glue::DataCatalogEncryptionSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-datacatalogencryptionsettings.html
-- |
-- | - `DataCatalogEncryptionSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-datacatalogencryptionsettings
-- | - `CatalogId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-catalogid
type DataCatalogEncryptionSettings =
  { "DataCatalogEncryptionSettings" :: DataCatalogEncryptionSettings_
  , "CatalogId" :: String
  }

dataCatalogEncryptionSettings :: { "DataCatalogEncryptionSettings" :: DataCatalogEncryptionSettings_, "CatalogId" :: String } -> DataCatalogEncryptionSettings
dataCatalogEncryptionSettings required =
  required

-- | `AWS::Glue::DataCatalogEncryptionSettings.ConnectionPasswordEncryption`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html
-- |
-- | - `ReturnConnectionPasswordEncrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html#cfn-glue-datacatalogencryptionsettings-connectionpasswordencryption-returnconnectionpasswordencrypted
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html#cfn-glue-datacatalogencryptionsettings-connectionpasswordencryption-kmskeyid
type ConnectionPasswordEncryption =
  { "ReturnConnectionPasswordEncrypted" :: Maybe Boolean
  , "KmsKeyId" :: Maybe String
  }

connectionPasswordEncryption :: ConnectionPasswordEncryption
connectionPasswordEncryption =
  { "ReturnConnectionPasswordEncrypted" : Nothing
  , "KmsKeyId" : Nothing
  }

-- | `AWS::Glue::DataCatalogEncryptionSettings.EncryptionAtRest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-encryptionatrest.html
-- |
-- | - `CatalogEncryptionMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-encryptionatrest.html#cfn-glue-datacatalogencryptionsettings-encryptionatrest-catalogencryptionmode
-- | - `SseAwsKmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-encryptionatrest.html#cfn-glue-datacatalogencryptionsettings-encryptionatrest-sseawskmskeyid
type EncryptionAtRest =
  { "CatalogEncryptionMode" :: Maybe String
  , "SseAwsKmsKeyId" :: Maybe String
  }

encryptionAtRest :: EncryptionAtRest
encryptionAtRest =
  { "CatalogEncryptionMode" : Nothing
  , "SseAwsKmsKeyId" : Nothing
  }

-- | `AWS::Glue::DataCatalogEncryptionSettings.DataCatalogEncryptionSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-datacatalogencryptionsettings.html
-- |
-- | - `ConnectionPasswordEncryption`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-datacatalogencryptionsettings-connectionpasswordencryption
-- | - `EncryptionAtRest`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-datacatalogencryptionsettings-encryptionatrest
type DataCatalogEncryptionSettings_ =
  { "ConnectionPasswordEncryption" :: Maybe ConnectionPasswordEncryption
  , "EncryptionAtRest" :: Maybe EncryptionAtRest
  }

dataCatalogEncryptionSettings_ :: DataCatalogEncryptionSettings_
dataCatalogEncryptionSettings_ =
  { "ConnectionPasswordEncryption" : Nothing
  , "EncryptionAtRest" : Nothing
  }