module CloudFormation.AWS.ElasticBeanstalk.Environment where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::ElasticBeanstalk::Environment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-applicationname
-- | - `CNAMEPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-cnameprefix
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-description
-- | - `EnvironmentName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-name
-- | - `OptionSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-optionsettings
-- | - `PlatformArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-platformarn
-- | - `SolutionStackName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-solutionstackname
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-elasticbeanstalk-environment-tags
-- | - `TemplateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-templatename
-- | - `Tier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-tier
-- | - `VersionLabel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-versionlabel
newtype Environment = Environment
  { "ApplicationName" :: Value String
  , "CNAMEPrefix" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "EnvironmentName" :: Maybe (Value String)
  , "OptionSettings" :: Maybe (Value (Array OptionSetting))
  , "PlatformArn" :: Maybe (Value String)
  , "SolutionStackName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  , "TemplateName" :: Maybe (Value String)
  , "Tier" :: Maybe (Value Tier)
  , "VersionLabel" :: Maybe (Value String)
  }

derive instance newtypeEnvironment :: Newtype Environment _
derive newtype instance writeEnvironment :: WriteForeign Environment
instance resourceEnvironment :: Resource Environment where type_ _ = "AWS::ElasticBeanstalk::Environment"

environment :: { "ApplicationName" :: Value String } -> Environment
environment required = Environment
  (merge required
    { "CNAMEPrefix" : Nothing
    , "Description" : Nothing
    , "EnvironmentName" : Nothing
    , "OptionSettings" : Nothing
    , "PlatformArn" : Nothing
    , "SolutionStackName" : Nothing
    , "Tags" : Nothing
    , "TemplateName" : Nothing
    , "Tier" : Nothing
    , "VersionLabel" : Nothing
    })

-- | `AWS::ElasticBeanstalk::Environment.Tier`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html#cfn-beanstalk-env-tier-name
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html#cfn-beanstalk-env-tier-type
-- | - `Version`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment-tier.html#cfn-beanstalk-env-tier-version
type Tier =
  { "Name" :: Maybe (Value String)
  , "Type" :: Maybe (Value String)
  , "Version" :: Maybe (Value String)
  }

tier :: Tier
tier =
  { "Name" : Nothing
  , "Type" : Nothing
  , "Version" : Nothing
  }

-- | `AWS::ElasticBeanstalk::Environment.OptionSetting`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html
-- |
-- | - `Namespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html#cfn-beanstalk-optionsettings-namespace
-- | - `OptionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html#cfn-beanstalk-optionsettings-optionname
-- | - `ResourceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html#cfn-elasticbeanstalk-environment-optionsetting-resourcename
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-option-settings.html#cfn-beanstalk-optionsettings-value
type OptionSetting =
  { "Namespace" :: Value String
  , "OptionName" :: Value String
  , "ResourceName" :: Maybe (Value String)
  , "Value" :: Maybe (Value String)
  }

optionSetting :: { "Namespace" :: Value String, "OptionName" :: Value String } -> OptionSetting
optionSetting required =
  (merge required
    { "ResourceName" : Nothing
    , "Value" : Nothing
    })