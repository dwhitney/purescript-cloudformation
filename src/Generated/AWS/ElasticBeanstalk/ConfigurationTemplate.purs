module CloudFormation.AWS.ElasticBeanstalk.ConfigurationTemplate where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::ElasticBeanstalk::ConfigurationTemplate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-applicationname
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-description
-- | - `EnvironmentId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-environmentid
-- | - `OptionSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-optionsettings
-- | - `PlatformArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-platformarn
-- | - `SolutionStackName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-solutionstackname
-- | - `SourceConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticbeanstalk-configurationtemplate.html#cfn-elasticbeanstalk-configurationtemplate-sourceconfiguration
newtype ConfigurationTemplate = ConfigurationTemplate
  { "ApplicationName" :: String
  , "Description" :: Maybe String
  , "EnvironmentId" :: Maybe String
  , "OptionSettings" :: Maybe (Array ConfigurationOptionSetting)
  , "PlatformArn" :: Maybe String
  , "SolutionStackName" :: Maybe String
  , "SourceConfiguration" :: Maybe SourceConfiguration
  }

derive instance newtypeConfigurationTemplate :: Newtype ConfigurationTemplate _
instance resourceConfigurationTemplate :: Resource ConfigurationTemplate where type_ _ = "AWS::ElasticBeanstalk::ConfigurationTemplate"

configurationTemplate :: { "ApplicationName" :: String } -> ConfigurationTemplate
configurationTemplate required = ConfigurationTemplate
  (merge required
    { "Description" : Nothing
    , "EnvironmentId" : Nothing
    , "OptionSettings" : Nothing
    , "PlatformArn" : Nothing
    , "SolutionStackName" : Nothing
    , "SourceConfiguration" : Nothing
    })

-- | `AWS::ElasticBeanstalk::ConfigurationTemplate.ConfigurationOptionSetting`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html
-- |
-- | - `Namespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html#cfn-elasticbeanstalk-configurationtemplate-configurationoptionsetting-namespace
-- | - `OptionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html#cfn-elasticbeanstalk-configurationtemplate-configurationoptionsetting-optionname
-- | - `ResourceName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html#cfn-elasticbeanstalk-configurationtemplate-configurationoptionsetting-resourcename
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-configurationoptionsetting.html#cfn-elasticbeanstalk-configurationtemplate-configurationoptionsetting-value
type ConfigurationOptionSetting =
  { "Namespace" :: String
  , "OptionName" :: String
  , "ResourceName" :: Maybe String
  , "Value" :: Maybe String
  }

configurationOptionSetting :: { "Namespace" :: String, "OptionName" :: String } -> ConfigurationOptionSetting
configurationOptionSetting required =
  (merge required
    { "ResourceName" : Nothing
    , "Value" : Nothing
    })

-- | `AWS::ElasticBeanstalk::ConfigurationTemplate.SourceConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-sourceconfiguration.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-sourceconfiguration.html#cfn-elasticbeanstalk-configurationtemplate-sourceconfiguration-applicationname
-- | - `TemplateName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-configurationtemplate-sourceconfiguration.html#cfn-elasticbeanstalk-configurationtemplate-sourceconfiguration-templatename
type SourceConfiguration =
  { "ApplicationName" :: String
  , "TemplateName" :: String
  }

sourceConfiguration :: { "ApplicationName" :: String, "TemplateName" :: String } -> SourceConfiguration
sourceConfiguration required =
  required