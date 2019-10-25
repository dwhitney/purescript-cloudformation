module CloudFormation.AWS.ElastiCache.ReplicationGroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ElastiCache::ReplicationGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html
-- |
-- | - `AtRestEncryptionEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-atrestencryptionenabled
-- | - `AuthToken`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-authtoken
-- | - `AutoMinorVersionUpgrade`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-autominorversionupgrade
-- | - `AutomaticFailoverEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-automaticfailoverenabled
-- | - `CacheNodeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cachenodetype
-- | - `CacheParameterGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cacheparametergroupname
-- | - `CacheSecurityGroupNames`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cachesecuritygroupnames
-- | - `CacheSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cachesubnetgroupname
-- | - `Engine`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-engine
-- | - `EngineVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-engineversion
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-kmskeyid
-- | - `NodeGroupConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-nodegroupconfiguration
-- | - `NotificationTopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-notificationtopicarn
-- | - `NumCacheClusters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-numcacheclusters
-- | - `NumNodeGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-numnodegroups
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-port
-- | - `PreferredCacheClusterAZs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-preferredcacheclusterazs
-- | - `PreferredMaintenanceWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-preferredmaintenancewindow
-- | - `PrimaryClusterId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-primaryclusterid
-- | - `ReplicasPerNodeGroup`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicaspernodegroup
-- | - `ReplicationGroupDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicationgroupdescription
-- | - `ReplicationGroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicationgroupid
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-securitygroupids
-- | - `SnapshotArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotarns
-- | - `SnapshotName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotname
-- | - `SnapshotRetentionLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotretentionlimit
-- | - `SnapshotWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotwindow
-- | - `SnapshottingClusterId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshottingclusterid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-tags
-- | - `TransitEncryptionEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-transitencryptionenabled
newtype ReplicationGroup = ReplicationGroup
  { "ReplicationGroupDescription" :: Value String
  , "AtRestEncryptionEnabled" :: Maybe (Value Boolean)
  , "AuthToken" :: Maybe (Value String)
  , "AutoMinorVersionUpgrade" :: Maybe (Value Boolean)
  , "AutomaticFailoverEnabled" :: Maybe (Value Boolean)
  , "CacheNodeType" :: Maybe (Value String)
  , "CacheParameterGroupName" :: Maybe (Value String)
  , "CacheSecurityGroupNames" :: Maybe (Value (Array String))
  , "CacheSubnetGroupName" :: Maybe (Value String)
  , "Engine" :: Maybe (Value String)
  , "EngineVersion" :: Maybe (Value String)
  , "KmsKeyId" :: Maybe (Value String)
  , "NodeGroupConfiguration" :: Maybe (Value (Array NodeGroupConfiguration))
  , "NotificationTopicArn" :: Maybe (Value String)
  , "NumCacheClusters" :: Maybe (Value Int)
  , "NumNodeGroups" :: Maybe (Value Int)
  , "Port" :: Maybe (Value Int)
  , "PreferredCacheClusterAZs" :: Maybe (Value (Array String))
  , "PreferredMaintenanceWindow" :: Maybe (Value String)
  , "PrimaryClusterId" :: Maybe (Value String)
  , "ReplicasPerNodeGroup" :: Maybe (Value Int)
  , "ReplicationGroupId" :: Maybe (Value String)
  , "SecurityGroupIds" :: Maybe (Value (Array String))
  , "SnapshotArns" :: Maybe (Value (Array String))
  , "SnapshotName" :: Maybe (Value String)
  , "SnapshotRetentionLimit" :: Maybe (Value Int)
  , "SnapshotWindow" :: Maybe (Value String)
  , "SnapshottingClusterId" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "TransitEncryptionEnabled" :: Maybe (Value Boolean)
  }

derive instance newtypeReplicationGroup :: Newtype ReplicationGroup _
derive newtype instance writeReplicationGroup :: WriteForeign ReplicationGroup
instance resourceReplicationGroup :: Resource ReplicationGroup where type_ _ = "AWS::ElastiCache::ReplicationGroup"

replicationGroup :: { "ReplicationGroupDescription" :: Value String } -> ReplicationGroup
replicationGroup required = ReplicationGroup
  (merge required
    { "AtRestEncryptionEnabled" : Nothing
    , "AuthToken" : Nothing
    , "AutoMinorVersionUpgrade" : Nothing
    , "AutomaticFailoverEnabled" : Nothing
    , "CacheNodeType" : Nothing
    , "CacheParameterGroupName" : Nothing
    , "CacheSecurityGroupNames" : Nothing
    , "CacheSubnetGroupName" : Nothing
    , "Engine" : Nothing
    , "EngineVersion" : Nothing
    , "KmsKeyId" : Nothing
    , "NodeGroupConfiguration" : Nothing
    , "NotificationTopicArn" : Nothing
    , "NumCacheClusters" : Nothing
    , "NumNodeGroups" : Nothing
    , "Port" : Nothing
    , "PreferredCacheClusterAZs" : Nothing
    , "PreferredMaintenanceWindow" : Nothing
    , "PrimaryClusterId" : Nothing
    , "ReplicasPerNodeGroup" : Nothing
    , "ReplicationGroupId" : Nothing
    , "SecurityGroupIds" : Nothing
    , "SnapshotArns" : Nothing
    , "SnapshotName" : Nothing
    , "SnapshotRetentionLimit" : Nothing
    , "SnapshotWindow" : Nothing
    , "SnapshottingClusterId" : Nothing
    , "Tags" : Nothing
    , "TransitEncryptionEnabled" : Nothing
    })

-- | `AWS::ElastiCache::ReplicationGroup.NodeGroupConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html
-- |
-- | - `NodeGroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-nodegroupid
-- | - `PrimaryAvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-primaryavailabilityzone
-- | - `ReplicaAvailabilityZones`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-replicaavailabilityzones
-- | - `ReplicaCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-replicacount
-- | - `Slots`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-slots
type NodeGroupConfiguration =
  { "NodeGroupId" :: Maybe (Value String)
  , "PrimaryAvailabilityZone" :: Maybe (Value String)
  , "ReplicaAvailabilityZones" :: Maybe (Value (Array String))
  , "ReplicaCount" :: Maybe (Value Int)
  , "Slots" :: Maybe (Value String)
  }

nodeGroupConfiguration :: NodeGroupConfiguration
nodeGroupConfiguration =
  { "NodeGroupId" : Nothing
  , "PrimaryAvailabilityZone" : Nothing
  , "ReplicaAvailabilityZones" : Nothing
  , "ReplicaCount" : Nothing
  , "Slots" : Nothing
  }