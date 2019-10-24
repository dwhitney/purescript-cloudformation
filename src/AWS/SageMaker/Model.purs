module AWS.SageMaker.Model where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)
import Foreign (Foreign)


type Model =
  { "ExecutionRoleArn" :: String
  , "PrimaryContainer" :: Maybe ContainerDefinition
  , "ModelName" :: Maybe String
  , "VpcConfig" :: Maybe VpcConfig
  , "Containers" :: Maybe (Array ContainerDefinition)
  , "Tags" :: Maybe (Array Tag)
  }

model :: { "ExecutionRoleArn" :: String } -> Model
model required =
  merge required
    { "PrimaryContainer" : Nothing
    , "ModelName" : Nothing
    , "VpcConfig" : Nothing
    , "Containers" : Nothing
    , "Tags" : Nothing
    }

type ContainerDefinition =
  { "Image" :: String
  , "ContainerHostname" :: Maybe String
  , "Environment" :: Maybe Foreign
  , "ModelDataUrl" :: Maybe String
  }

containerDefinition :: { "Image" :: String } -> ContainerDefinition
containerDefinition required =
  merge required
    { "ContainerHostname" : Nothing
    , "Environment" : Nothing
    , "ModelDataUrl" : Nothing
    }

type VpcConfig =
  { "Subnets" :: Array String
  , "SecurityGroupIds" :: Array String
  }

vpcConfig :: { "Subnets" :: Array String, "SecurityGroupIds" :: Array String } -> VpcConfig
vpcConfig required =
  required