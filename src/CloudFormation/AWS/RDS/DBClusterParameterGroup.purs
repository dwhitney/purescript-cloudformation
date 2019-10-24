module CloudFormation.AWS.RDS.DBClusterParameterGroup where 

import Foreign (Foreign)
import CloudFormation.Tag (Tag)
import Data.Maybe (Maybe(..))
import Record (merge)


type DBClusterParameterGroup =
  { "Description" :: String
  , "Family" :: String
  , "Parameters" :: Foreign
  , "Tags" :: Maybe (Array Tag)
  }

dbcBClusterParameterGroup :: { "Description" :: String, "Family" :: String, "Parameters" :: Foreign } -> DBClusterParameterGroup
dbcBClusterParameterGroup required =
  merge required
    { "Tags" : Nothing
    }