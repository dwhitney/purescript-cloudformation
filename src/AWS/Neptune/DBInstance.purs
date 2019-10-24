module AWS.Neptune.DBInstance where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type DBInstance =
  { "DBInstanceClass" :: String
  , "DBParameterGroupName" :: Maybe String
  , "AllowMajorVersionUpgrade" :: Maybe Boolean
  , "DBClusterIdentifier" :: Maybe String
  , "AvailabilityZone" :: Maybe String
  , "PreferredMaintenanceWindow" :: Maybe String
  , "AutoMinorVersionUpgrade" :: Maybe Boolean
  , "DBSubnetGroupName" :: Maybe String
  , "DBInstanceIdentifier" :: Maybe String
  , "DBSnapshotIdentifier" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

dbiBInstance :: { "DBInstanceClass" :: String } -> DBInstance
dbiBInstance required =
  merge required
    { "DBParameterGroupName" : Nothing
    , "AllowMajorVersionUpgrade" : Nothing
    , "DBClusterIdentifier" : Nothing
    , "AvailabilityZone" : Nothing
    , "PreferredMaintenanceWindow" : Nothing
    , "AutoMinorVersionUpgrade" : Nothing
    , "DBSubnetGroupName" : Nothing
    , "DBInstanceIdentifier" : Nothing
    , "DBSnapshotIdentifier" : Nothing
    , "Tags" : Nothing
    }