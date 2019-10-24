module CloudFormation.AWS.Greengrass.LoggerDefinitionVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


type LoggerDefinitionVersion =
  { "LoggerDefinitionId" :: String
  , "Loggers" :: Array Logger
  }

loggerDefinitionVersion :: { "LoggerDefinitionId" :: String, "Loggers" :: Array Logger } -> LoggerDefinitionVersion
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