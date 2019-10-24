module CloudFormation.AWS.ElastiCache.ParameterGroup where 

import Foreign.Object (Object)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::ElastiCache::ParameterGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-parameter-group.html
-- |
-- | - `CacheParameterGroupFamily`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-parameter-group.html#cfn-elasticache-parametergroup-cacheparametergroupfamily
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-parameter-group.html#cfn-elasticache-parametergroup-description
-- | - `Properties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-parameter-group.html#cfn-elasticache-parametergroup-properties
type ParameterGroup =
  { "CacheParameterGroupFamily" :: String
  , "Description" :: String
  , "Properties" :: Maybe (Object String)
  }

parameterGroup :: { "CacheParameterGroupFamily" :: String, "Description" :: String } -> ParameterGroup
parameterGroup required =
  merge required
    { "Properties" : Nothing
    }