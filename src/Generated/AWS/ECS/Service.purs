module CloudFormation.AWS.ECS.Service where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Record (merge)


-- | `AWS::ECS::Service`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html
-- |
-- | - `Cluster`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-cluster
-- | - `DeploymentConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-deploymentconfiguration
-- | - `DeploymentController`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-deploymentcontroller
-- | - `DesiredCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-desiredcount
-- | - `EnableECSManagedTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-enableecsmanagedtags
-- | - `HealthCheckGracePeriodSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-healthcheckgraceperiodseconds
-- | - `LaunchType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-launchtype
-- | - `LoadBalancers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-loadbalancers
-- | - `NetworkConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-networkconfiguration
-- | - `PlacementConstraints`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-placementconstraints
-- | - `PlacementStrategies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-placementstrategies
-- | - `PlatformVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-platformversion
-- | - `PropagateTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-propagatetags
-- | - `Role`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-role
-- | - `SchedulingStrategy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-schedulingstrategy
-- | - `ServiceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-servicename
-- | - `ServiceRegistries`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-serviceregistries
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-tags
-- | - `TaskDefinition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-taskdefinition
newtype Service = Service
  { "Cluster" :: Maybe (Value String)
  , "DeploymentConfiguration" :: Maybe (Value DeploymentConfiguration)
  , "DeploymentController" :: Maybe (Value DeploymentController)
  , "DesiredCount" :: Maybe (Value Int)
  , "EnableECSManagedTags" :: Maybe (Value Boolean)
  , "HealthCheckGracePeriodSeconds" :: Maybe (Value Int)
  , "LaunchType" :: Maybe (Value String)
  , "LoadBalancers" :: Maybe (Value (Array LoadBalancer))
  , "NetworkConfiguration" :: Maybe (Value NetworkConfiguration)
  , "PlacementConstraints" :: Maybe (Value (Array PlacementConstraint))
  , "PlacementStrategies" :: Maybe (Value (Array PlacementStrategy))
  , "PlatformVersion" :: Maybe (Value String)
  , "PropagateTags" :: Maybe (Value String)
  , "Role" :: Maybe (Value String)
  , "SchedulingStrategy" :: Maybe (Value String)
  , "ServiceName" :: Maybe (Value String)
  , "ServiceRegistries" :: Maybe (Value (Array ServiceRegistry))
  , "Tags" :: Maybe (Value (Array Tag))
  , "TaskDefinition" :: Maybe (Value String)
  }

derive instance newtypeService :: Newtype Service _
derive newtype instance writeService :: WriteForeign Service
instance resourceService :: Resource Service where type_ _ = "AWS::ECS::Service"

service :: Service
service = Service
  { "Cluster" : Nothing
  , "DeploymentConfiguration" : Nothing
  , "DeploymentController" : Nothing
  , "DesiredCount" : Nothing
  , "EnableECSManagedTags" : Nothing
  , "HealthCheckGracePeriodSeconds" : Nothing
  , "LaunchType" : Nothing
  , "LoadBalancers" : Nothing
  , "NetworkConfiguration" : Nothing
  , "PlacementConstraints" : Nothing
  , "PlacementStrategies" : Nothing
  , "PlatformVersion" : Nothing
  , "PropagateTags" : Nothing
  , "Role" : Nothing
  , "SchedulingStrategy" : Nothing
  , "ServiceName" : Nothing
  , "ServiceRegistries" : Nothing
  , "Tags" : Nothing
  , "TaskDefinition" : Nothing
  }

-- | `AWS::ECS::Service.ServiceRegistry`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html
-- |
-- | - `ContainerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html#cfn-ecs-service-serviceregistry-containername
-- | - `ContainerPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html#cfn-ecs-service-serviceregistry-containerport
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html#cfn-ecs-service-serviceregistry-port
-- | - `RegistryArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html#cfn-ecs-service-serviceregistry-registryarn
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

-- | `AWS::ECS::Service.NetworkConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-networkconfiguration.html
-- |
-- | - `AwsvpcConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-networkconfiguration.html#cfn-ecs-service-networkconfiguration-awsvpcconfiguration
type NetworkConfiguration =
  { "AwsvpcConfiguration" :: Maybe (Value AwsVpcConfiguration)
  }

networkConfiguration :: NetworkConfiguration
networkConfiguration =
  { "AwsvpcConfiguration" : Nothing
  }

-- | `AWS::ECS::Service.AwsVpcConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html
-- |
-- | - `AssignPublicIp`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-assignpublicip
-- | - `SecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-securitygroups
-- | - `Subnets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-subnets
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

-- | `AWS::ECS::Service.PlacementConstraint`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html
-- |
-- | - `Expression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html#cfn-ecs-service-placementconstraint-expression
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html#cfn-ecs-service-placementconstraint-type
type PlacementConstraint =
  { "Type" :: Value String
  , "Expression" :: Maybe (Value String)
  }

placementConstraint :: { "Type" :: Value String } -> PlacementConstraint
placementConstraint required =
  (merge required
    { "Expression" : Nothing
    })

-- | `AWS::ECS::Service.DeploymentController`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentcontroller.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentcontroller.html#cfn-ecs-service-deploymentcontroller-type
type DeploymentController =
  { "Type" :: Maybe (Value String)
  }

deploymentController :: DeploymentController
deploymentController =
  { "Type" : Nothing
  }

-- | `AWS::ECS::Service.DeploymentConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html
-- |
-- | - `MaximumPercent`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-maximumpercent
-- | - `MinimumHealthyPercent`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-minimumhealthypercent
type DeploymentConfiguration =
  { "MaximumPercent" :: Maybe (Value Int)
  , "MinimumHealthyPercent" :: Maybe (Value Int)
  }

deploymentConfiguration :: DeploymentConfiguration
deploymentConfiguration =
  { "MaximumPercent" : Nothing
  , "MinimumHealthyPercent" : Nothing
  }

-- | `AWS::ECS::Service.PlacementStrategy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementstrategy.html
-- |
-- | - `Field`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementstrategy.html#cfn-ecs-service-placementstrategy-field
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementstrategy.html#cfn-ecs-service-placementstrategy-type
type PlacementStrategy =
  { "Type" :: Value String
  , "Field" :: Maybe (Value String)
  }

placementStrategy :: { "Type" :: Value String } -> PlacementStrategy
placementStrategy required =
  (merge required
    { "Field" : Nothing
    })

-- | `AWS::ECS::Service.LoadBalancer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html
-- |
-- | - `ContainerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-containername
-- | - `ContainerPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-containerport
-- | - `LoadBalancerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-loadbalancername
-- | - `TargetGroupArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-targetgrouparn
type LoadBalancer =
  { "ContainerPort" :: Value Int
  , "ContainerName" :: Maybe (Value String)
  , "LoadBalancerName" :: Maybe (Value String)
  , "TargetGroupArn" :: Maybe (Value String)
  }

loadBalancer :: { "ContainerPort" :: Value Int } -> LoadBalancer
loadBalancer required =
  (merge required
    { "ContainerName" : Nothing
    , "LoadBalancerName" : Nothing
    , "TargetGroupArn" : Nothing
    })