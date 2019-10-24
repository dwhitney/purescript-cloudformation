module CloudFormation.AWS.ECS.Cluster where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ECS::Cluster`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html
-- |
-- | - `ClusterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-clustername
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-tags
newtype Cluster = Cluster
  { "ClusterName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeCluster :: Newtype Cluster _
instance resourceCluster :: Resource Cluster where type_ _ = "AWS::ECS::Cluster"

cluster :: Cluster
cluster = Cluster
  { "ClusterName" : Nothing
  , "Tags" : Nothing
  }