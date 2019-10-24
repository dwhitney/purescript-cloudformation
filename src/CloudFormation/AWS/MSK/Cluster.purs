module CloudFormation.AWS.MSK.Cluster where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Cluster =
  { "BrokerNodeGroupInfo" :: BrokerNodeGroupInfo
  , "KafkaVersion" :: String
  , "NumberOfBrokerNodes" :: Int
  , "ClusterName" :: String
  , "EnhancedMonitoring" :: Maybe String
  , "EncryptionInfo" :: Maybe EncryptionInfo
  , "ClientAuthentication" :: Maybe ClientAuthentication
  , "Tags" :: Maybe Foreign
  , "ConfigurationInfo" :: Maybe ConfigurationInfo
  }

cluster :: { "BrokerNodeGroupInfo" :: BrokerNodeGroupInfo, "KafkaVersion" :: String, "NumberOfBrokerNodes" :: Int, "ClusterName" :: String } -> Cluster
cluster required =
  merge required
    { "EnhancedMonitoring" : Nothing
    , "EncryptionInfo" : Nothing
    , "ClientAuthentication" : Nothing
    , "Tags" : Nothing
    , "ConfigurationInfo" : Nothing
    }

type Tls =
  { "CertificateAuthorityArnList" :: Maybe (Array String)
  }

tls :: Tls
tls =
  { "CertificateAuthorityArnList" : Nothing
  }

type ClientAuthentication =
  { "Tls" :: Maybe Tls
  }

clientAuthentication :: ClientAuthentication
clientAuthentication =
  { "Tls" : Nothing
  }

type EncryptionInTransit =
  { "ClientBroker" :: Maybe String
  , "InCluster" :: Maybe Boolean
  }

encryptionInTransit :: EncryptionInTransit
encryptionInTransit =
  { "ClientBroker" : Nothing
  , "InCluster" : Nothing
  }

type EBSStorageInfo =
  { "VolumeSize" :: Maybe Int
  }

ebssBSStorageInfo :: EBSStorageInfo
ebssBSStorageInfo =
  { "VolumeSize" : Nothing
  }

type EncryptionAtRest =
  { "DataVolumeKMSKeyId" :: String
  }

encryptionAtRest :: { "DataVolumeKMSKeyId" :: String } -> EncryptionAtRest
encryptionAtRest required =
  required

type StorageInfo =
  { "EBSStorageInfo" :: Maybe EBSStorageInfo
  }

storageInfo :: StorageInfo
storageInfo =
  { "EBSStorageInfo" : Nothing
  }

type BrokerNodeGroupInfo =
  { "ClientSubnets" :: Array String
  , "InstanceType" :: String
  , "SecurityGroups" :: Maybe (Array String)
  , "StorageInfo" :: Maybe StorageInfo
  , "BrokerAZDistribution" :: Maybe String
  }

brokerNodeGroupInfo :: { "ClientSubnets" :: Array String, "InstanceType" :: String } -> BrokerNodeGroupInfo
brokerNodeGroupInfo required =
  merge required
    { "SecurityGroups" : Nothing
    , "StorageInfo" : Nothing
    , "BrokerAZDistribution" : Nothing
    }

type ConfigurationInfo =
  { "Revision" :: Int
  , "Arn" :: String
  }

configurationInfo :: { "Revision" :: Int, "Arn" :: String } -> ConfigurationInfo
configurationInfo required =
  required

type EncryptionInfo =
  { "EncryptionAtRest" :: Maybe EncryptionAtRest
  , "EncryptionInTransit" :: Maybe EncryptionInTransit
  }

encryptionInfo :: EncryptionInfo
encryptionInfo =
  { "EncryptionAtRest" : Nothing
  , "EncryptionInTransit" : Nothing
  }