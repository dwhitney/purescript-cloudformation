module CloudFormation.AWS.ElastiCache.CacheCluster where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type CacheCluster =
  { "CacheNodeType" :: String
  , "Engine" :: String
  , "NumCacheNodes" :: Int
  , "AZMode" :: Maybe String
  , "AutoMinorVersionUpgrade" :: Maybe Boolean
  , "CacheParameterGroupName" :: Maybe String
  , "CacheSecurityGroupNames" :: Maybe (Array String)
  , "CacheSubnetGroupName" :: Maybe String
  , "ClusterName" :: Maybe String
  , "EngineVersion" :: Maybe String
  , "NotificationTopicArn" :: Maybe String
  , "Port" :: Maybe Int
  , "PreferredAvailabilityZone" :: Maybe String
  , "PreferredAvailabilityZones" :: Maybe (Array String)
  , "PreferredMaintenanceWindow" :: Maybe String
  , "SnapshotArns" :: Maybe (Array String)
  , "SnapshotName" :: Maybe String
  , "SnapshotRetentionLimit" :: Maybe Int
  , "SnapshotWindow" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "VpcSecurityGroupIds" :: Maybe (Array String)
  }

cacheCluster :: { "CacheNodeType" :: String, "Engine" :: String, "NumCacheNodes" :: Int } -> CacheCluster
cacheCluster required =
  merge required
    { "AZMode" : Nothing
    , "AutoMinorVersionUpgrade" : Nothing
    , "CacheParameterGroupName" : Nothing
    , "CacheSecurityGroupNames" : Nothing
    , "CacheSubnetGroupName" : Nothing
    , "ClusterName" : Nothing
    , "EngineVersion" : Nothing
    , "NotificationTopicArn" : Nothing
    , "Port" : Nothing
    , "PreferredAvailabilityZone" : Nothing
    , "PreferredAvailabilityZones" : Nothing
    , "PreferredMaintenanceWindow" : Nothing
    , "SnapshotArns" : Nothing
    , "SnapshotName" : Nothing
    , "SnapshotRetentionLimit" : Nothing
    , "SnapshotWindow" : Nothing
    , "Tags" : Nothing
    , "VpcSecurityGroupIds" : Nothing
    }