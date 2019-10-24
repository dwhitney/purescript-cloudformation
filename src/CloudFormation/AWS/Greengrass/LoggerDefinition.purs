module CloudFormation.AWS.Greengrass.LoggerDefinition where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type LoggerDefinition =
  { "Name" :: String
  , "InitialVersion" :: Maybe LoggerDefinitionVersion
  , "Tags" :: Maybe Foreign
  }

loggerDefinition :: { "Name" :: String } -> LoggerDefinition
loggerDefinition required =
  merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    }

type LoggerDefinitionVersion =
  { "Loggers" :: Array Logger
  }

loggerDefinitionVersion :: { "Loggers" :: Array Logger } -> LoggerDefinitionVersion
loggerDefinitionVersion required =
  required

type Logger =
  { "Type" :: String
  , "Level" :: String
  , "Id" :: String
  , "Component" :: String
  , "Space" :: Maybe Int
  }

logger :: { "Type" :: String, "Level" :: String, "Id" :: String, "Component" :: String } -> Logger
logger required =
  merge required
    { "Space" : Nothing
    }