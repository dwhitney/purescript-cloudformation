module CloudFormation.AWS.Greengrass.ConnectorDefinitionVersion where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Greengrass::ConnectorDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinitionversion.html
-- |
-- | - `Connectors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinitionversion.html#cfn-greengrass-connectordefinitionversion-connectors
-- | - `ConnectorDefinitionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinitionversion.html#cfn-greengrass-connectordefinitionversion-connectordefinitionid
newtype ConnectorDefinitionVersion = ConnectorDefinitionVersion
  { "Connectors" :: Array Connector
  , "ConnectorDefinitionId" :: String
  }

derive instance newtypeConnectorDefinitionVersion :: Newtype ConnectorDefinitionVersion _
instance resourceConnectorDefinitionVersion :: Resource ConnectorDefinitionVersion where type_ _ = "AWS::Greengrass::ConnectorDefinitionVersion"

connectorDefinitionVersion :: { "Connectors" :: Array Connector, "ConnectorDefinitionId" :: String } -> ConnectorDefinitionVersion
connectorDefinitionVersion required = ConnectorDefinitionVersion
  required

-- | `AWS::Greengrass::ConnectorDefinitionVersion.Connector`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html
-- |
-- | - `ConnectorArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html#cfn-greengrass-connectordefinitionversion-connector-connectorarn
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html#cfn-greengrass-connectordefinitionversion-connector-parameters
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinitionversion-connector.html#cfn-greengrass-connectordefinitionversion-connector-id
type Connector =
  { "ConnectorArn" :: String
  , "Id" :: String
  , "Parameters" :: Maybe CF.Json
  }

connector :: { "ConnectorArn" :: String, "Id" :: String } -> Connector
connector required =
  (merge required
    { "Parameters" : Nothing
    })