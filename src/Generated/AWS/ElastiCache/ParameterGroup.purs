module CloudFormation.AWS.ElastiCache.ParameterGroup where 

import Foreign.Object (Object)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ElastiCache::ParameterGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-parameter-group.html
-- |
-- | - `CacheParameterGroupFamily`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-parameter-group.html#cfn-elasticache-parametergroup-cacheparametergroupfamily
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-parameter-group.html#cfn-elasticache-parametergroup-description
-- | - `Properties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-parameter-group.html#cfn-elasticache-parametergroup-properties
newtype ParameterGroup = ParameterGroup
  { "CacheParameterGroupFamily" :: String
  , "Description" :: String
  , "Properties" :: Maybe (Object String)
  }

derive instance newtypeParameterGroup :: Newtype ParameterGroup _
instance resourceParameterGroup :: Resource ParameterGroup where type_ _ = "AWS::ElastiCache::ParameterGroup"

parameterGroup :: { "CacheParameterGroupFamily" :: String, "Description" :: String } -> ParameterGroup
parameterGroup required = ParameterGroup
  (merge required
    { "Properties" : Nothing
    })