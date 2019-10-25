module CloudFormation.AWS.Greengrass.ResourceDefinition where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Greengrass::ResourceDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html
-- |
-- | - `InitialVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html#cfn-greengrass-resourcedefinition-initialversion
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html#cfn-greengrass-resourcedefinition-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-resourcedefinition.html#cfn-greengrass-resourcedefinition-name
newtype ResourceDefinition = ResourceDefinition
  { "Name" :: Value String
  , "InitialVersion" :: Maybe (Value ResourceDefinitionVersion)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeResourceDefinition :: Newtype ResourceDefinition _
derive newtype instance writeResourceDefinition :: WriteForeign ResourceDefinition
instance resourceResourceDefinition :: Resource ResourceDefinition where type_ _ = "AWS::Greengrass::ResourceDefinition"

resourceDefinition :: { "Name" :: Value String } -> ResourceDefinition
resourceDefinition required = ResourceDefinition
  (merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    })

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
  { "ResourceDataContainer" :: Value ResourceDataContainer
  , "Id" :: Value String
  , "Name" :: Value String
  }

resourceInstance :: { "ResourceDataContainer" :: Value ResourceDataContainer, "Id" :: Value String, "Name" :: Value String } -> ResourceInstance
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
  { "SourcePath" :: Value String
  , "DestinationPath" :: Value String
  , "GroupOwnerSetting" :: Maybe (Value GroupOwnerSetting)
  }

localVolumeResourceData :: { "SourcePath" :: Value String, "DestinationPath" :: Value String } -> LocalVolumeResourceData
localVolumeResourceData required =
  (merge required
    { "GroupOwnerSetting" : Nothing
    })

-- | `AWS::Greengrass::ResourceDefinition.ResourceDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedefinitionversion.html
-- |
-- | - `Resources`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-resourcedefinitionversion.html#cfn-greengrass-resourcedefinition-resourcedefinitionversion-resources
type ResourceDefinitionVersion =
  { "Resources" :: Value (Array ResourceInstance)
  }

resourceDefinitionVersion :: { "Resources" :: Value (Array ResourceInstance) } -> ResourceDefinitionVersion
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
  { "SourcePath" :: Value String
  , "GroupOwnerSetting" :: Maybe (Value GroupOwnerSetting)
  }

localDeviceResourceData :: { "SourcePath" :: Value String } -> LocalDeviceResourceData
localDeviceResourceData required =
  (merge required
    { "GroupOwnerSetting" : Nothing
    })

-- | `AWS::Greengrass::ResourceDefinition.GroupOwnerSetting`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html
-- |
-- | - `AutoAddGroupOwner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html#cfn-greengrass-resourcedefinition-groupownersetting-autoaddgroupowner
-- | - `GroupOwner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-groupownersetting.html#cfn-greengrass-resourcedefinition-groupownersetting-groupowner
type GroupOwnerSetting =
  { "AutoAddGroupOwner" :: Value Boolean
  , "GroupOwner" :: Maybe (Value String)
  }

groupOwnerSetting :: { "AutoAddGroupOwner" :: Value Boolean } -> GroupOwnerSetting
groupOwnerSetting required =
  (merge required
    { "GroupOwner" : Nothing
    })

-- | `AWS::Greengrass::ResourceDefinition.SecretsManagerSecretResourceData`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-secretsmanagersecretresourcedata.html
-- |
-- | - `ARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinition-secretsmanagersecretresourcedata-arn
-- | - `AdditionalStagingLabelsToDownload`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-secretsmanagersecretresourcedata.html#cfn-greengrass-resourcedefinition-secretsmanagersecretresourcedata-additionalstaginglabelstodownload
type SecretsManagerSecretResourceData =
  { "ARN" :: Value String
  , "AdditionalStagingLabelsToDownload" :: Maybe (Value (Array String))
  }

secretsManagerSecretResourceData :: { "ARN" :: Value String } -> SecretsManagerSecretResourceData
secretsManagerSecretResourceData required =
  (merge required
    { "AdditionalStagingLabelsToDownload" : Nothing
    })

-- | `AWS::Greengrass::ResourceDefinition.S3MachineLearningModelResourceData`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-s3machinelearningmodelresourcedata.html
-- |
-- | - `DestinationPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-s3machinelearningmodelresourcedata-destinationpath
-- | - `S3Uri`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-resourcedefinition-s3machinelearningmodelresourcedata.html#cfn-greengrass-resourcedefinition-s3machinelearningmodelresourcedata-s3uri
type S3MachineLearningModelResourceData =
  { "DestinationPath" :: Value String
  , "S3Uri" :: Value String
  }

s3MachineLearningModelResourceData :: { "DestinationPath" :: Value String, "S3Uri" :: Value String } -> S3MachineLearningModelResourceData
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
  { "DestinationPath" :: Value String
  , "SageMakerJobArn" :: Value String
  }

sageMakerMachineLearningModelResourceData :: { "DestinationPath" :: Value String, "SageMakerJobArn" :: Value String } -> SageMakerMachineLearningModelResourceData
sageMakerMachineLearningModelResourceData required =
  required