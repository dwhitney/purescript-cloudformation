module CloudFormation.AWS.ElastiCache.ParameterGroup where 

import CloudFormation (Value)
import Foreign.Object (Object)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "CacheParameterGroupFamily" :: Value String
  , "Description" :: Value String
  , "Properties" :: Maybe (Value (Object String))
  }

derive instance newtypeParameterGroup :: Newtype ParameterGroup _
derive newtype instance writeParameterGroup :: WriteForeign ParameterGroup
instance resourceParameterGroup :: Resource ParameterGroup where type_ _ = "AWS::ElastiCache::ParameterGroup"

parameterGroup :: { "CacheParameterGroupFamily" :: Value String, "Description" :: Value String } -> ParameterGroup
parameterGroup required = ParameterGroup
  (merge required
    { "Properties" : Nothing
    })