module CloudFormation.AWS.Glue.DataCatalogEncryptionSettings where 

import Data.Maybe (Maybe(..))


type DataCatalogEncryptionSettings =
  { "DataCatalogEncryptionSettings" :: DataCatalogEncryptionSettings_
  , "CatalogId" :: String
  }

dataCatalogEncryptionSettings :: { "DataCatalogEncryptionSettings" :: DataCatalogEncryptionSettings_, "CatalogId" :: String } -> DataCatalogEncryptionSettings
dataCatalogEncryptionSettings required =
  required

type ConnectionPasswordEncryption =
  { "ReturnConnectionPasswordEncrypted" :: Maybe Boolean
  , "KmsKeyId" :: Maybe String
  }

connectionPasswordEncryption :: ConnectionPasswordEncryption
connectionPasswordEncryption =
  { "ReturnConnectionPasswordEncrypted" : Nothing
  , "KmsKeyId" : Nothing
  }

type EncryptionAtRest =
  { "CatalogEncryptionMode" :: Maybe String
  , "SseAwsKmsKeyId" :: Maybe String
  }

encryptionAtRest :: EncryptionAtRest
encryptionAtRest =
  { "CatalogEncryptionMode" : Nothing
  , "SseAwsKmsKeyId" : Nothing
  }

type DataCatalogEncryptionSettings_ =
  { "ConnectionPasswordEncryption" :: Maybe ConnectionPasswordEncryption
  , "EncryptionAtRest" :: Maybe EncryptionAtRest
  }

dataCatalogEncryptionSettings_ :: DataCatalogEncryptionSettings_
dataCatalogEncryptionSettings_ =
  { "ConnectionPasswordEncryption" : Nothing
  , "EncryptionAtRest" : Nothing
  }