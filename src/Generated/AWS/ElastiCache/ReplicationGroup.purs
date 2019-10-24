module CloudFormation.AWS.ElastiCache.ReplicationGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "ReplicationGroupDescription" :: String
  , "AtRestEncryptionEnabled" :: Maybe Boolean
  , "AuthToken" :: Maybe String
  , "AutoMinorVersionUpgrade" :: Maybe Boolean
  , "AutomaticFailoverEnabled" :: Maybe Boolean
  , "CacheNodeType" :: Maybe String
  , "CacheParameterGroupName" :: Maybe String
  , "CacheSecurityGroupNames" :: Maybe (Array String)
  , "CacheSubnetGroupName" :: Maybe String
  , "Engine" :: Maybe String
  , "EngineVersion" :: Maybe String
  , "KmsKeyId" :: Maybe String
  , "NodeGroupConfiguration" :: Maybe (Array NodeGroupConfiguration)
  , "NotificationTopicArn" :: Maybe String
  , "NumCacheClusters" :: Maybe Int
  , "NumNodeGroups" :: Maybe Int
  , "Port" :: Maybe Int
  , "PreferredCacheClusterAZs" :: Maybe (Array String)
  , "PreferredMaintenanceWindow" :: Maybe String
  , "PrimaryClusterId" :: Maybe String
  , "ReplicasPerNodeGroup" :: Maybe Int
  , "ReplicationGroupId" :: Maybe String
  , "SecurityGroupIds" :: Maybe (Array String)
  , "SnapshotArns" :: Maybe (Array String)
  , "SnapshotName" :: Maybe String
  , "SnapshotRetentionLimit" :: Maybe Int
  , "SnapshotWindow" :: Maybe String
  , "SnapshottingClusterId" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "TransitEncryptionEnabled" :: Maybe Boolean
  }

derive instance newtypeReplicationGroup :: Newtype ReplicationGroup _
instance resourceReplicationGroup :: Resource ReplicationGroup where type_ _ = "AWS::ElastiCache::ReplicationGroup"

replicationGroup :: { "ReplicationGroupDescription" :: String } -> ReplicationGroup
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
  { "NodeGroupId" :: Maybe String
  , "PrimaryAvailabilityZone" :: Maybe String
  , "ReplicaAvailabilityZones" :: Maybe (Array String)
  , "ReplicaCount" :: Maybe Int
  , "Slots" :: Maybe String
  }

nodeGroupConfiguration :: NodeGroupConfiguration
nodeGroupConfiguration =
  { "NodeGroupId" : Nothing
  , "PrimaryAvailabilityZone" : Nothing
  , "ReplicaAvailabilityZones" : Nothing
  , "ReplicaCount" : Nothing
  , "Slots" : Nothing
  }