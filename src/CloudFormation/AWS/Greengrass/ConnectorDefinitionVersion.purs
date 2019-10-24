module CloudFormation.AWS.Greengrass.ConnectorDefinitionVersion where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type ConnectorDefinitionVersion =
  { "Connectors" :: Array Connector
  , "ConnectorDefinitionId" :: String
  }

connectorDefinitionVersion :: { "Connectors" :: Array Connector, "ConnectorDefinitionId" :: String } -> ConnectorDefinitionVersion
connectorDefinitionVersion required =
  required

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