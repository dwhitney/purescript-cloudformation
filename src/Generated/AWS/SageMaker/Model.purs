module CloudFormation.AWS.SageMaker.Model where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation (Json) as CF


-- | `AWS::SageMaker::Model`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html
-- |
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
newtype Model = Model
  { "ExecutionRoleArn" :: Value String
  , "PrimaryContainer" :: Maybe (Value ContainerDefinition)
  , "ModelName" :: Maybe (Value String)
  , "VpcConfig" :: Maybe (Value VpcConfig)
  , "Containers" :: Maybe (Value (Array ContainerDefinition))
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeModel :: Newtype Model _
derive newtype instance writeModel :: WriteForeign Model
instance resourceModel :: Resource Model where type_ _ = "AWS::SageMaker::Model"

model :: { "ExecutionRoleArn" :: Value String } -> Model
model required = Model
  (merge required
    { "PrimaryContainer" : Nothing
    , "ModelName" : Nothing
    , "VpcConfig" : Nothing
    , "Containers" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::SageMaker::Model.ContainerDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html
-- |
-- | - `ContainerHostname`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-containerhostname
-- | - `Environment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-environment
-- | - `ModelDataUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-modeldataurl
-- | - `Image`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-image
type ContainerDefinition =
  { "Image" :: Value String
  , "ContainerHostname" :: Maybe (Value String)
  , "Environment" :: Maybe (Value CF.Json)
  , "ModelDataUrl" :: Maybe (Value String)
  }

containerDefinition :: { "Image" :: Value String } -> ContainerDefinition
containerDefinition required =
  (merge required
    { "ContainerHostname" : Nothing
    , "Environment" : Nothing
    , "ModelDataUrl" : Nothing
    })

-- | `AWS::SageMaker::Model.VpcConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html
-- |
-- | - `Subnets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html#cfn-sagemaker-model-vpcconfig-subnets
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html#cfn-sagemaker-model-vpcconfig-securitygroupids
type VpcConfig =
  { "Subnets" :: Value (Array String)
  , "SecurityGroupIds" :: Value (Array String)
  }

vpcConfig :: { "Subnets" :: Value (Array String), "SecurityGroupIds" :: Value (Array String) } -> VpcConfig
vpcConfig required =
  required