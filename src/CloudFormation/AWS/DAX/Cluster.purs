module CloudFormation.AWS.DAX.Cluster where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Cluster =
  { "ReplicationFactor" :: Int
  , "IAMRoleARN" :: String
  , "NodeType" :: String
  , "SSESpecification" :: Maybe SSESpecification
  , "Description" :: Maybe String
  , "ParameterGroupName" :: Maybe String
  , "AvailabilityZones" :: Maybe (Array String)
  , "SubnetGroupName" :: Maybe String
  , "PreferredMaintenanceWindow" :: Maybe String
  , "NotificationTopicARN" :: Maybe String
  , "SecurityGroupIds" :: Maybe (Array String)
  , "ClusterName" :: Maybe String
  , "Tags" :: Maybe Foreign
  }

cluster :: { "ReplicationFactor" :: Int, "IAMRoleARN" :: String, "NodeType" :: String } -> Cluster
cluster required =
  merge required
    { "SSESpecification" : Nothing
    , "Description" : Nothing
    , "ParameterGroupName" : Nothing
    , "AvailabilityZones" : Nothing
    , "SubnetGroupName" : Nothing
    , "PreferredMaintenanceWindow" : Nothing
    , "NotificationTopicARN" : Nothing
    , "SecurityGroupIds" : Nothing
    , "ClusterName" : Nothing
    , "Tags" : Nothing
    }

type SSESpecification =
  { "SSEEnabled" :: Maybe Boolean
  }

ssesSESpecification :: SSESpecification
ssesSESpecification =
  { "SSEEnabled" : Nothing
  }