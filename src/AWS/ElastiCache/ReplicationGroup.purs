module AWS.ElastiCache.ReplicationGroup where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type ReplicationGroup =
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

replicationGroup :: { "ReplicationGroupDescription" :: String } -> ReplicationGroup
replicationGroup required =
  merge required
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
    }

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