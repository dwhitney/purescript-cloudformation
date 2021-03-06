module CloudFormation.AWS.Elasticsearch.Domain where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Elasticsearch::Domain`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html
-- |
-- | - `AccessPolicies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-accesspolicies
-- | - `AdvancedOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-advancedoptions
-- | - `CognitoOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-cognitooptions
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
-- | - `LogPublishingOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-logpublishingoptions
-- | - `NodeToNodeEncryptionOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-nodetonodeencryptionoptions
-- | - `SnapshotOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-snapshotoptions
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-tags
-- | - `VPCOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-vpcoptions
newtype Domain = Domain
  { "AccessPolicies" :: Maybe (Value CF.Json)
  , "AdvancedOptions" :: Maybe (Value (Object String))
  , "CognitoOptions" :: Maybe (Value CognitoOptions)
  , "DomainName" :: Maybe (Value String)
  , "EBSOptions" :: Maybe (Value EBSOptions)
  , "ElasticsearchClusterConfig" :: Maybe (Value ElasticsearchClusterConfig)
  , "ElasticsearchVersion" :: Maybe (Value String)
  , "EncryptionAtRestOptions" :: Maybe (Value EncryptionAtRestOptions)
  , "LogPublishingOptions" :: Maybe (Value (Object LogPublishingOption))
  , "NodeToNodeEncryptionOptions" :: Maybe (Value NodeToNodeEncryptionOptions)
  , "SnapshotOptions" :: Maybe (Value SnapshotOptions)
  , "Tags" :: Maybe (Value (Array Tag))
  , "VPCOptions" :: Maybe (Value VPCOptions)
  }

derive instance newtypeDomain :: Newtype Domain _
derive newtype instance writeDomain :: WriteForeign Domain
instance resourceDomain :: Resource Domain where type_ _ = "AWS::Elasticsearch::Domain"

domain :: Domain
domain = Domain
  { "AccessPolicies" : Nothing
  , "AdvancedOptions" : Nothing
  , "CognitoOptions" : Nothing
  , "DomainName" : Nothing
  , "EBSOptions" : Nothing
  , "ElasticsearchClusterConfig" : Nothing
  , "ElasticsearchVersion" : Nothing
  , "EncryptionAtRestOptions" : Nothing
  , "LogPublishingOptions" : Nothing
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
  { "Enabled" :: Maybe (Value Boolean)
  , "KmsKeyId" :: Maybe (Value String)
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
  { "EBSEnabled" :: Maybe (Value Boolean)
  , "Iops" :: Maybe (Value Int)
  , "VolumeSize" :: Maybe (Value Int)
  , "VolumeType" :: Maybe (Value String)
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
  { "AvailabilityZoneCount" :: Maybe (Value Int)
  }

zoneAwarenessConfig :: ZoneAwarenessConfig
zoneAwarenessConfig =
  { "AvailabilityZoneCount" : Nothing
  }

-- | `AWS::Elasticsearch::Domain.LogPublishingOption`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-logpublishingoption.html
-- |
-- | - `CloudWatchLogsLogGroupArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-logpublishingoption.html#cfn-elasticsearch-domain-logpublishingoption-cloudwatchlogsloggrouparn
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-logpublishingoption.html#cfn-elasticsearch-domain-logpublishingoption-enabled
type LogPublishingOption =
  { "CloudWatchLogsLogGroupArn" :: Maybe (Value String)
  , "Enabled" :: Maybe (Value Boolean)
  }

logPublishingOption :: LogPublishingOption
logPublishingOption =
  { "CloudWatchLogsLogGroupArn" : Nothing
  , "Enabled" : Nothing
  }

-- | `AWS::Elasticsearch::Domain.VPCOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html
-- |
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html#cfn-elasticsearch-domain-vpcoptions-securitygroupids
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html#cfn-elasticsearch-domain-vpcoptions-subnetids
type VPCOptions =
  { "SecurityGroupIds" :: Maybe (Value (Array String))
  , "SubnetIds" :: Maybe (Value (Array String))
  }

vpcoPCOptions :: VPCOptions
vpcoPCOptions =
  { "SecurityGroupIds" : Nothing
  , "SubnetIds" : Nothing
  }

-- | `AWS::Elasticsearch::Domain.CognitoOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html
-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html#cfn-elasticsearch-domain-cognitooptions-enabled
-- | - `IdentityPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html#cfn-elasticsearch-domain-cognitooptions-identitypoolid
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html#cfn-elasticsearch-domain-cognitooptions-rolearn
-- | - `UserPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html#cfn-elasticsearch-domain-cognitooptions-userpoolid
type CognitoOptions =
  { "Enabled" :: Maybe (Value Boolean)
  , "IdentityPoolId" :: Maybe (Value String)
  , "RoleArn" :: Maybe (Value String)
  , "UserPoolId" :: Maybe (Value String)
  }

cognitoOptions :: CognitoOptions
cognitoOptions =
  { "Enabled" : Nothing
  , "IdentityPoolId" : Nothing
  , "RoleArn" : Nothing
  , "UserPoolId" : Nothing
  }

-- | `AWS::Elasticsearch::Domain.SnapshotOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-snapshotoptions.html
-- |
-- | - `AutomatedSnapshotStartHour`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-snapshotoptions.html#cfn-elasticsearch-domain-snapshotoptions-automatedsnapshotstarthour
type SnapshotOptions =
  { "AutomatedSnapshotStartHour" :: Maybe (Value Int)
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
  { "DedicatedMasterCount" :: Maybe (Value Int)
  , "DedicatedMasterEnabled" :: Maybe (Value Boolean)
  , "DedicatedMasterType" :: Maybe (Value String)
  , "InstanceCount" :: Maybe (Value Int)
  , "InstanceType" :: Maybe (Value String)
  , "ZoneAwarenessConfig" :: Maybe (Value ZoneAwarenessConfig)
  , "ZoneAwarenessEnabled" :: Maybe (Value Boolean)
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
  { "Enabled" :: Maybe (Value Boolean)
  }

nodeToNodeEncryptionOptions :: NodeToNodeEncryptionOptions
nodeToNodeEncryptionOptions =
  { "Enabled" : Nothing
  }