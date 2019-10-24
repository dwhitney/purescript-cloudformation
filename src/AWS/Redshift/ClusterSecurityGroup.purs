module AWS.Redshift.ClusterSecurityGroup where 

import Tag
import Data.Maybe (Maybe(..))
import Record (merge)


type ClusterSecurityGroup =
  { "Description" :: String
  , "Tags" :: Maybe (Array Tag)
  }

clusterSecurityGroup :: { "Description" :: String } -> ClusterSecurityGroup
clusterSecurityGroup required =
  merge required
    { "Tags" : Nothing
    }