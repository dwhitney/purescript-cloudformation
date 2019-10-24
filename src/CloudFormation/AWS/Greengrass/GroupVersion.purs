module CloudFormation.AWS.Greengrass.GroupVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


type GroupVersion =
  { "GroupId" :: String
  , "LoggerDefinitionVersionArn" :: Maybe String
  , "DeviceDefinitionVersionArn" :: Maybe String
  , "FunctionDefinitionVersionArn" :: Maybe String
  , "CoreDefinitionVersionArn" :: Maybe String
  , "ResourceDefinitionVersionArn" :: Maybe String
  , "ConnectorDefinitionVersionArn" :: Maybe String
  , "SubscriptionDefinitionVersionArn" :: Maybe String
  }

groupVersion :: { "GroupId" :: String } -> GroupVersion
groupVersion required =
  merge required
    { "LoggerDefinitionVersionArn" : Nothing
    , "DeviceDefinitionVersionArn" : Nothing
    , "FunctionDefinitionVersionArn" : Nothing
    , "CoreDefinitionVersionArn" : Nothing
    , "ResourceDefinitionVersionArn" : Nothing
    , "ConnectorDefinitionVersionArn" : Nothing
    , "SubscriptionDefinitionVersionArn" : Nothing
    }