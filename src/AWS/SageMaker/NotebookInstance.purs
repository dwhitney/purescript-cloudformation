module AWS.SageMaker.NotebookInstance where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


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