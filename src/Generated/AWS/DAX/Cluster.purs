module CloudFormation.AWS.DAX.Cluster where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::DAX::Cluster`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html
-- |
-- | - `SSESpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-ssespecification
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-description
-- | - `ReplicationFactor`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-replicationfactor
-- | - `ParameterGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-parametergroupname
-- | - `AvailabilityZones`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-availabilityzones
-- | - `IAMRoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-iamrolearn
-- | - `SubnetGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-subnetgroupname
-- | - `PreferredMaintenanceWindow`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-preferredmaintenancewindow
-- | - `NotificationTopicARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-notificationtopicarn
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-securitygroupids
-- | - `NodeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-nodetype
-- | - `ClusterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-clustername
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dax-cluster.html#cfn-dax-cluster-tags
newtype Cluster = Cluster
  { "ReplicationFactor" :: Value Int
  , "IAMRoleARN" :: Value String
  , "NodeType" :: Value String
  , "SSESpecification" :: Maybe (Value SSESpecification)
  , "Description" :: Maybe (Value String)
  , "ParameterGroupName" :: Maybe (Value String)
  , "AvailabilityZones" :: Maybe (Value (Array String))
  , "SubnetGroupName" :: Maybe (Value String)
  , "PreferredMaintenanceWindow" :: Maybe (Value String)
  , "NotificationTopicARN" :: Maybe (Value String)
  , "SecurityGroupIds" :: Maybe (Value (Array String))
  , "ClusterName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeCluster :: Newtype Cluster _
derive newtype instance writeCluster :: WriteForeign Cluster
instance resourceCluster :: Resource Cluster where type_ _ = "AWS::DAX::Cluster"

cluster :: { "ReplicationFactor" :: Value Int, "IAMRoleARN" :: Value String, "NodeType" :: Value String } -> Cluster
cluster required = Cluster
  (merge required
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
    })

-- | `AWS::DAX::Cluster.SSESpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dax-cluster-ssespecification.html
-- |
-- | - `SSEEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dax-cluster-ssespecification.html#cfn-dax-cluster-ssespecification-sseenabled
type SSESpecification =
  { "SSEEnabled" :: Maybe (Value Boolean)
  }

ssesSESpecification :: SSESpecification
ssesSESpecification =
  { "SSEEnabled" : Nothing
  }