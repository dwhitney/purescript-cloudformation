module CloudFormation.AWS.Greengrass.ConnectorDefinition where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Greengrass::ConnectorDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinition.html
-- |
-- | - `InitialVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinition.html#cfn-greengrass-connectordefinition-initialversion
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinition.html#cfn-greengrass-connectordefinition-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-connectordefinition.html#cfn-greengrass-connectordefinition-name
newtype ConnectorDefinition = ConnectorDefinition
  { "Name" :: Value String
  , "InitialVersion" :: Maybe (Value ConnectorDefinitionVersion)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeConnectorDefinition :: Newtype ConnectorDefinition _
derive newtype instance writeConnectorDefinition :: WriteForeign ConnectorDefinition
instance resourceConnectorDefinition :: Resource ConnectorDefinition where type_ _ = "AWS::Greengrass::ConnectorDefinition"

connectorDefinition :: { "Name" :: Value String } -> ConnectorDefinition
connectorDefinition required = ConnectorDefinition
  (merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::Greengrass::ConnectorDefinition.Connector`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connector.html
-- |
-- | - `ConnectorArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connector.html#cfn-greengrass-connectordefinition-connector-connectorarn
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connector.html#cfn-greengrass-connectordefinition-connector-parameters
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connector.html#cfn-greengrass-connectordefinition-connector-id
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

-- | `AWS::Greengrass::ConnectorDefinition.ConnectorDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connectordefinitionversion.html
-- |
-- | - `Connectors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-connectordefinition-connectordefinitionversion.html#cfn-greengrass-connectordefinition-connectordefinitionversion-connectors
type ConnectorDefinitionVersion =
  { "Connectors" :: Value (Array Connector)
  }

connectorDefinitionVersion :: { "Connectors" :: Value (Array Connector) } -> ConnectorDefinitionVersion
connectorDefinitionVersion required =
  required