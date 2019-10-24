module CloudFormation.AWS.ECS.Service where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::ECS::Service`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html-- |
-- | - `Cluster`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-cluster
-- | - `DeploymentConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-deploymentconfiguration
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
type Service =
  { "TaskDefinition" :: String
  , "Cluster" :: Maybe String
  , "DeploymentConfiguration" :: Maybe DeploymentConfiguration
  , "DesiredCount" :: Maybe Int
  , "EnableECSManagedTags" :: Maybe Boolean
  , "HealthCheckGracePeriodSeconds" :: Maybe Int
  , "LaunchType" :: Maybe String
  , "LoadBalancers" :: Maybe (Array LoadBalancer)
  , "NetworkConfiguration" :: Maybe NetworkConfiguration
  , "PlacementConstraints" :: Maybe (Array PlacementConstraint)
  , "PlacementStrategies" :: Maybe (Array PlacementStrategy)
  , "PlatformVersion" :: Maybe String
  , "PropagateTags" :: Maybe String
  , "Role" :: Maybe String
  , "SchedulingStrategy" :: Maybe String
  , "ServiceName" :: Maybe String
  , "ServiceRegistries" :: Maybe (Array ServiceRegistry)
  , "Tags" :: Maybe (Array Tag)
  }

service :: { "TaskDefinition" :: String } -> Service
service required =
  merge required
    { "Cluster" : Nothing
    , "DeploymentConfiguration" : Nothing
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
    }

-- | `AWS::ECS::Service.ServiceRegistry`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html-- |
-- | - `ContainerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html#cfn-ecs-service-serviceregistry-containername
-- | - `ContainerPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html#cfn-ecs-service-serviceregistry-containerport
-- | - `Port`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html#cfn-ecs-service-serviceregistry-port
-- | - `RegistryArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-serviceregistry.html#cfn-ecs-service-serviceregistry-registryarn
type ServiceRegistry =
  { "ContainerName" :: Maybe String
  , "ContainerPort" :: Maybe Int
  , "Port" :: Maybe Int
  , "RegistryArn" :: Maybe String
  }

serviceRegistry :: ServiceRegistry
serviceRegistry =
  { "ContainerName" : Nothing
  , "ContainerPort" : Nothing
  , "Port" : Nothing
  , "RegistryArn" : Nothing
  }

-- | `AWS::ECS::Service.NetworkConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-networkconfiguration.html-- |
-- | - `AwsvpcConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-networkconfiguration.html#cfn-ecs-service-networkconfiguration-awsvpcconfiguration
type NetworkConfiguration =
  { "AwsvpcConfiguration" :: Maybe AwsVpcConfiguration
  }

networkConfiguration :: NetworkConfiguration
networkConfiguration =
  { "AwsvpcConfiguration" : Nothing
  }

-- | `AWS::ECS::Service.AwsVpcConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html-- |
-- | - `AssignPublicIp`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-assignpublicip
-- | - `SecurityGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-securitygroups
-- | - `Subnets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-awsvpcconfiguration.html#cfn-ecs-service-awsvpcconfiguration-subnets
type AwsVpcConfiguration =
  { "Subnets" :: Array String
  , "AssignPublicIp" :: Maybe String
  , "SecurityGroups" :: Maybe (Array String)
  }

awsVpcConfiguration :: { "Subnets" :: Array String } -> AwsVpcConfiguration
awsVpcConfiguration required =
  merge required
    { "AssignPublicIp" : Nothing
    , "SecurityGroups" : Nothing
    }

-- | `AWS::ECS::Service.PlacementConstraint`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html-- |
-- | - `Expression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html#cfn-ecs-service-placementconstraint-expression
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementconstraint.html#cfn-ecs-service-placementconstraint-type
type PlacementConstraint =
  { "Type" :: String
  , "Expression" :: Maybe String
  }

placementConstraint :: { "Type" :: String } -> PlacementConstraint
placementConstraint required =
  merge required
    { "Expression" : Nothing
    }

-- | `AWS::ECS::Service.DeploymentConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html-- |
-- | - `MaximumPercent`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-maximumpercent
-- | - `MinimumHealthyPercent`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-minimumhealthypercent
type DeploymentConfiguration =
  { "MaximumPercent" :: Maybe Int
  , "MinimumHealthyPercent" :: Maybe Int
  }

deploymentConfiguration :: DeploymentConfiguration
deploymentConfiguration =
  { "MaximumPercent" : Nothing
  , "MinimumHealthyPercent" : Nothing
  }

-- | `AWS::ECS::Service.PlacementStrategy`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementstrategy.html-- |
-- | - `Field`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementstrategy.html#cfn-ecs-service-placementstrategy-field
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-placementstrategy.html#cfn-ecs-service-placementstrategy-type
type PlacementStrategy =
  { "Type" :: String
  , "Field" :: Maybe String
  }

placementStrategy :: { "Type" :: String } -> PlacementStrategy
placementStrategy required =
  merge required
    { "Field" : Nothing
    }

-- | `AWS::ECS::Service.LoadBalancer`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html-- |
-- | - `ContainerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-containername
-- | - `ContainerPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-containerport
-- | - `LoadBalancerName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-loadbalancername
-- | - `TargetGroupArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-loadbalancers.html#cfn-ecs-service-loadbalancers-targetgrouparn
type LoadBalancer =
  { "ContainerPort" :: Int
  , "ContainerName" :: Maybe String
  , "LoadBalancerName" :: Maybe String
  , "TargetGroupArn" :: Maybe String
  }

loadBalancer :: { "ContainerPort" :: Int } -> LoadBalancer
loadBalancer required =
  merge required
    { "ContainerName" : Nothing
    , "LoadBalancerName" : Nothing
    , "TargetGroupArn" : Nothing
    }