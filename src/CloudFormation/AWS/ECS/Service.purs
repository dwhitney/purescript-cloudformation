module CloudFormation.AWS.ECS.Service where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


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

type NetworkConfiguration =
  { "AwsvpcConfiguration" :: Maybe AwsVpcConfiguration
  }

networkConfiguration :: NetworkConfiguration
networkConfiguration =
  { "AwsvpcConfiguration" : Nothing
  }

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

type PlacementConstraint =
  { "Type" :: String
  , "Expression" :: Maybe String
  }

placementConstraint :: { "Type" :: String } -> PlacementConstraint
placementConstraint required =
  merge required
    { "Expression" : Nothing
    }

type DeploymentConfiguration =
  { "MaximumPercent" :: Maybe Int
  , "MinimumHealthyPercent" :: Maybe Int
  }

deploymentConfiguration :: DeploymentConfiguration
deploymentConfiguration =
  { "MaximumPercent" : Nothing
  , "MinimumHealthyPercent" : Nothing
  }

type PlacementStrategy =
  { "Type" :: String
  , "Field" :: Maybe String
  }

placementStrategy :: { "Type" :: String } -> PlacementStrategy
placementStrategy required =
  merge required
    { "Field" : Nothing
    }

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