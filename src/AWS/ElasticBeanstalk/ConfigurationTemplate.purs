module AWS.ElasticBeanstalk.ConfigurationTemplate where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ConfigurationTemplate =
  { "ApplicationName" :: String
  , "Description" :: Maybe String
  , "EnvironmentId" :: Maybe String
  , "OptionSettings" :: Maybe (Array ConfigurationOptionSetting)
  , "PlatformArn" :: Maybe String
  , "SolutionStackName" :: Maybe String
  , "SourceConfiguration" :: Maybe SourceConfiguration
  }

configurationTemplate :: { "ApplicationName" :: String } -> ConfigurationTemplate
configurationTemplate required =
  merge required
    { "Description" : Nothing
    , "EnvironmentId" : Nothing
    , "OptionSettings" : Nothing
    , "PlatformArn" : Nothing
    , "SolutionStackName" : Nothing
    , "SourceConfiguration" : Nothing
    }

type ConfigurationOptionSetting =
  { "Namespace" :: String
  , "OptionName" :: String
  , "ResourceName" :: Maybe String
  , "Value" :: Maybe String
  }

configurationOptionSetting :: { "Namespace" :: String, "OptionName" :: String } -> ConfigurationOptionSetting
configurationOptionSetting required =
  merge required
    { "ResourceName" : Nothing
    , "Value" : Nothing
    }

type SourceConfiguration =
  { "ApplicationName" :: String
  , "TemplateName" :: String
  }

sourceConfiguration :: { "ApplicationName" :: String, "TemplateName" :: String } -> SourceConfiguration
sourceConfiguration required =
  required