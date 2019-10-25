module CloudFormation.AWS.IoTThingsGraph.FlowTemplate where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::IoTThingsGraph::FlowTemplate`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotthingsgraph-flowtemplate.html
-- |
-- | - `CompatibleNamespaceVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotthingsgraph-flowtemplate.html#cfn-iotthingsgraph-flowtemplate-compatiblenamespaceversion
-- | - `Definition`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotthingsgraph-flowtemplate.html#cfn-iotthingsgraph-flowtemplate-definition
newtype FlowTemplate = FlowTemplate
  { "Definition" :: Value DefinitionDocument
  , "CompatibleNamespaceVersion" :: Maybe (Value Number)
  }

derive instance newtypeFlowTemplate :: Newtype FlowTemplate _
derive newtype instance writeFlowTemplate :: WriteForeign FlowTemplate
instance resourceFlowTemplate :: Resource FlowTemplate where type_ _ = "AWS::IoTThingsGraph::FlowTemplate"

flowTemplate :: { "Definition" :: Value DefinitionDocument } -> FlowTemplate
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
  { "Language" :: Value String
  , "Text" :: Value String
  }

definitionDocument :: { "Language" :: Value String, "Text" :: Value String } -> DefinitionDocument
definitionDocument required =
  required