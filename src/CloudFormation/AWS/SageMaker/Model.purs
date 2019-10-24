module CloudFormation.AWS.SageMaker.Model where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import Foreign (Foreign)


-- | `AWS::SageMaker::Model`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html-- |
-- | - `ExecutionRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-executionrolearn
-- | - `PrimaryContainer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-primarycontainer
-- | - `ModelName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-modelname
-- | - `VpcConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-vpcconfig
-- | - `Containers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-containers
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-tags
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

-- | `AWS::SageMaker::Model.ContainerDefinition`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html-- |
-- | - `ContainerHostname`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-containerhostname
-- | - `Environment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-environment
-- | - `ModelDataUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-modeldataurl
-- | - `Image`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-image
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

-- | `AWS::SageMaker::Model.VpcConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html-- |
-- | - `Subnets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html#cfn-sagemaker-model-vpcconfig-subnets
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html#cfn-sagemaker-model-vpcconfig-securitygroupids
type VpcConfig =
  { "Subnets" :: Array String
  , "SecurityGroupIds" :: Array String
  }

vpcConfig :: { "Subnets" :: Array String, "SecurityGroupIds" :: Array String } -> VpcConfig
vpcConfig required =
  required