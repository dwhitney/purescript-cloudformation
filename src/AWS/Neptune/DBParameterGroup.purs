module AWS.Neptune.DBParameterGroup where 

import Foreign (Foreign)
import Tag
import Data.Maybe (Maybe(..))
import Record (merge)


type DBParameterGroup =
  { "Description" :: String
  , "Parameters" :: Foreign
  , "Family" :: String
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  }

dbpBParameterGroup :: { "Description" :: String, "Parameters" :: Foreign, "Family" :: String } -> DBParameterGroup
dbpBParameterGroup required =
  merge required
    { "Tags" : Nothing
    , "Name" : Nothing
    }