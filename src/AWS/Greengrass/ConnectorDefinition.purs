module AWS.Greengrass.ConnectorDefinition where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type ConnectorDefinition =
  { "Name" :: String
  , "InitialVersion" :: Maybe ConnectorDefinitionVersion
  , "Tags" :: Maybe Foreign
  }

connectorDefinition :: { "Name" :: String } -> ConnectorDefinition
connectorDefinition required =
  merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    }

type Connector =
  { "ConnectorArn" :: String
  , "Id" :: String
  , "Parameters" :: Maybe Foreign
  }

connector :: { "ConnectorArn" :: String, "Id" :: String } -> Connector
connector required =
  merge required
    { "Parameters" : Nothing
    }

type ConnectorDefinitionVersion =
  { "Connectors" :: Array Connector
  }

connectorDefinitionVersion :: { "Connectors" :: Array Connector } -> ConnectorDefinitionVersion
connectorDefinitionVersion required =
  required