module CloudFormation.AWS.Greengrass.ResourceDefinitionVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ResourceDefinitionVersion =
  { "Resources" :: Array ResourceInstance
  , "ResourceDefinitionId" :: String
  }

resourceDefinitionVersion :: { "Resources" :: Array ResourceInstance, "ResourceDefinitionId" :: String } -> ResourceDefinitionVersion
resourceDefinitionVersion required =
  required

type SecretsManagerSecretResourceData =
  { "ARN" :: String
  , "AdditionalStagingLabelsToDownload" :: Maybe (Array String)
  }

secretsManagerSecretResourceData :: { "ARN" :: String } -> SecretsManagerSecretResourceData
secretsManagerSecretResourceData required =
  merge required
    { "AdditionalStagingLabelsToDownload" : Nothing
    }

type GroupOwnerSetting =
  { "AutoAddGroupOwner" :: Boolean
  , "GroupOwner" :: Maybe String
  }

groupOwnerSetting :: { "AutoAddGroupOwner" :: Boolean } -> GroupOwnerSetting
groupOwnerSetting required =
  merge required
    { "GroupOwner" : Nothing
    }

type ResourceDataContainer =
  { "SecretsManagerSecretResourceData" :: Maybe SecretsManagerSecretResourceData
  , "SageMakerMachineLearningModelResourceData" :: Maybe SageMakerMachineLearningModelResourceData
  , "LocalVolumeResourceData" :: Maybe LocalVolumeResourceData
  , "LocalDeviceResourceData" :: Maybe LocalDeviceResourceData
  , "S3MachineLearningModelResourceData" :: Maybe S3MachineLearningModelResourceData
  }

resourceDataContainer :: ResourceDataContainer
resourceDataContainer =
  { "SecretsManagerSecretResourceData" : Nothing
  , "SageMakerMachineLearningModelResourceData" : Nothing
  , "LocalVolumeResourceData" : Nothing
  , "LocalDeviceResourceData" : Nothing
  , "S3MachineLearningModelResourceData" : Nothing
  }

type LocalVolumeResourceData =
  { "SourcePath" :: String
  , "DestinationPath" :: String
  , "GroupOwnerSetting" :: Maybe GroupOwnerSetting
  }

localVolumeResourceData :: { "SourcePath" :: String, "DestinationPath" :: String } -> LocalVolumeResourceData
localVolumeResourceData required =
  merge required
    { "GroupOwnerSetting" : Nothing
    }

type S3MachineLearningModelResourceData =
  { "DestinationPath" :: String
  , "S3Uri" :: String
  }

s3MachineLearningModelResourceData :: { "DestinationPath" :: String, "S3Uri" :: String } -> S3MachineLearningModelResourceData
s3MachineLearningModelResourceData required =
  required

type LocalDeviceResourceData =
  { "SourcePath" :: String
  , "GroupOwnerSetting" :: Maybe GroupOwnerSetting
  }

localDeviceResourceData :: { "SourcePath" :: String } -> LocalDeviceResourceData
localDeviceResourceData required =
  merge required
    { "GroupOwnerSetting" : Nothing
    }

type SageMakerMachineLearningModelResourceData =
  { "DestinationPath" :: String
  , "SageMakerJobArn" :: String
  }

sageMakerMachineLearningModelResourceData :: { "DestinationPath" :: String, "SageMakerJobArn" :: String } -> SageMakerMachineLearningModelResourceData
sageMakerMachineLearningModelResourceData required =
  required

type ResourceInstance =
  { "ResourceDataContainer" :: ResourceDataContainer
  , "Id" :: String
  , "Name" :: String
  }

resourceInstance :: { "ResourceDataContainer" :: ResourceDataContainer, "Id" :: String, "Name" :: String } -> ResourceInstance
resourceInstance required =
  required