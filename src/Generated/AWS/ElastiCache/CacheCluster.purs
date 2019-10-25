module CloudFormation.AWS.ElastiCache.CacheCluster where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "CacheNodeType" :: Value String
  , "Engine" :: Value String
  , "NumCacheNodes" :: Value Int
  , "AZMode" :: Maybe (Value String)
  , "AutoMinorVersionUpgrade" :: Maybe (Value Boolean)
  , "CacheParameterGroupName" :: Maybe (Value String)
  , "CacheSecurityGroupNames" :: Maybe (Value (Array String))
  , "CacheSubnetGroupName" :: Maybe (Value String)
  , "ClusterName" :: Maybe (Value String)
  , "EngineVersion" :: Maybe (Value String)
  , "NotificationTopicArn" :: Maybe (Value String)
  , "Port" :: Maybe (Value Int)
  , "PreferredAvailabilityZone" :: Maybe (Value String)
  , "PreferredAvailabilityZones" :: Maybe (Value (Array String))
  , "PreferredMaintenanceWindow" :: Maybe (Value String)
  , "SnapshotArns" :: Maybe (Value (Array String))
  , "SnapshotName" :: Maybe (Value String)
  , "SnapshotRetentionLimit" :: Maybe (Value Int)
  , "SnapshotWindow" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "VpcSecurityGroupIds" :: Maybe (Value (Array String))
  }

derive instance newtypeCacheCluster :: Newtype CacheCluster _
derive newtype instance writeCacheCluster :: WriteForeign CacheCluster
instance resourceCacheCluster :: Resource CacheCluster where type_ _ = "AWS::ElastiCache::CacheCluster"

cacheCluster :: { "CacheNodeType" :: Value String, "Engine" :: Value String, "NumCacheNodes" :: Value Int } -> CacheCluster
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