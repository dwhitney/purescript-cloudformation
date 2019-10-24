module CloudFormation.AWS.SageMaker.NotebookInstance where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


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
type NotebookInstance =
  { "RoleArn" :: String
  , "InstanceType" :: String
  , "KmsKeyId" :: Maybe String
  , "VolumeSizeInGB" :: Maybe Int
  , "AdditionalCodeRepositories" :: Maybe (Array String)
  , "DefaultCodeRepository" :: Maybe String
  , "DirectInternetAccess" :: Maybe String
  , "AcceleratorTypes" :: Maybe (Array String)
  , "SubnetId" :: Maybe String
  , "SecurityGroupIds" :: Maybe (Array String)
  , "RootAccess" :: Maybe String
  , "NotebookInstanceName" :: Maybe String
  , "LifecycleConfigName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

notebookInstance :: { "RoleArn" :: String, "InstanceType" :: String } -> NotebookInstance
notebookInstance required =
  merge required
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
    }