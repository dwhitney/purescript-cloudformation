module CloudFormation.AWS.ElasticBeanstalk.Environment where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "ApplicationName" :: String
  , "CNAMEPrefix" :: Maybe String
  , "Description" :: Maybe String
  , "EnvironmentName" :: Maybe String
  , "OptionSettings" :: Maybe (Array OptionSetting)
  , "PlatformArn" :: Maybe String
  , "SolutionStackName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  , "TemplateName" :: Maybe String
  , "Tier" :: Maybe Tier
  , "VersionLabel" :: Maybe String
  }

derive instance newtypeEnvironment :: Newtype Environment _
instance resourceEnvironment :: Resource Environment where type_ _ = "AWS::ElasticBeanstalk::Environment"

environment :: { "ApplicationName" :: String } -> Environment
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
  { "Name" :: Maybe String
  , "Type" :: Maybe String
  , "Version" :: Maybe String
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
  { "Namespace" :: String
  , "OptionName" :: String
  , "ResourceName" :: Maybe String
  , "Value" :: Maybe String
  }

optionSetting :: { "Namespace" :: String, "OptionName" :: String } -> OptionSetting
optionSetting required =
  (merge required
    { "ResourceName" : Nothing
    , "Value" : Nothing
    })