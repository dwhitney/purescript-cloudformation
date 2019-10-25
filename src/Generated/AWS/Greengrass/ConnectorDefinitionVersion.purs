module CloudFormation.AWS.Greengrass.ConnectorDefinitionVersion where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
  { "Connectors" :: Value (Array Connector)
  , "ConnectorDefinitionId" :: Value String
  }

derive instance newtypeConnectorDefinitionVersion :: Newtype ConnectorDefinitionVersion _
derive newtype instance writeConnectorDefinitionVersion :: WriteForeign ConnectorDefinitionVersion
instance resourceConnectorDefinitionVersion :: Resource ConnectorDefinitionVersion where type_ _ = "AWS::Greengrass::ConnectorDefinitionVersion"

connectorDefinitionVersion :: { "Connectors" :: Value (Array Connector), "ConnectorDefinitionId" :: Value String } -> ConnectorDefinitionVersion
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
  { "ConnectorArn" :: Value String
  , "Id" :: Value String
  , "Parameters" :: Maybe (Value CF.Json)
  }

connector :: { "ConnectorArn" :: Value String, "Id" :: Value String } -> Connector
connector required =
  (merge required
    { "Parameters" : Nothing
    })