module AWS.DocDB.DBSubnetGroup where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type DBSubnetGroup =
  { "DBSubnetGroupDescription" :: String
  , "SubnetIds" :: Array String
  , "DBSubnetGroupName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

dbsBSubnetGroup :: { "DBSubnetGroupDescription" :: String, "SubnetIds" :: Array String } -> DBSubnetGroup
dbsBSubnetGroup required =
  merge required
    { "DBSubnetGroupName" : Nothing
    , "Tags" : Nothing
    }