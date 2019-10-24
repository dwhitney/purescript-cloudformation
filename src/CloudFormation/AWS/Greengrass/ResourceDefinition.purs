module CloudFormation.AWS.Greengrass.ResourceDefinition where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


-- | `AWS::Greengrass::ResourceDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html
-- |
-- | - `InitialVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html#cfn-greengrass-resourcedefinition-initialversion
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html#cfn-greengrass-resourcedefinition-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html#cfn-greengrass-resourcedefinition-name
type ResourceDefinition =
  { "Name" :: String
  , "InitialVersion" :: Maybe ResourceDefinitionVersion
  , "Tags" :: Maybe Foreign
  }

resourceDefinition :: { "Name" :: String } -> ResourceDefinition
resourceDefinition required =
  merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    }

-- | `AWS::Greengrass::ResourceDefinition.ResourceDataContainer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html
-- |
-- | - `SecretsManagerSecretResourceData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-secretsmanagersecretresourcedata
-- | - `SageMakerMachineLearningModelResourceData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-sagemakermachinelearningmodelresourcedata
-- | - `LocalVolumeResourceData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-localvolumeresourcedata
-- | - `LocalDeviceResourceData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-localdeviceresourcedata
-- | - `S3MachineLearningModelResourceData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedatacontainer.html#cfn-greengrass-resourcedefinition-resourcedatacontainer-s3machinelearningmodelresourcedata
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

-- | `AWS::Greengrass::ResourceDefinition.ResourceInstance`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourceinstance.html
-- |
-- | - `ResourceDataContainer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourceinstance.html#cfn-greengrass-resourcedefinition-resourceinstance-resourcedatacontainer
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourceinstance.html#cfn-greengrass-resourcedefinition-resourceinstance-id
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourceinstance.html#cfn-greengrass-resourcedefinition-resourceinstance-name
type ResourceInstance =
  { "ResourceDataContainer" :: ResourceDataContainer
  , "Id" :: String
  , "Name" :: String
  }

resourceInstance :: { "ResourceDataContainer" :: ResourceDataContainer, "Id" :: String, "Name" :: String } -> ResourceInstance
resourceInstance required =
  required

-- | `AWS::Greengrass::ResourceDefinition.LocalVolumeResourceData`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html
-- |
-- | - `SourcePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html#cfn-greengrass-resourcedefinition-localvolumeresourcedata-sourcepath
-- | - `DestinationPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html#cfn-greengrass-resourcedefinition-localvolumeresourcedata-destinationpath
-- | - `GroupOwnerSetting`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localvolumeresourcedata.html#cfn-greengrass-resourcedefinition-localvolumeresourcedata-groupownersetting
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

-- | `AWS::Greengrass::ResourceDefinition.ResourceDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedefinitionversion.html
-- |
-- | - `Resources`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedefinitionversion.html#cfn-greengrass-resourcedefinition-resourcedefinitionversion-resources
type ResourceDefinitionVersion =
  { "Resources" :: Array ResourceInstance
  }

resourceDefinitionVersion :: { "Resources" :: Array ResourceInstance } -> ResourceDefinitionVersion
resourceDefinitionVersion required =
  required

-- | `AWS::Greengrass::ResourceDefinition.LocalDeviceResourceData`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html
-- |
-- | - `SourcePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html#cfn-greengrass-resourcedefinition-localdeviceresourcedata-sourcepath
-- | - `GroupOwnerSetting`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-localdeviceresourcedata.html#cfn-greengrass-resourcedefinition-localdeviceresourcedata-groupownersetting
type LocalDeviceResourceData =
  { "SourcePath" :: String
  , "GroupOwnerSetting" :: Maybe GroupOwnerSetting
  }

localDeviceResourceData :: { "SourcePath" :: String } -> LocalDeviceResourceData
localDeviceResourceData required =
  merge required
    { "GroupOwnerSetting" : Nothing
    }

-- | `AWS::Greengrass::ResourceDefinition.GroupOwnerSetting`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html
-- |
-- | - `AutoAddGroupOwner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html#cfn-greengrass-resourcedefinition-groupownersetting-autoaddgroupowner
-- | - `GroupOwner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html#cfn-greengrass-resourcedefinition-groupownersetting-groupowner
type GroupOwnerSetting =
  { "AutoAddGroupOwner" :: Boolean
  , "GroupOwner" :: Maybe String
  }

groupOwnerSetting :: { "AutoAddGroupOwner" :: Boolean } -> GroupOwnerSetting
groupOwnerSetting required =
  merge required
    { "GroupOwner" : Nothing
    }

-- | `AWS::Greengrass::ResourceDefinition.SecretsManagerSecretResourceData`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-secretsmanagersecretresourcedata.html
-- |
-- | - `ARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinition-secretsmanagersecretresourcedata-arn
-- | - `AdditionalStagingLabelsToDownload`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinition-secretsmanagersecretresourcedata-additionalstaginglabelstodownload
type SecretsManagerSecretResourceData =
  { "ARN" :: String
  , "AdditionalStagingLabelsToDownload" :: Maybe (Array String)
  }

secretsManagerSecretResourceData :: { "ARN" :: String } -> SecretsManagerSecretResourceData
secretsManagerSecretResourceData required =
  merge required
    { "AdditionalStagingLabelsToDownload" : Nothing
    }

-- | `AWS::Greengrass::ResourceDefinition.S3MachineLearningModelResourceData`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-s3machinelearningmodelresourcedata.html
-- |
-- | - `DestinationPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-s3machinelearningmodelresourcedata-destinationpath
-- | - `S3Uri`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-s3machinelearningmodelresourcedata-s3uri
type S3MachineLearningModelResourceData =
  { "DestinationPath" :: String
  , "S3Uri" :: String
  }

s3MachineLearningModelResourceData :: { "DestinationPath" :: String, "S3Uri" :: String } -> S3MachineLearningModelResourceData
s3MachineLearningModelResourceData required =
  required

-- | `AWS::Greengrass::ResourceDefinition.SageMakerMachineLearningModelResourceData`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html
-- |
-- | - `DestinationPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-destinationpath
-- | - `SageMakerJobArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-sagemakermachinelearningmodelresourcedata-sagemakerjobarn
type SageMakerMachineLearningModelResourceData =
  { "DestinationPath" :: String
  , "SageMakerJobArn" :: String
  }

sageMakerMachineLearningModelResourceData :: { "DestinationPath" :: String, "SageMakerJobArn" :: String } -> SageMakerMachineLearningModelResourceData
sageMakerMachineLearningModelResourceData required =
  required