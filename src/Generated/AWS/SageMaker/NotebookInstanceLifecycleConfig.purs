module CloudFormation.AWS.SageMaker.NotebookInstanceLifecycleConfig where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::SageMaker::NotebookInstanceLifecycleConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstancelifecycleconfig.html
-- |
-- | - `OnStart`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstancelifecycleconfig.html#cfn-sagemaker-notebookinstancelifecycleconfig-onstart
-- | - `NotebookInstanceLifecycleConfigName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstancelifecycleconfig.html#cfn-sagemaker-notebookinstancelifecycleconfig-notebookinstancelifecycleconfigname
-- | - `OnCreate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstancelifecycleconfig.html#cfn-sagemaker-notebookinstancelifecycleconfig-oncreate
newtype NotebookInstanceLifecycleConfig = NotebookInstanceLifecycleConfig
  { "OnStart" :: Maybe (Array NotebookInstanceLifecycleHook)
  , "NotebookInstanceLifecycleConfigName" :: Maybe String
  , "OnCreate" :: Maybe (Array NotebookInstanceLifecycleHook)
  }

derive instance newtypeNotebookInstanceLifecycleConfig :: Newtype NotebookInstanceLifecycleConfig _
instance resourceNotebookInstanceLifecycleConfig :: Resource NotebookInstanceLifecycleConfig where type_ _ = "AWS::SageMaker::NotebookInstanceLifecycleConfig"

notebookInstanceLifecycleConfig :: NotebookInstanceLifecycleConfig
notebookInstanceLifecycleConfig = NotebookInstanceLifecycleConfig
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