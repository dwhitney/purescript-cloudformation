module CloudFormation.AWS.Greengrass.ConnectorDefinitionVersion where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Greengrass::ConnectorDefinitionVersion`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinitionversion.html-- |
-- | - `Connectors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinitionversion.html#cfn-greengrass-connectordefinitionversion-connectors
-- | - `ConnectorDefinitionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinitionversion.html#cfn-greengrass-connectordefinitionversion-connectordefinitionid
type ConnectorDefinitionVersion =
  { "Connectors" :: Array Connector
  , "ConnectorDefinitionId" :: String
  }

connectorDefinitionVersion :: { "Connectors" :: Array Connector, "ConnectorDefinitionId" :: String } -> ConnectorDefinitionVersion
connectorDefinitionVersion required =
  required

-- | `AWS::Greengrass::ConnectorDefinitionVersion.Connector`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html-- |
-- | - `ConnectorArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html#cfn-greengrass-connectordefinitionversion-connector-connectorarn
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html#cfn-greengrass-connectordefinitionversion-connector-parameters
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html#cfn-greengrass-connectordefinitionversion-connector-id
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