module CloudFormation.AWS.CodePipeline.CustomActionType where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::CodePipeline::CustomActionType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codepipeline-customactiontype.html
-- |
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
newtype CustomActionType = CustomActionType
  { "Category" :: Value String
  , "InputArtifactDetails" :: Value ArtifactDetails
  , "OutputArtifactDetails" :: Value ArtifactDetails
  , "Provider" :: Value String
  , "Version" :: Value String
  , "ConfigurationProperties" :: Maybe (Value (Array ConfigurationProperties))
  , "Settings" :: Maybe (Value Settings)
  }

derive instance newtypeCustomActionType :: Newtype CustomActionType _
derive newtype instance writeCustomActionType :: WriteForeign CustomActionType
instance resourceCustomActionType :: Resource CustomActionType where type_ _ = "AWS::CodePipeline::CustomActionType"

customActionType :: { "Category" :: Value String, "InputArtifactDetails" :: Value ArtifactDetails, "OutputArtifactDetails" :: Value ArtifactDetails, "Provider" :: Value String, "Version" :: Value String } -> CustomActionType
customActionType required = CustomActionType
  (merge required
    { "ConfigurationProperties" : Nothing
    , "Settings" : Nothing
    })

-- | `AWS::CodePipeline::CustomActionType.Settings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html
-- |
-- | - `EntityUrlTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-entityurltemplate
-- | - `ExecutionUrlTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-executionurltemplate
-- | - `RevisionUrlTemplate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-revisionurltemplate
-- | - `ThirdPartyConfigurationUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-settings.html#cfn-codepipeline-customactiontype-settings-thirdpartyconfigurationurl
type Settings =
  { "EntityUrlTemplate" :: Maybe (Value String)
  , "ExecutionUrlTemplate" :: Maybe (Value String)
  , "RevisionUrlTemplate" :: Maybe (Value String)
  , "ThirdPartyConfigurationUrl" :: Maybe (Value String)
  }

settings :: Settings
settings =
  { "EntityUrlTemplate" : Nothing
  , "ExecutionUrlTemplate" : Nothing
  , "RevisionUrlTemplate" : Nothing
  , "ThirdPartyConfigurationUrl" : Nothing
  }

-- | `AWS::CodePipeline::CustomActionType.ConfigurationProperties`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-configurationproperties.html
-- |
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
  { "Key" :: Value Boolean
  , "Name" :: Value String
  , "Required" :: Value Boolean
  , "Secret" :: Value Boolean
  , "Description" :: Maybe (Value String)
  , "Queryable" :: Maybe (Value Boolean)
  , "Type" :: Maybe (Value String)
  }

configurationProperties :: { "Key" :: Value Boolean, "Name" :: Value String, "Required" :: Value Boolean, "Secret" :: Value Boolean } -> ConfigurationProperties
configurationProperties required =
  (merge required
    { "Description" : Nothing
    , "Queryable" : Nothing
    , "Type" : Nothing
    })

-- | `AWS::CodePipeline::CustomActionType.ArtifactDetails`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html
-- |
-- | - `MaximumCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html#cfn-codepipeline-customactiontype-artifactdetails-maximumcount
-- | - `MinimumCount`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-customactiontype-artifactdetails.html#cfn-codepipeline-customactiontype-artifactdetails-minimumcount
type ArtifactDetails =
  { "MaximumCount" :: Value Int
  , "MinimumCount" :: Value Int
  }

artifactDetails :: { "MaximumCount" :: Value Int, "MinimumCount" :: Value Int } -> ArtifactDetails
artifactDetails required =
  required