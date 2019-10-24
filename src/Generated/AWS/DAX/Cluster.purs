module CloudFormation.AWS.DAX.Cluster where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import Record (merge)


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
  , "Tags" :: Maybe Json
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

-- | `AWS::DAX::Cluster.SSESpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dax-cluster-ssespecification.html
-- |
-- | - `SSEEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dax-cluster-ssespecification.html#cfn-dax-cluster-ssespecification-sseenabled
type SSESpecification =
  { "SSEEnabled" :: Maybe Boolean
  }

ssesSESpecification :: SSESpecification
ssesSESpecification =
  { "SSEEnabled" : Nothing
  }