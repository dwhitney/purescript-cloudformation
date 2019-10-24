module CloudFormation.AWS.RDS.DBParameterGroup where 

import Foreign.Object (Object)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type DBParameterGroup =
  { "Description" :: String
  , "Family" :: String
  , "Parameters" :: Maybe (Object String)
  , "Tags" :: Maybe (Array Tag)
  }

dbpBParameterGroup :: { "Description" :: String, "Family" :: String } -> DBParameterGroup
dbpBParameterGroup required =
  merge required
    { "Parameters" : Nothing
    , "Tags" : Nothing
    }