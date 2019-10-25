module CloudFormation.AWS.Greengrass.LoggerDefinitionVersion where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Greengrass::LoggerDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinitionversion.html
-- |
-- | - `LoggerDefinitionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinitionversion.html#cfn-greengrass-loggerdefinitionversion-loggerdefinitionid
-- | - `Loggers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinitionversion.html#cfn-greengrass-loggerdefinitionversion-loggers
newtype LoggerDefinitionVersion = LoggerDefinitionVersion
  { "LoggerDefinitionId" :: Value String
  , "Loggers" :: Value (Array Logger)
  }

derive instance newtypeLoggerDefinitionVersion :: Newtype LoggerDefinitionVersion _
derive newtype instance writeLoggerDefinitionVersion :: WriteForeign LoggerDefinitionVersion
instance resourceLoggerDefinitionVersion :: Resource LoggerDefinitionVersion where type_ _ = "AWS::Greengrass::LoggerDefinitionVersion"

loggerDefinitionVersion :: { "LoggerDefinitionId" :: Value String, "Loggers" :: Value (Array Logger) } -> LoggerDefinitionVersion
loggerDefinitionVersion required = LoggerDefinitionVersion
  required

-- | `AWS::Greengrass::LoggerDefinitionVersion.Logger`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html
-- |
-- | - `Space`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-space
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-type
-- | - `Level`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-level
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-id
-- | - `Component`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinitionversion-logger.html#cfn-greengrass-loggerdefinitionversion-logger-component
type Logger =
  { "Type" :: Value String
  , "Level" :: Value String
  , "Id" :: Value String
  , "Component" :: Value String
  , "Space" :: Maybe (Value Int)
  }

logger :: { "Type" :: Value String, "Level" :: Value String, "Id" :: Value String, "Component" :: Value String } -> Logger
logger required =
  (merge required
    { "Space" : Nothing
    })