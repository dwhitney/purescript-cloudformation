module CloudFormation.AWS.Greengrass.ResourceDefinitionVersion where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Greengrass::ResourceDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinitionversion.html
-- |
-- | - `Resources`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinitionversion.html#cfn-greengrass-resourcedefinitionversion-resources
-- | - `ResourceDefinitionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinitionversion.html#cfn-greengrass-resourcedefinitionversion-resourcedefinitionid
newtype ResourceDefinitionVersion = ResourceDefinitionVersion
  { "Resources" :: Value (Array ResourceInstance)
  , "ResourceDefinitionId" :: Value String
  }

derive instance newtypeResourceDefinitionVersion :: Newtype ResourceDefinitionVersion _
derive newtype instance writeResourceDefinitionVersion :: WriteForeign ResourceDefinitionVersion
instance resourceResourceDefinitionVersion :: Resource ResourceDefinitionVersion where type_ _ = "AWS::Greengrass::ResourceDefinitionVersion"

resourceDefinitionVersion :: { "Resources" :: Value (Array ResourceInstance), "ResourceDefinitionId" :: Value String } -> ResourceDefinitionVersion
resourceDefinitionVersion required = ResourceDefinitionVersion
  required

-- | `AWS::Greengrass::ResourceDefinitionVersion.SecretsManagerSecretResourceData`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata.html
-- |
-- | - `ARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata-arn
-- | - `AdditionalStagingLabelsToDownload`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinitionversion-secretsmanagersecretresourcedata-additionalstaginglabelstodownload
type SecretsManagerSecretResourceData =
  { "ARN" :: Value String
  , "AdditionalStagingLabelsToDownload" :: Maybe (Value (Array String))
  }

secretsManagerSecretResourceData :: { "ARN" :: Value String } -> SecretsManagerSecretResourceData
secretsManagerSecretResourceData required =
  (merge required
    { "AdditionalStagingLabelsToDownload" : Nothing
    })

-- | `AWS::Greengrass::ResourceDefinitionVersion.GroupOwnerSetting`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-groupownersetting.html
-- |
-- | - `AutoAddGroupOwner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-groupownersetting.html#cfn-greengrass-resourcedefinitionversion-groupownersetting-autoaddgroupowner
-- | - `GroupOwner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-groupownersetting.html#cfn-greengrass-resourcedefinitionversion-groupownersetting-groupowner
type GroupOwnerSetting =
  { "AutoAddGroupOwner" :: Value Boolean
  , "GroupOwner" :: Maybe (Value String)
  }

groupOwnerSetting :: { "AutoAddGroupOwner" :: Value Boolean } -> GroupOwnerSetting
groupOwnerSetting required =
  (merge required
    { "GroupOwner" : Nothing
    })

-- | `AWS::Greengrass::ResourceDefinitionVersion.ResourceDataContainer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourcedatacontainer.html
-- |
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
  { "SecretsManagerSecretResourceData" :: Maybe (Value SecretsManagerSecretResourceData)
  , "SageMakerMachineLearningModelResourceData" :: Maybe (Value SageMakerMachineLearningModelResourceData)
  , "LocalVolumeResourceData" :: Maybe (Value LocalVolumeResourceData)
  , "LocalDeviceResourceData" :: Maybe (Value LocalDeviceResourceData)
  , "S3MachineLearningModelResourceData" :: Maybe (Value S3MachineLearningModelResourceData)
  }

resourceDataContainer :: ResourceDataContainer
resourceDataContainer =
  { "SecretsManagerSecretResourceData" : Nothing
  , "SageMakerMachineLearningModelResourceData" : Nothing
  , "LocalVolumeResourceData" : Nothing
  , "LocalDeviceResourceData" : Nothing
  , "S3MachineLearningModelResourceData" : Nothing
  }

-- | `AWS::Greengrass::ResourceDefinitionVersion.LocalVolumeResourceData`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html
-- |
-- | - `SourcePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html#cfn-greengrass-resourcedefinitionversion-localvolumeresourcedata-sourcepath
-- | - `DestinationPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html#cfn-greengrass-resourcedefinitionversion-localvolumeresourcedata-destinationpath
-- | - `GroupOwnerSetting`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localvolumeresourcedata.html#cfn-greengrass-resourcedefinitionversion-localvolumeresourcedata-groupownersetting
type LocalVolumeResourceData =
  { "SourcePath" :: Value String
  , "DestinationPath" :: Value String
  , "GroupOwnerSetting" :: Maybe (Value GroupOwnerSetting)
  }

localVolumeResourceData :: { "SourcePath" :: Value String, "DestinationPath" :: Value String } -> LocalVolumeResourceData
localVolumeResourceData required =
  (merge required
    { "GroupOwnerSetting" : Nothing
    })

-- | `AWS::Greengrass::ResourceDefinitionVersion.S3MachineLearningModelResourceData`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html
-- |
-- | - `DestinationPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-destinationpath
-- | - `S3Uri`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-s3machinelearningmodelresourcedata-s3uri
type S3MachineLearningModelResourceData =
  { "DestinationPath" :: Value String
  , "S3Uri" :: Value String
  }

s3MachineLearningModelResourceData :: { "DestinationPath" :: Value String, "S3Uri" :: Value String } -> S3MachineLearningModelResourceData
s3MachineLearningModelResourceData required =
  required

-- | `AWS::Greengrass::ResourceDefinitionVersion.LocalDeviceResourceData`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html
-- |
-- | - `SourcePath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html#cfn-greengrass-resourcedefinitionversion-localdeviceresourcedata-sourcepath
-- | - `GroupOwnerSetting`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-localdeviceresourcedata.html#cfn-greengrass-resourcedefinitionversion-localdeviceresourcedata-groupownersetting
type LocalDeviceResourceData =
  { "SourcePath" :: Value String
  , "GroupOwnerSetting" :: Maybe (Value GroupOwnerSetting)
  }

localDeviceResourceData :: { "SourcePath" :: Value String } -> LocalDeviceResourceData
localDeviceResourceData required =
  (merge required
    { "GroupOwnerSetting" : Nothing
    })

-- | `AWS::Greengrass::ResourceDefinitionVersion.SageMakerMachineLearningModelResourceData`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata.html
-- |
-- | - `DestinationPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata-destinationpath
-- | - `SageMakerJobArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinitionversion-sagemakermachinelearningmodelresourcedata-sagemakerjobarn
type SageMakerMachineLearningModelResourceData =
  { "DestinationPath" :: Value String
  , "SageMakerJobArn" :: Value String
  }

sageMakerMachineLearningModelResourceData :: { "DestinationPath" :: Value String, "SageMakerJobArn" :: Value String } -> SageMakerMachineLearningModelResourceData
sageMakerMachineLearningModelResourceData required =
  required

-- | `AWS::Greengrass::ResourceDefinitionVersion.ResourceInstance`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html
-- |
-- | - `ResourceDataContainer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-resourcedatacontainer
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-id
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinitionversion-resourceinstance.html#cfn-greengrass-resourcedefinitionversion-resourceinstance-name
type ResourceInstance =
  { "ResourceDataContainer" :: Value ResourceDataContainer
  , "Id" :: Value String
  , "Name" :: Value String
  }

resourceInstance :: { "ResourceDataContainer" :: Value ResourceDataContainer, "Id" :: Value String, "Name" :: Value String } -> ResourceInstance
resourceInstance required =
  required