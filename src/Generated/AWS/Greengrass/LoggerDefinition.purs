module CloudFormation.AWS.Greengrass.LoggerDefinition where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import Record (merge)


-- | `AWS::Greengrass::LoggerDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html
-- |
-- | - `InitialVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html#cfn-greengrass-loggerdefinition-initialversion
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html#cfn-greengrass-loggerdefinition-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-loggerdefinition.html#cfn-greengrass-loggerdefinition-name
type LoggerDefinition =
  { "Name" :: String
  , "InitialVersion" :: Maybe LoggerDefinitionVersion
  , "Tags" :: Maybe Json
  }

loggerDefinition :: { "Name" :: String } -> LoggerDefinition
loggerDefinition required =
  merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    }

-- | `AWS::Greengrass::LoggerDefinition.LoggerDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-loggerdefinitionversion.html
-- |
-- | - `Loggers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-loggerdefinition-loggerdefinitionversion.html#cfn-greengrass-loggerdefinition-loggerdefinitionversion-loggers
type LoggerDefinitionVersion =
  { "Loggers" :: Array Logger
  }

loggerDefinitionVersion :: { "Loggers" :: Array Logger } -> LoggerDefinitionVersion
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