module CloudFormation.AWS.DMS.ReplicationSubnetGroup where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type ReplicationSubnetGroup =
  { "ReplicationSubnetGroupDescription" :: String
  , "SubnetIds" :: Array String
  , "ReplicationSubnetGroupIdentifier" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

replicationSubnetGroup :: { "ReplicationSubnetGroupDescription" :: String, "SubnetIds" :: Array String } -> ReplicationSubnetGroup
replicationSubnetGroup required =
  merge required
    { "ReplicationSubnetGroupIdentifier" : Nothing
    , "Tags" : Nothing
    }