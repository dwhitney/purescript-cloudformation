module CloudFormation.AWS.Elasticsearch.Domain where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import CloudFormation.Tag (Tag)


-- | `AWS::Elasticsearch::Domain`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html
-- |
-- | - `AccessPolicies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-accesspolicies
-- | - `AdvancedOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-advancedoptions
-- | - `DomainName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-domainname
-- | - `EBSOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-ebsoptions
-- | - `ElasticsearchClusterConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-elasticsearchclusterconfig
-- | - `ElasticsearchVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-elasticsearchversion
-- | - `EncryptionAtRestOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-encryptionatrestoptions
-- | - `NodeToNodeEncryptionOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-nodetonodeencryptionoptions
-- | - `SnapshotOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-snapshotoptions
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-tags
-- | - `VPCOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-vpcoptions
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

-- | `AWS::Elasticsearch::Domain.EncryptionAtRestOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-encryptionatrestoptions.html
-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-encryptionatrestoptions.html#cfn-elasticsearch-domain-encryptionatrestoptions-enabled
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-encryptionatrestoptions.html#cfn-elasticsearch-domain-encryptionatrestoptions-kmskeyid
type EncryptionAtRestOptions =
  { "Enabled" :: Maybe Boolean
  , "KmsKeyId" :: Maybe String
  }

encryptionAtRestOptions :: EncryptionAtRestOptions
encryptionAtRestOptions =
  { "Enabled" : Nothing
  , "KmsKeyId" : Nothing
  }

-- | `AWS::Elasticsearch::Domain.EBSOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html
-- |
-- | - `EBSEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html#cfn-elasticsearch-domain-ebsoptions-ebsenabled
-- | - `Iops`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html#cfn-elasticsearch-domain-ebsoptions-iops
-- | - `VolumeSize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html#cfn-elasticsearch-domain-ebsoptions-volumesize
-- | - `VolumeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-ebsoptions.html#cfn-elasticsearch-domain-ebsoptions-volumetype
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

-- | `AWS::Elasticsearch::Domain.ZoneAwarenessConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-zoneawarenessconfig.html
-- |
-- | - `AvailabilityZoneCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-zoneawarenessconfig.html#cfn-elasticsearch-domain-zoneawarenessconfig-availabilityzonecount
type ZoneAwarenessConfig =
  { "AvailabilityZoneCount" :: Maybe Int
  }

zoneAwarenessConfig :: ZoneAwarenessConfig
zoneAwarenessConfig =
  { "AvailabilityZoneCount" : Nothing
  }

-- | `AWS::Elasticsearch::Domain.VPCOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html
-- |
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html#cfn-elasticsearch-domain-vpcoptions-securitygroupids
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html#cfn-elasticsearch-domain-vpcoptions-subnetids
type VPCOptions =
  { "SecurityGroupIds" :: Maybe (Array String)
  , "SubnetIds" :: Maybe (Array String)
  }

vpcoPCOptions :: VPCOptions
vpcoPCOptions =
  { "SecurityGroupIds" : Nothing
  , "SubnetIds" : Nothing
  }

-- | `AWS::Elasticsearch::Domain.SnapshotOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-snapshotoptions.html
-- |
-- | - `AutomatedSnapshotStartHour`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-snapshotoptions.html#cfn-elasticsearch-domain-snapshotoptions-automatedsnapshotstarthour
type SnapshotOptions =
  { "AutomatedSnapshotStartHour" :: Maybe Int
  }

snapshotOptions :: SnapshotOptions
snapshotOptions =
  { "AutomatedSnapshotStartHour" : Nothing
  }

-- | `AWS::Elasticsearch::Domain.ElasticsearchClusterConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html
-- |
-- | - `DedicatedMasterCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-dedicatedmastercount
-- | - `DedicatedMasterEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-dedicatedmasterenabled
-- | - `DedicatedMasterType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-dedicatedmastertype
-- | - `InstanceCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-instancecount
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-instnacetype
-- | - `ZoneAwarenessConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticsearchclusterconfig-zoneawarenessconfig
-- | - `ZoneAwarenessEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-zoneawarenessenabled
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

-- | `AWS::Elasticsearch::Domain.NodeToNodeEncryptionOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-nodetonodeencryptionoptions.html
-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-nodetonodeencryptionoptions.html#cfn-elasticsearch-domain-nodetonodeencryptionoptions-enabled
type NodeToNodeEncryptionOptions =
  { "Enabled" :: Maybe Boolean
  }

nodeToNodeEncryptionOptions :: NodeToNodeEncryptionOptions
nodeToNodeEncryptionOptions =
  { "Enabled" : Nothing
  }