module CloudFormation.AWS.Elasticsearch.Domain where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import CloudFormation.Tag (Tag)


type Domain =
  { "AccessPolicies" :: Maybe Foreign
  , "AdvancedOptions" :: Maybe (Object String)
  , "DomainName" :: Maybe String
  , "EBSOptions" :: Maybe EBSOptions
  , "ElasticsearchClusterConfig" :: Maybe ElasticsearchClusterConfig
  , "ElasticsearchVersion" :: Maybe String
  , "EncryptionAtRestOptions" :: Maybe EncryptionAtRestOptions
  , "NodeToNodeEncryptionOptions" :: Maybe NodeToNodeEncryptionOptions
  , "SnapshotOptions" :: Maybe SnapshotOptions
  , "Tags" :: Maybe (Array Tag)
  , "VPCOptions" :: Maybe VPCOptions
  }

domain :: Domain
domain =
  { "AccessPolicies" : Nothing
  , "AdvancedOptions" : Nothing
  , "DomainName" : Nothing
  , "EBSOptions" : Nothing
  , "ElasticsearchClusterConfig" : Nothing
  , "ElasticsearchVersion" : Nothing
  , "EncryptionAtRestOptions" : Nothing
  , "NodeToNodeEncryptionOptions" : Nothing
  , "SnapshotOptions" : Nothing
  , "Tags" : Nothing
  , "VPCOptions" : Nothing
  }

type EncryptionAtRestOptions =
  { "Enabled" :: Maybe Boolean
  , "KmsKeyId" :: Maybe String
  }

encryptionAtRestOptions :: EncryptionAtRestOptions
encryptionAtRestOptions =
  { "Enabled" : Nothing
  , "KmsKeyId" : Nothing
  }

type EBSOptions =
  { "EBSEnabled" :: Maybe Boolean
  , "Iops" :: Maybe Int
  , "VolumeSize" :: Maybe Int
  , "VolumeType" :: Maybe String
  }

ebsoBSOptions :: EBSOptions
ebsoBSOptions =
  { "EBSEnabled" : Nothing
  , "Iops" : Nothing
  , "VolumeSize" : Nothing
  , "VolumeType" : Nothing
  }

type ZoneAwarenessConfig =
  { "AvailabilityZoneCount" :: Maybe Int
  }

zoneAwarenessConfig :: ZoneAwarenessConfig
zoneAwarenessConfig =
  { "AvailabilityZoneCount" : Nothing
  }

type VPCOptions =
  { "SecurityGroupIds" :: Maybe (Array String)
  , "SubnetIds" :: Maybe (Array String)
  }

vpcoPCOptions :: VPCOptions
vpcoPCOptions =
  { "SecurityGroupIds" : Nothing
  , "SubnetIds" : Nothing
  }

type SnapshotOptions =
  { "AutomatedSnapshotStartHour" :: Maybe Int
  }

snapshotOptions :: SnapshotOptions
snapshotOptions =
  { "AutomatedSnapshotStartHour" : Nothing
  }

type ElasticsearchClusterConfig =
  { "DedicatedMasterCount" :: Maybe Int
  , "DedicatedMasterEnabled" :: Maybe Boolean
  , "DedicatedMasterType" :: Maybe String
  , "InstanceCount" :: Maybe Int
  , "InstanceType" :: Maybe String
  , "ZoneAwarenessConfig" :: Maybe ZoneAwarenessConfig
  , "ZoneAwarenessEnabled" :: Maybe Boolean
  }

elasticsearchClusterConfig :: ElasticsearchClusterConfig
elasticsearchClusterConfig =
  { "DedicatedMasterCount" : Nothing
  , "DedicatedMasterEnabled" : Nothing
  , "DedicatedMasterType" : Nothing
  , "InstanceCount" : Nothing
  , "InstanceType" : Nothing
  , "ZoneAwarenessConfig" : Nothing
  , "ZoneAwarenessEnabled" : Nothing
  }

type NodeToNodeEncryptionOptions =
  { "Enabled" :: Maybe Boolean
  }

nodeToNodeEncryptionOptions :: NodeToNodeEncryptionOptions
nodeToNodeEncryptionOptions =
  { "Enabled" : Nothing
  }