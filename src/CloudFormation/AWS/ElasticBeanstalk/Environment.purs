module CloudFormation.AWS.ElasticBeanstalk.Environment where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type Environment =
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

environment :: { "ApplicationName" :: String } -> Environment
environment required =
  merge required
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
    }

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

type OptionSetting =
  { "Namespace" :: String
  , "OptionName" :: String
  , "ResourceName" :: Maybe String
  , "Value" :: Maybe String
  }

optionSetting :: { "Namespace" :: String, "OptionName" :: String } -> OptionSetting
optionSetting required =
  merge required
    { "ResourceName" : Nothing
    , "Value" : Nothing
    }