module AWS.RDS.OptionGroup where 

import Tag
import Data.Maybe (Maybe(..))
import Record (merge)


type OptionGroup =
  { "EngineName" :: String
  , "MajorEngineVersion" :: String
  , "OptionConfigurations" :: Array OptionConfiguration
  , "OptionGroupDescription" :: String
  , "Tags" :: Maybe (Array Tag)
  }

optionGroup :: { "EngineName" :: String, "MajorEngineVersion" :: String, "OptionConfigurations" :: Array OptionConfiguration, "OptionGroupDescription" :: String } -> OptionGroup
optionGroup required =
  merge required
    { "Tags" : Nothing
    }

type OptionConfiguration =
  { "OptionName" :: String
  , "DBSecurityGroupMemberships" :: Maybe (Array String)
  , "OptionSettings" :: Maybe (Array OptionSetting)
  , "OptionVersion" :: Maybe String
  , "Port" :: Maybe Int
  , "VpcSecurityGroupMemberships" :: Maybe (Array String)
  }

optionConfiguration :: { "OptionName" :: String } -> OptionConfiguration
optionConfiguration required =
  merge required
    { "DBSecurityGroupMemberships" : Nothing
    , "OptionSettings" : Nothing
    , "OptionVersion" : Nothing
    , "Port" : Nothing
    , "VpcSecurityGroupMemberships" : Nothing
    }

type OptionSetting =
  { "Name" :: Maybe String
  , "Value" :: Maybe String
  }

optionSetting :: OptionSetting
optionSetting =
  { "Name" : Nothing
  , "Value" : Nothing
  }