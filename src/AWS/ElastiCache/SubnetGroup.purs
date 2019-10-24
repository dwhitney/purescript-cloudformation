module AWS.ElastiCache.SubnetGroup where 

import Data.Maybe (Maybe(..))
import Record (merge)


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