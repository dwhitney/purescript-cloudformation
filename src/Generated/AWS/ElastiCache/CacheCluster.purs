module CloudFormation.AWS.ElastiCache.CacheCluster where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ElastiCache::CacheCluster`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html
-- |
-- | - `AZMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-azmode
-- | - `AutoMinorVersionUpgrade`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-autominorversionupgrade
-- | - `CacheNodeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cachenodetype
-- | - `CacheParameterGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cacheparametergroupname
-- | - `CacheSecurityGroupNames`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cachesecuritygroupnames
-- | - `CacheSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cachesubnetgroupname
-- | - `ClusterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-clustername
-- | - `Engine`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-engine
-- | - `EngineVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-engineversion
-- | - `NotificationTopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-notificationtopicarn
-- | - `NumCacheNodes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-numcachenodes
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-port
-- | - `PreferredAvailabilityZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredavailabilityzone
-- | - `PreferredAvailabilityZones`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredavailabilityzones
-- | - `PreferredMaintenanceWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredmaintenancewindow
-- | - `SnapshotArns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotarns
-- | - `SnapshotName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotname
-- | - `SnapshotRetentionLimit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotretentionlimit
-- | - `SnapshotWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotwindow
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-tags
-- | - `VpcSecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-vpcsecuritygroupids
newtype CacheCluster = CacheCluster
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

derive instance newtypeCacheCluster :: Newtype CacheCluster _
instance resourceCacheCluster :: Resource CacheCluster where type_ _ = "AWS::ElastiCache::CacheCluster"

cacheCluster :: { "CacheNodeType" :: String, "Engine" :: String, "NumCacheNodes" :: Int } -> CacheCluster
cacheCluster required = CacheCluster
  (merge required
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
    })