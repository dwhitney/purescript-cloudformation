module CloudFormation.AWS.ElastiCache.SubnetGroup where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Description" :: Value String
  , "SubnetIds" :: Value (Array String)
  , "CacheSubnetGroupName" :: Maybe (Value String)
  }

derive instance newtypeSubnetGroup :: Newtype SubnetGroup _
derive newtype instance writeSubnetGroup :: WriteForeign SubnetGroup
instance resourceSubnetGroup :: Resource SubnetGroup where type_ _ = "AWS::ElastiCache::SubnetGroup"

subnetGroup :: { "Description" :: Value String, "SubnetIds" :: Value (Array String) } -> SubnetGroup
subnetGroup required = SubnetGroup
  (merge required
    { "CacheSubnetGroupName" : Nothing
    })