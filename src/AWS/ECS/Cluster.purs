module AWS.ECS.Cluster where 

import Data.Maybe (Maybe(..))
import Tag


type Cluster =
  { "ClusterName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

cluster :: Cluster
cluster =
  { "ClusterName" : Nothing
  , "Tags" : Nothing
  }