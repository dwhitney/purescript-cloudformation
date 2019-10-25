module CloudFormation.AWS.Glue.DataCatalogEncryptionSettings where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))


-- | `AWS::Glue::DataCatalogEncryptionSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-datacatalogencryptionsettings.html
-- |
-- | - `DataCatalogEncryptionSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-datacatalogencryptionsettings
-- | - `CatalogId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-datacatalogencryptionsettings.html#cfn-glue-datacatalogencryptionsettings-catalogid
newtype DataCatalogEncryptionSettings = DataCatalogEncryptionSettings
  { "DataCatalogEncryptionSettings" :: Value DataCatalogEncryptionSettings_
  , "CatalogId" :: Value String
  }

derive instance newtypeDataCatalogEncryptionSettings :: Newtype DataCatalogEncryptionSettings _
derive newtype instance writeDataCatalogEncryptionSettings :: WriteForeign DataCatalogEncryptionSettings
instance resourceDataCatalogEncryptionSettings :: Resource DataCatalogEncryptionSettings where type_ _ = "AWS::Glue::DataCatalogEncryptionSettings"

dataCatalogEncryptionSettings :: { "DataCatalogEncryptionSettings" :: Value DataCatalogEncryptionSettings_, "CatalogId" :: Value String } -> DataCatalogEncryptionSettings
dataCatalogEncryptionSettings required = DataCatalogEncryptionSettings
  required

-- | `AWS::Glue::DataCatalogEncryptionSettings.ConnectionPasswordEncryption`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html
-- |
-- | - `ReturnConnectionPasswordEncrypted`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html#cfn-glue-datacatalogencryptionsettings-connectionpasswordencryption-returnconnectionpasswordencrypted
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html#cfn-glue-datacatalogencryptionsettings-connectionpasswordencryption-kmskeyid
type ConnectionPasswordEncryption =
  { "ReturnConnectionPasswordEncrypted" :: Maybe (Value Boolean)
  , "KmsKeyId" :: Maybe (Value String)
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
  { "CatalogEncryptionMode" :: Maybe (Value String)
  , "SseAwsKmsKeyId" :: Maybe (Value String)
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
  { "ConnectionPasswordEncryption" :: Maybe (Value ConnectionPasswordEncryption)
  , "EncryptionAtRest" :: Maybe (Value EncryptionAtRest)
  }

dataCatalogEncryptionSettings_ :: DataCatalogEncryptionSettings_
dataCatalogEncryptionSettings_ =
  { "ConnectionPasswordEncryption" : Nothing
  , "EncryptionAtRest" : Nothing
  }