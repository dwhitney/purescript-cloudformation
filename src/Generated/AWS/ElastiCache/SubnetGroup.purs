module CloudFormation.AWS.ElastiCache.SubnetGroup where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ElastiCache::SubnetGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-subnetgroup.html
-- |
-- | - `CacheSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-subnetgroup.html#cfn-elasticache-subnetgroup-cachesubnetgroupname
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-subnetgroup.html#cfn-elasticache-subnetgroup-description
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-subnetgroup.html#cfn-elasticache-subnetgroup-subnetids
newtype SubnetGroup = SubnetGroup
  { "Description" :: String
  , "SubnetIds" :: Array String
  , "CacheSubnetGroupName" :: Maybe String
  }

derive instance newtypeSubnetGroup :: Newtype SubnetGroup _
instance resourceSubnetGroup :: Resource SubnetGroup where type_ _ = "AWS::ElastiCache::SubnetGroup"

subnetGroup :: { "Description" :: String, "SubnetIds" :: Array String } -> SubnetGroup
subnetGroup required = SubnetGroup
  (merge required
    { "CacheSubnetGroupName" : Nothing
    })