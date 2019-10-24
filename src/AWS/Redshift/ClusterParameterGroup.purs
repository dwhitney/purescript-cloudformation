module AWS.Redshift.ClusterParameterGroup where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type ClusterParameterGroup =
  { "Description" :: String
  , "ParameterGroupFamily" :: String
  , "Parameters" :: Maybe (Array Parameter)
  , "Tags" :: Maybe (Array Tag)
  }

clusterParameterGroup :: { "Description" :: String, "ParameterGroupFamily" :: String } -> ClusterParameterGroup
clusterParameterGroup required =
  merge required
    { "Parameters" : Nothing
    , "Tags" : Nothing
    }

type Parameter =
  { "ParameterName" :: String
  , "ParameterValue" :: String
  }

parameter :: { "ParameterName" :: String, "ParameterValue" :: String } -> Parameter
parameter required =
  required