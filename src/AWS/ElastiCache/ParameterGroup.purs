module AWS.ElastiCache.ParameterGroup where 

import Foreign.Object (Object)
import Data.Maybe (Maybe(..))
import Record (merge)


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