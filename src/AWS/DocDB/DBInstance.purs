module AWS.DocDB.DBInstance where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type DBInstance =
  { "DBInstanceClass" :: String
  , "DBClusterIdentifier" :: String
  , "AvailabilityZone" :: Maybe String
  , "PreferredMaintenanceWindow" :: Maybe String
  , "AutoMinorVersionUpgrade" :: Maybe Boolean
  , "DBInstanceIdentifier" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

dbiBInstance :: { "DBInstanceClass" :: String, "DBClusterIdentifier" :: String } -> DBInstance
dbiBInstance required =
  merge required
    { "AvailabilityZone" : Nothing
    , "PreferredMaintenanceWindow" : Nothing
    , "AutoMinorVersionUpgrade" : Nothing
    , "DBInstanceIdentifier" : Nothing
    , "Tags" : Nothing
    }