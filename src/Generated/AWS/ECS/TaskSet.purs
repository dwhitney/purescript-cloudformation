module CloudFormation.AWS.ECS.TaskSet where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ECS::TaskSet`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html
-- |
-- | - `Cluster`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-cluster
-- | - `ExternalId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-externalid
-- | - `LaunchType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-launchtype
-- | - `LoadBalancers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-loadbalancers
-- | - `NetworkConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-networkconfiguration
-- | - `PlatformVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-platformversion
-- | - `Scale`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-scale
-- | - `Service`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-service
-- | - `ServiceRegistries`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-serviceregistries
-- | - `TaskDefinition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-taskdefinition
newtype TaskSet = TaskSet
  { "Cluster" :: Value String
  , "Service" :: Value String
  , "TaskDefinition" :: Value String
  , "ExternalId" :: Maybe (Value String)
  , "LaunchType" :: Maybe (Value String)
  , "LoadBalancers" :: Maybe (Value (Array LoadBalancer))
  , "NetworkConfiguration" :: Maybe (Value NetworkConfiguration)
  , "PlatformVersion" :: Maybe (Value String)
  , "Scale" :: Maybe (Value Scale)
  , "ServiceRegistries" :: Maybe (Value (Array ServiceRegistry))
  }

derive instance newtypeTaskSet :: Newtype TaskSet _
derive newtype instance writeTaskSet :: WriteForeign TaskSet
instance resourceTaskSet :: Resource TaskSet where type_ _ = "AWS::ECS::TaskSet"

taskSet :: { "Cluster" :: Value String, "Service" :: Value String, "TaskDefinition" :: Value String } -> TaskSet
taskSet required = TaskSet
  (merge required
    { "ExternalId" : Nothing
    , "LaunchType" : Nothing
    , "LoadBalancers" : Nothing
    , "NetworkConfiguration" : Nothing
    , "PlatformVersion" : Nothing
    , "Scale" : Nothing
    , "ServiceRegistries" : Nothing
    })

-- | `AWS::ECS::TaskSet.Scale`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-scale.html
-- |
-- | - `Unit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-scale.html#cfn-ecs-taskset-scale-unit
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-scale.html#cfn-ecs-taskset-scale-value
type Scale =
  { "Unit" :: Maybe (Value String)
  , "Value" :: Maybe (Value Number)
  }

scale :: Scale
scale =
  { "Unit" : Nothing
  , "Value" : Nothing
  }

-- | `AWS::ECS::TaskSet.ServiceRegistry`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html
-- |
-- | - `ContainerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html#cfn-ecs-taskset-serviceregistry-containername
-- | - `ContainerPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html#cfn-ecs-taskset-serviceregistry-containerport
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html#cfn-ecs-taskset-serviceregistry-port
-- | - `RegistryArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-serviceregistry.html#cfn-ecs-taskset-serviceregistry-registryarn
type ServiceRegistry =
  { "ContainerName" :: Maybe (Value String)
  , "ContainerPort" :: Maybe (Value Int)
  , "Port" :: Maybe (Value Int)
  , "RegistryArn" :: Maybe (Value String)
  }

serviceRegistry :: ServiceRegistry
serviceRegistry =
  { "ContainerName" : Nothing
  , "ContainerPort" : Nothing
  , "Port" : Nothing
  , "RegistryArn" : Nothing
  }

-- | `AWS::ECS::TaskSet.NetworkConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-networkconfiguration.html
-- |
-- | - `AwsVpcConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-networkconfiguration.html#cfn-ecs-taskset-networkconfiguration-awsvpcconfiguration
type NetworkConfiguration =
  { "AwsVpcConfiguration" :: Maybe (Value AwsVpcConfiguration)
  }

networkConfiguration :: NetworkConfiguration
networkConfiguration =
  { "AwsVpcConfiguration" : Nothing
  }

-- | `AWS::ECS::TaskSet.AwsVpcConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-awsvpcconfiguration.html
-- |
-- | - `AssignPublicIp`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-awsvpcconfiguration.html#cfn-ecs-taskset-awsvpcconfiguration-assignpublicip
-- | - `SecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-awsvpcconfiguration.html#cfn-ecs-taskset-awsvpcconfiguration-securitygroups
-- | - `Subnets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-awsvpcconfiguration.html#cfn-ecs-taskset-awsvpcconfiguration-subnets
type AwsVpcConfiguration =
  { "Subnets" :: Value (Array String)
  , "AssignPublicIp" :: Maybe (Value String)
  , "SecurityGroups" :: Maybe (Value (Array String))
  }

awsVpcConfiguration :: { "Subnets" :: Value (Array String) } -> AwsVpcConfiguration
awsVpcConfiguration required =
  (merge required
    { "AssignPublicIp" : Nothing
    , "SecurityGroups" : Nothing
    })

-- | `AWS::ECS::TaskSet.LoadBalancer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-loadbalancer.html
-- |
-- | - `ContainerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-loadbalancer.html#cfn-ecs-taskset-loadbalancer-containername
-- | - `ContainerPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-loadbalancer.html#cfn-ecs-taskset-loadbalancer-containerport
-- | - `LoadBalancerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-loadbalancer.html#cfn-ecs-taskset-loadbalancer-loadbalancername
-- | - `TargetGroupArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-loadbalancer.html#cfn-ecs-taskset-loadbalancer-targetgrouparn
type LoadBalancer =
  { "ContainerName" :: Maybe (Value String)
  , "ContainerPort" :: Maybe (Value Int)
  , "LoadBalancerName" :: Maybe (Value String)
  , "TargetGroupArn" :: Maybe (Value String)
  }

loadBalancer :: LoadBalancer
loadBalancer =
  { "ContainerName" : Nothing
  , "ContainerPort" : Nothing
  , "LoadBalancerName" : Nothing
  , "TargetGroupArn" : Nothing
  }