module CloudFormation.AWS.Greengrass.ResourceDefinitionVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Greengrass::ResourceDefinitionVersion`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinitionversion.html-- |
-- | - `Resources`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinitionversion.html#cfn-greengrass-resourcedefinitionversion-resources
-- | - `ResourceDefinitionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinitionversion.html#cfn-greengrass-resourcedefinitionversion-resourcedefinitionid
type ResourceDefinitionVersion =
  { "Resources" :: Array ResourceInstance
  , "ResourceDefinitionId" :: String
  }

resourceDefinitionVersion :: { "Resources" :: Array ResourceInstance, "ResourceDefinitionId" :: String } -> ResourceDefinitionVersion
resourceDefinitionVersion required =
  required

-- | `AWS::Greengrass::ResourceDefinitionVersion.SecretsManagerSecretResourceData`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata.html-- |
-- | - `ARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata-arn
-- | - `AdditionalStagingLabelsToDownload`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata-additionalstaginglabelstodownload
type SecretsManagerSecretResourceData =
  { "ARN" :: String
  , "AdditionalStagingLabelsToDownload" :: Maybe (Array String)
  }

secretsManagerSecretResourceData :: { "ARN" :: String } -> SecretsManagerSecretResourceData
secretsManagerSecretResourceData required =
  merge required
    { "AdditionalStagingLabelsToDownload" : Nothing
    }

-- | `AWS::Greengrass::ResourceDefinitionVersion.GroupOwnerSetting`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-groupownersetting.html-- |
-- | - `AutoAddGroupOwner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-groupownersetting.html#cfn-greengrass-resourcedefinitionversion-groupownersetting-autoaddgroupowner
-- | - `GroupOwner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-groupownersetting.html#cfn-greengrass-resourcedefinitionversion-groupownersetting-groupowner
type GroupOwnerSetting =
  { "AutoAddGroupOwner" :: Boolean
  , "GroupOwner" :: Maybe String
  }

groupOwnerSetting :: { "AutoAddGroupOwner" :: Boolean } -> GroupOwnerSetting
groupOwnerSetting required =
  merge required
    { "GroupOwner" : Nothing
    }

-- | `AWS::Greengrass::ResourceDefinitionVersion.ResourceDataContainer`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html-- |
-- | - `SecretsManagerSecretResourceData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html#cfn-greengrass-resourcedefinitionversion-resourcedatacontainer-secretsmanagersecretresourcedata
-- | - `SageMakerMachineLearningModelResourceData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html#cfn-greengrass-resourcedefinitionversion-resourcedatacontainer-sagemakermachinelearningmodelresourcedata
-- | - `LocalVolumeResourceData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html#cfn-greengrass-resourcedefinitionversion-resourcedatacontainer-localvolumeresourcedata
-- | - `LocalDeviceResourceData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html#cfn-greengrass-resourcedefinitionversion-resourcedatacontainer-localdeviceresourcedata
-- | - `S3MachineLearningModelResourceData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html#cfn-greengrass-resourcedefinitionversion-resourcedatacontainer-s3machinelearningmodelresourcedata
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

-- | `AWS::Greengrass::ResourceDefinitionVersion.LocalVolumeResourceData`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html-- |
-- | - `SourcePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html#cfn-greengrass-resourcedefinitionversion-localvolumeresourcedata-sourcepath
-- | - `DestinationPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html#cfn-greengrass-resourcedefinitionversion-localvolumeresourcedata-destinationpath
-- | - `GroupOwnerSetting`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html#cfn-greengrass-resourcedefinitionversion-localvolumeresourcedata-groupownersetting
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

-- | `AWS::Greengrass::ResourceDefinitionVersion.S3MachineLearningModelResourceData`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html-- |
-- | - `DestinationPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-destinationpath
-- | - `S3Uri`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-s3uri
type S3MachineLearningModelResourceData =
  { "DestinationPath" :: String
  , "S3Uri" :: String
  }

s3MachineLearningModelResourceData :: { "DestinationPath" :: String, "S3Uri" :: String } -> S3MachineLearningModelResourceData
s3MachineLearningModelResourceData required =
  required

-- | `AWS::Greengrass::ResourceDefinitionVersion.LocalDeviceResourceData`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html-- |
-- | - `SourcePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html#cfn-greengrass-resourcedefinitionversion-localdeviceresourcedata-sourcepath
-- | - `GroupOwnerSetting`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html#cfn-greengrass-resourcedefinitionversion-localdeviceresourcedata-groupownersetting
type LocalDeviceResourceData =
  { "SourcePath" :: String
  , "GroupOwnerSetting" :: Maybe GroupOwnerSetting
  }

localDeviceResourceData :: { "SourcePath" :: String } -> LocalDeviceResourceData
localDeviceResourceData required =
  merge required
    { "GroupOwnerSetting" : Nothing
    }

-- | `AWS::Greengrass::ResourceDefinitionVersion.SageMakerMachineLearningModelResourceData`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata.html-- |
-- | - `DestinationPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata-destinationpath
-- | - `SageMakerJobArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata-sagemakerjobarn
type SageMakerMachineLearningModelResourceData =
  { "DestinationPath" :: String
  , "SageMakerJobArn" :: String
  }

sageMakerMachineLearningModelResourceData :: { "DestinationPath" :: String, "SageMakerJobArn" :: String } -> SageMakerMachineLearningModelResourceData
sageMakerMachineLearningModelResourceData required =
  required

-- | `AWS::Greengrass::ResourceDefinitionVersion.ResourceInstance`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html-- |
-- | - `ResourceDataContainer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-resourcedatacontainer
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-id
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-name
type ResourceInstance =
  { "ResourceDataContainer" :: ResourceDataContainer
  , "Id" :: String
  , "Name" :: String
  }

resourceInstance :: { "ResourceDataContainer" :: ResourceDataContainer, "Id" :: String, "Name" :: String } -> ResourceInstance
resourceInstance required =
  required