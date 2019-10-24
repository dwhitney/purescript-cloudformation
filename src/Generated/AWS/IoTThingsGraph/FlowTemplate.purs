module CloudFormation.AWS.IoTThingsGraph.FlowTemplate where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::IoTThingsGraph::FlowTemplate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotthingsgraph-flowtemplate.html
-- |
-- | - `CompatibleNamespaceVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotthingsgraph-flowtemplate.html#cfn-iotthingsgraph-flowtemplate-compatiblenamespaceversion
-- | - `Definition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotthingsgraph-flowtemplate.html#cfn-iotthingsgraph-flowtemplate-definition
newtype FlowTemplate = FlowTemplate
  { "Definition" :: DefinitionDocument
  , "CompatibleNamespaceVersion" :: Maybe Number
  }

derive instance newtypeFlowTemplate :: Newtype FlowTemplate _
instance resourceFlowTemplate :: Resource FlowTemplate where type_ _ = "AWS::IoTThingsGraph::FlowTemplate"

flowTemplate :: { "Definition" :: DefinitionDocument } -> FlowTemplate
flowTemplate required = FlowTemplate
  (merge required
    { "CompatibleNamespaceVersion" : Nothing
    })

-- | `AWS::IoTThingsGraph::FlowTemplate.DefinitionDocument`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotthingsgraph-flowtemplate-definitiondocument.html
-- |
-- | - `Language`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotthingsgraph-flowtemplate-definitiondocument.html#cfn-iotthingsgraph-flowtemplate-definitiondocument-language
-- | - `Text`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotthingsgraph-flowtemplate-definitiondocument.html#cfn-iotthingsgraph-flowtemplate-definitiondocument-text
type DefinitionDocument =
  { "Language" :: String
  , "Text" :: String
  }

definitionDocument :: { "Language" :: String, "Text" :: String } -> DefinitionDocument
definitionDocument required =
  required