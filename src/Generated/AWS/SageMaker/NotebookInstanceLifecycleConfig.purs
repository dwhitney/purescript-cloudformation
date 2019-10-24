module CloudFormation.AWS.SageMaker.NotebookInstanceLifecycleConfig where 

import Data.Maybe (Maybe(..))


-- | `AWS::SageMaker::NotebookInstanceLifecycleConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstancelifecycleconfig.html
-- |
-- | - `OnStart`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstancelifecycleconfig.html#cfn-sagemaker-notebookinstancelifecycleconfig-onstart
-- | - `NotebookInstanceLifecycleConfigName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstancelifecycleconfig.html#cfn-sagemaker-notebookinstancelifecycleconfig-notebookinstancelifecycleconfigname
-- | - `OnCreate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstancelifecycleconfig.html#cfn-sagemaker-notebookinstancelifecycleconfig-oncreate
type NotebookInstanceLifecycleConfig =
  { "OnStart" :: Maybe (Array NotebookInstanceLifecycleHook)
  , "NotebookInstanceLifecycleConfigName" :: Maybe String
  , "OnCreate" :: Maybe (Array NotebookInstanceLifecycleHook)
  }

notebookInstanceLifecycleConfig :: NotebookInstanceLifecycleConfig
notebookInstanceLifecycleConfig =
  { "OnStart" : Nothing
  , "NotebookInstanceLifecycleConfigName" : Nothing
  , "OnCreate" : Nothing
  }

-- | `AWS::SageMaker::NotebookInstanceLifecycleConfig.NotebookInstanceLifecycleHook`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-notebookinstancelifecycleconfig-notebookinstancelifecyclehook.html
-- |
-- | - `Content`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-notebookinstancelifecycleconfig-notebookinstancelifecyclehook.html#cfn-sagemaker-notebookinstancelifecycleconfig-notebookinstancelifecyclehook-content
type NotebookInstanceLifecycleHook =
  { "Content" :: Maybe String
  }

notebookInstanceLifecycleHook :: NotebookInstanceLifecycleHook
notebookInstanceLifecycleHook =
  { "Content" : Nothing
  }