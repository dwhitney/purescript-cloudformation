module CloudFormation.AWS.Redshift.ClusterSubnetGroup where 

import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


type ClusterSubnetGroup =
  { "Description" :: String
  , "SubnetIds" :: Array String
  , "Tags" :: Maybe (Array Tag)
  }

clusterSubnetGroup :: { "Description" :: String, "SubnetIds" :: Array String } -> ClusterSubnetGroup
clusterSubnetGroup required =
  merge required
    { "Tags" : Nothing
    }