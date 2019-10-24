module AWS.DMS.ReplicationInstance where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type ReplicationInstance =
  { "ReplicationInstanceClass" :: String
  , "ReplicationInstanceIdentifier" :: Maybe String
  , "EngineVersion" :: Maybe String
  , "KmsKeyId" :: Maybe String
  , "AvailabilityZone" :: Maybe String
  , "PreferredMaintenanceWindow" :: Maybe String
  , "AutoMinorVersionUpgrade" :: Maybe Boolean
  , "ReplicationSubnetGroupIdentifier" :: Maybe String
  , "AllocatedStorage" :: Maybe Int
  , "VpcSecurityGroupIds" :: Maybe (Array String)
  , "AllowMajorVersionUpgrade" :: Maybe Boolean
  , "PubliclyAccessible" :: Maybe Boolean
  , "MultiAZ" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tag)
  }

replicationInstance :: { "ReplicationInstanceClass" :: String } -> ReplicationInstance
replicationInstance required =
  merge required
    { "ReplicationInstanceIdentifier" : Nothing
    , "EngineVersion" : Nothing
    , "KmsKeyId" : Nothing
    , "AvailabilityZone" : Nothing
    , "PreferredMaintenanceWindow" : Nothing
    , "AutoMinorVersionUpgrade" : Nothing
    , "ReplicationSubnetGroupIdentifier" : Nothing
    , "AllocatedStorage" : Nothing
    , "VpcSecurityGroupIds" : Nothing
    , "AllowMajorVersionUpgrade" : Nothing
    , "PubliclyAccessible" : Nothing
    , "MultiAZ" : Nothing
    , "Tags" : Nothing
    }