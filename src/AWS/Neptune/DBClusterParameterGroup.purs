module AWS.Neptune.DBClusterParameterGroup where 

import Foreign (Foreign)
import Tag
import Data.Maybe (Maybe(..))
import Record (merge)


type DBClusterParameterGroup =
  { "Description" :: String
  , "Parameters" :: Foreign
  , "Family" :: String
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  }

dbcBClusterParameterGroup :: { "Description" :: String, "Parameters" :: Foreign, "Family" :: String } -> DBClusterParameterGroup
dbcBClusterParameterGroup required =
  merge required
    { "Tags" : Nothing
    , "Name" : Nothing
    }