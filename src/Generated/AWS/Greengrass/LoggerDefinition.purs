module CloudFormation.AWS.Greengrass.LoggerDefinition where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Greengrass::LoggerDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html
-- |
-- | - `InitialVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html#cfn-greengrass-loggerdefinition-initialversion
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html#cfn-greengrass-loggerdefinition-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html#cfn-greengrass-loggerdefinition-name
newtype LoggerDefinition = LoggerDefinition
  { "Name" :: Value String
  , "InitialVersion" :: Maybe (Value LoggerDefinitionVersion)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeLoggerDefinition :: Newtype LoggerDefinition _
derive newtype instance writeLoggerDefinition :: WriteForeign LoggerDefinition
instance resourceLoggerDefinition :: Resource LoggerDefinition where type_ _ = "AWS::Greengrass::LoggerDefinition"

loggerDefinition :: { "Name" :: Value String } -> LoggerDefinition
loggerDefinition required = LoggerDefinition
  (merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::Greengrass::LoggerDefinition.LoggerDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-loggerdefinitionversion.html
-- |
-- | - `Loggers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-loggerdefinitionversion.html#cfn-greengrass-loggerdefinition-loggerdefinitionversion-loggers
type LoggerDefinitionVersion =
  { "Loggers" :: Value (Array Logger)
  }

loggerDefinitionVersion :: { "Loggers" :: Value (Array Logger) } -> LoggerDefinitionVersion
loggerDefinitionVersion required =
  required

-- | `AWS::Greengrass::LoggerDefinition.Logger`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html
-- |
-- | - `Space`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-space
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-type
-- | - `Level`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-level
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-id
-- | - `Component`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-logger.html#cfn-greengrass-loggerdefinition-logger-component
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