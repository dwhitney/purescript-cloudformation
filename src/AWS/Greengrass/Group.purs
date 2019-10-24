module AWS.Greengrass.Group where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Group =
  { "Name" :: String
  , "InitialVersion" :: Maybe GroupVersion
  , "RoleArn" :: Maybe String
  , "Tags" :: Maybe Foreign
  }

group :: { "Name" :: String } -> Group
group required =
  merge required
    { "InitialVersion" : Nothing
    , "RoleArn" : Nothing
    , "Tags" : Nothing
    }

type GroupVersion =
  { "LoggerDefinitionVersionArn" :: Maybe String
  , "DeviceDefinitionVersionArn" :: Maybe String
  , "FunctionDefinitionVersionArn" :: Maybe String
  , "CoreDefinitionVersionArn" :: Maybe String
  , "ResourceDefinitionVersionArn" :: Maybe String
  , "ConnectorDefinitionVersionArn" :: Maybe String
  , "SubscriptionDefinitionVersionArn" :: Maybe String
  }

groupVersion :: GroupVersion
groupVersion =
  { "LoggerDefinitionVersionArn" : Nothing
  , "DeviceDefinitionVersionArn" : Nothing
  , "FunctionDefinitionVersionArn" : Nothing
  , "CoreDefinitionVersionArn" : Nothing
  , "ResourceDefinitionVersionArn" : Nothing
  , "ConnectorDefinitionVersionArn" : Nothing
  , "SubscriptionDefinitionVersionArn" : Nothing
  }