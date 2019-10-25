module CloudFormation.AWS.MSK.Cluster where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::MSK::Cluster`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html
-- |
-- | - `BrokerNodeGroupInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-brokernodegroupinfo
-- | - `EnhancedMonitoring`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-enhancedmonitoring
-- | - `KafkaVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-kafkaversion
-- | - `NumberOfBrokerNodes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-numberofbrokernodes
-- | - `EncryptionInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-encryptioninfo
-- | - `ClusterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-clustername
-- | - `ClientAuthentication`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-clientauthentication
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-tags
-- | - `ConfigurationInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-configurationinfo
newtype Cluster = Cluster
  { "BrokerNodeGroupInfo" :: Value BrokerNodeGroupInfo
  , "KafkaVersion" :: Value String
  , "NumberOfBrokerNodes" :: Value Int
  , "ClusterName" :: Value String
  , "EnhancedMonitoring" :: Maybe (Value String)
  , "EncryptionInfo" :: Maybe (Value EncryptionInfo)
  , "ClientAuthentication" :: Maybe (Value ClientAuthentication)
  , "Tags" :: Maybe (Value CF.Json)
  , "ConfigurationInfo" :: Maybe (Value ConfigurationInfo)
  }

derive instance newtypeCluster :: Newtype Cluster _
derive newtype instance writeCluster :: WriteForeign Cluster
instance resourceCluster :: Resource Cluster where type_ _ = "AWS::MSK::Cluster"

cluster :: { "BrokerNodeGroupInfo" :: Value BrokerNodeGroupInfo, "KafkaVersion" :: Value String, "NumberOfBrokerNodes" :: Value Int, "ClusterName" :: Value String } -> Cluster
cluster required = Cluster
  (merge required
    { "EnhancedMonitoring" : Nothing
    , "EncryptionInfo" : Nothing
    , "ClientAuthentication" : Nothing
    , "Tags" : Nothing
    , "ConfigurationInfo" : Nothing
    })

-- | `AWS::MSK::Cluster.Tls`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-tls.html
-- |
-- | - `CertificateAuthorityArnList`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-tls.html#cfn-msk-cluster-tls-certificateauthorityarnlist
type Tls =
  { "CertificateAuthorityArnList" :: Maybe (Value (Array String))
  }

tls :: Tls
tls =
  { "CertificateAuthorityArnList" : Nothing
  }

-- | `AWS::MSK::Cluster.ClientAuthentication`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-clientauthentication.html
-- |
-- | - `Tls`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-clientauthentication.html#cfn-msk-cluster-clientauthentication-tls
type ClientAuthentication =
  { "Tls" :: Maybe (Value Tls)
  }

clientAuthentication :: ClientAuthentication
clientAuthentication =
  { "Tls" : Nothing
  }

-- | `AWS::MSK::Cluster.EncryptionInTransit`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionintransit.html
-- |
-- | - `ClientBroker`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionintransit.html#cfn-msk-cluster-encryptionintransit-clientbroker
-- | - `InCluster`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionintransit.html#cfn-msk-cluster-encryptionintransit-incluster
type EncryptionInTransit =
  { "ClientBroker" :: Maybe (Value String)
  , "InCluster" :: Maybe (Value Boolean)
  }

encryptionInTransit :: EncryptionInTransit
encryptionInTransit =
  { "ClientBroker" : Nothing
  , "InCluster" : Nothing
  }

-- | `AWS::MSK::Cluster.EBSStorageInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-ebsstorageinfo.html
-- |
-- | - `VolumeSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-ebsstorageinfo.html#cfn-msk-cluster-ebsstorageinfo-volumesize
type EBSStorageInfo =
  { "VolumeSize" :: Maybe (Value Int)
  }

ebssBSStorageInfo :: EBSStorageInfo
ebssBSStorageInfo =
  { "VolumeSize" : Nothing
  }

-- | `AWS::MSK::Cluster.EncryptionAtRest`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionatrest.html
-- |
-- | - `DataVolumeKMSKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionatrest.html#cfn-msk-cluster-encryptionatrest-datavolumekmskeyid
type EncryptionAtRest =
  { "DataVolumeKMSKeyId" :: Value String
  }

encryptionAtRest :: { "DataVolumeKMSKeyId" :: Value String } -> EncryptionAtRest
encryptionAtRest required =
  required

-- | `AWS::MSK::Cluster.StorageInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-storageinfo.html
-- |
-- | - `EBSStorageInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-storageinfo.html#cfn-msk-cluster-storageinfo-ebsstorageinfo
type StorageInfo =
  { "EBSStorageInfo" :: Maybe (Value EBSStorageInfo)
  }

storageInfo :: StorageInfo
storageInfo =
  { "EBSStorageInfo" : Nothing
  }

-- | `AWS::MSK::Cluster.BrokerNodeGroupInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html
-- |
-- | - `SecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-securitygroups
-- | - `ClientSubnets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-clientsubnets
-- | - `StorageInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-storageinfo
-- | - `BrokerAZDistribution`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-brokerazdistribution
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-instancetype
type BrokerNodeGroupInfo =
  { "ClientSubnets" :: Value (Array String)
  , "InstanceType" :: Value String
  , "SecurityGroups" :: Maybe (Value (Array String))
  , "StorageInfo" :: Maybe (Value StorageInfo)
  , "BrokerAZDistribution" :: Maybe (Value String)
  }

brokerNodeGroupInfo :: { "ClientSubnets" :: Value (Array String), "InstanceType" :: Value String } -> BrokerNodeGroupInfo
brokerNodeGroupInfo required =
  (merge required
    { "SecurityGroups" : Nothing
    , "StorageInfo" : Nothing
    , "BrokerAZDistribution" : Nothing
    })

-- | `AWS::MSK::Cluster.ConfigurationInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-configurationinfo.html
-- |
-- | - `Revision`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-configurationinfo.html#cfn-msk-cluster-configurationinfo-revision
-- | - `Arn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-configurationinfo.html#cfn-msk-cluster-configurationinfo-arn
type ConfigurationInfo =
  { "Revision" :: Value Int
  , "Arn" :: Value String
  }

configurationInfo :: { "Revision" :: Value Int, "Arn" :: Value String } -> ConfigurationInfo
configurationInfo required =
  required

-- | `AWS::MSK::Cluster.EncryptionInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptioninfo.html
-- |
-- | - `EncryptionAtRest`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptioninfo.html#cfn-msk-cluster-encryptioninfo-encryptionatrest
-- | - `EncryptionInTransit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptioninfo.html#cfn-msk-cluster-encryptioninfo-encryptionintransit
type EncryptionInfo =
  { "EncryptionAtRest" :: Maybe (Value EncryptionAtRest)
  , "EncryptionInTransit" :: Maybe (Value EncryptionInTransit)
  }

encryptionInfo :: EncryptionInfo
encryptionInfo =
  { "EncryptionAtRest" : Nothing
  , "EncryptionInTransit" : Nothing
  }