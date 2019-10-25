module CloudFormation.AWS.ECS.Cluster where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ECS::Cluster`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html
-- |
-- | - `ClusterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-clustername
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-tags
newtype Cluster = Cluster
  { "ClusterName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeCluster :: Newtype Cluster _
derive newtype instance writeCluster :: WriteForeign Cluster
instance resourceCluster :: Resource Cluster where type_ _ = "AWS::ECS::Cluster"

cluster :: Cluster
cluster = Cluster
  { "ClusterName" : Nothing
  , "Tags" : Nothing
  }