module CloudFormation.AWS.SageMaker.NotebookInstance where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::SageMaker::NotebookInstance`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html
-- |
-- | - `KmsKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-kmskeyid
-- | - `VolumeSizeInGB`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-volumesizeingb
-- | - `AdditionalCodeRepositories`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-additionalcoderepositories
-- | - `DefaultCodeRepository`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-defaultcoderepository
-- | - `DirectInternetAccess`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-directinternetaccess
-- | - `AcceleratorTypes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-acceleratortypes
-- | - `SubnetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-subnetid
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-securitygroupids
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-rolearn
-- | - `RootAccess`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-rootaccess
-- | - `NotebookInstanceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-notebookinstancename
-- | - `InstanceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-instancetype
-- | - `LifecycleConfigName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-lifecycleconfigname
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-notebookinstance.html#cfn-sagemaker-notebookinstance-tags
newtype NotebookInstance = NotebookInstance
  { "RoleArn" :: Value String
  , "InstanceType" :: Value String
  , "KmsKeyId" :: Maybe (Value String)
  , "VolumeSizeInGB" :: Maybe (Value Int)
  , "AdditionalCodeRepositories" :: Maybe (Value (Array String))
  , "DefaultCodeRepository" :: Maybe (Value String)
  , "DirectInternetAccess" :: Maybe (Value String)
  , "AcceleratorTypes" :: Maybe (Value (Array String))
  , "SubnetId" :: Maybe (Value String)
  , "SecurityGroupIds" :: Maybe (Value (Array String))
  , "RootAccess" :: Maybe (Value String)
  , "NotebookInstanceName" :: Maybe (Value String)
  , "LifecycleConfigName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeNotebookInstance :: Newtype NotebookInstance _
derive newtype instance writeNotebookInstance :: WriteForeign NotebookInstance
instance resourceNotebookInstance :: Resource NotebookInstance where type_ _ = "AWS::SageMaker::NotebookInstance"

notebookInstance :: { "RoleArn" :: Value String, "InstanceType" :: Value String } -> NotebookInstance
notebookInstance required = NotebookInstance
  (merge required
    { "KmsKeyId" : Nothing
    , "VolumeSizeInGB" : Nothing
    , "AdditionalCodeRepositories" : Nothing
    , "DefaultCodeRepository" : Nothing
    , "DirectInternetAccess" : Nothing
    , "AcceleratorTypes" : Nothing
    , "SubnetId" : Nothing
    , "SecurityGroupIds" : Nothing
    , "RootAccess" : Nothing
    , "NotebookInstanceName" : Nothing
    , "LifecycleConfigName" : Nothing
    , "Tags" : Nothing
    })