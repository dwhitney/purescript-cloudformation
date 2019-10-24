module CloudFormation.AWS.ECS.Cluster where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


-- | `AWS::ECS::Cluster`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html
-- |
-- | - `ClusterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-clustername
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-tags
type Cluster =
  { "ClusterName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

cluster :: Cluster
cluster =
  { "ClusterName" : Nothing
  , "Tags" : Nothing
  }