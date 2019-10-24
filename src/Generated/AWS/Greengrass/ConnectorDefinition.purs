module CloudFormation.AWS.Greengrass.ConnectorDefinition where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "Name" :: String
  , "InitialVersion" :: Maybe ConnectorDefinitionVersion
  , "Tags" :: Maybe CF.Json
  }

derive instance newtypeConnectorDefinition :: Newtype ConnectorDefinition _
instance resourceConnectorDefinition :: Resource ConnectorDefinition where type_ _ = "AWS::Greengrass::ConnectorDefinition"

connectorDefinition :: { "Name" :: String } -> ConnectorDefinition
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
  { "ConnectorArn" :: String
  , "Id" :: String
  , "Parameters" :: Maybe CF.Json
  }

connector :: { "ConnectorArn" :: String, "Id" :: String } -> Connector
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
  { "Connectors" :: Array Connector
  }

connectorDefinitionVersion :: { "Connectors" :: Array Connector } -> ConnectorDefinitionVersion
connectorDefinitionVersion required =
  required