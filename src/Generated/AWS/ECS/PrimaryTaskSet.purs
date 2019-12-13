module CloudFormation.AWS.ECS.PrimaryTaskSet where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ECS::PrimaryTaskSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-primarytaskset.html
-- |
-- | - `Cluster`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-primarytaskset.html#cfn-ecs-primarytaskset-cluster
-- | - `TaskSetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-primarytaskset.html#cfn-ecs-primarytaskset-tasksetid
-- | - `Service`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-primarytaskset.html#cfn-ecs-primarytaskset-service
newtype PrimaryTaskSet = PrimaryTaskSet
  { "Cluster" :: Value String
  , "TaskSetId" :: Value String
  , "Service" :: Value String
  }

derive instance newtypePrimaryTaskSet :: Newtype PrimaryTaskSet _
derive newtype instance writePrimaryTaskSet :: WriteForeign PrimaryTaskSet
instance resourcePrimaryTaskSet :: Resource PrimaryTaskSet where type_ _ = "AWS::ECS::PrimaryTaskSet"

primaryTaskSet :: { "Cluster" :: Value String, "TaskSetId" :: Value String, "Service" :: Value String } -> PrimaryTaskSet
primaryTaskSet required = PrimaryTaskSet
  required