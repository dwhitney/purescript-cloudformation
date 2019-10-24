module CloudFormation.AWS.ElastiCache.SubnetGroup where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ElastiCache::SubnetGroup`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-subnetgroup.html-- |
-- | - `CacheSubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-subnetgroup.html#cfn-elasticache-subnetgroup-cachesubnetgroupname
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-subnetgroup.html#cfn-elasticache-subnetgroup-description
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-subnetgroup.html#cfn-elasticache-subnetgroup-subnetids
type SubnetGroup =
  { "Description" :: String
  , "SubnetIds" :: Array String
  , "CacheSubnetGroupName" :: Maybe String
  }

subnetGroup :: { "Description" :: String, "SubnetIds" :: Array String } -> SubnetGroup
subnetGroup required =
  merge required
    { "CacheSubnetGroupName" : Nothing
    }