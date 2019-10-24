module CloudFormation.AWS.CodePipeline.CustomActionType where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::CodePipeline::CustomActionType`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html-- |
-- | - `Category`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-category
-- | - `ConfigurationProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-configurationproperties
-- | - `InputArtifactDetails`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-inputartifactdetails
-- | - `OutputArtifactDetails`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-outputartifactdetails
-- | - `Provider`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-provider
-- | - `Settings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-settings
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html#cfn-codepipeline-customactiontype-version
type CustomActionType =
  { "Category" :: String
  , "InputArtifactDetails" :: ArtifactDetails
  , "OutputArtifactDetails" :: ArtifactDetails
  , "Provider" :: String
  , "Version" :: String
  , "ConfigurationProperties" :: Maybe (Array ConfigurationProperties)
  , "Settings" :: Maybe Settings
  }

customActionType :: { "Category" :: String, "InputArtifactDetails" :: ArtifactDetails, "OutputArtifactDetails" :: ArtifactDetails, "Provider" :: String, "Version" :: String } -> CustomActionType
customActionType required =
  merge required
    { "ConfigurationProperties" : Nothing
    , "Settings" : Nothing
    }

-- | `AWS::CodePipeline::CustomActionType.Settings`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html-- |
-- | - `EntityUrlTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-entityurltemplate
-- | - `ExecutionUrlTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-executionurltemplate
-- | - `RevisionUrlTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-revisionurltemplate
-- | - `ThirdPartyConfigurationUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-thirdpartyconfigurationurl
type Settings =
  { "EntityUrlTemplate" :: Maybe String
  , "ExecutionUrlTemplate" :: Maybe String
  , "RevisionUrlTemplate" :: Maybe String
  , "ThirdPartyConfigurationUrl" :: Maybe String
  }

settings :: Settings
settings =
  { "EntityUrlTemplate" : Nothing
  , "ExecutionUrlTemplate" : Nothing
  , "RevisionUrlTemplate" : Nothing
  , "ThirdPartyConfigurationUrl" : Nothing
  }

-- | `AWS::CodePipeline::CustomActionType.ConfigurationProperties`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-description
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-key
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-name
-- | - `Queryable`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-queryable
-- | - `Required`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-required
-- | - `Secret`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-secret
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html#cfn-codepipeline-customactiontype-configurationproperties-type
type ConfigurationProperties =
  { "Key" :: Boolean
  , "Name" :: String
  , "Required" :: Boolean
  , "Secret" :: Boolean
  , "Description" :: Maybe String
  , "Queryable" :: Maybe Boolean
  , "Type" :: Maybe String
  }

configurationProperties :: { "Key" :: Boolean, "Name" :: String, "Required" :: Boolean, "Secret" :: Boolean } -> ConfigurationProperties
configurationProperties required =
  merge required
    { "Description" : Nothing
    , "Queryable" : Nothing
    , "Type" : Nothing
    }

-- | `AWS::CodePipeline::CustomActionType.ArtifactDetails`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html-- |
-- | - `MaximumCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html#cfn-codepipeline-customactiontype-artifactdetails-maximumcount
-- | - `MinimumCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html#cfn-codepipeline-customactiontype-artifactdetails-minimumcount
type ArtifactDetails =
  { "MaximumCount" :: Int
  , "MinimumCount" :: Int
  }

artifactDetails :: { "MaximumCount" :: Int, "MinimumCount" :: Int } -> ArtifactDetails
artifactDetails required =
  required