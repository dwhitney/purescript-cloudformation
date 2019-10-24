module AWS.IoTThingsGraph.FlowTemplate where 

import Data.Maybe (Maybe(..))
import Record (merge)


type FlowTemplate =
  { "Definition" :: DefinitionDocument
  , "CompatibleNamespaceVersion" :: Maybe Number
  }

flowTemplate :: { "Definition" :: DefinitionDocument } -> FlowTemplate
flowTemplate required =
  merge required
    { "CompatibleNamespaceVersion" : Nothing
    }

type DefinitionDocument =
  { "Language" :: String
  , "Text" :: String
  }

definitionDocument :: { "Language" :: String, "Text" :: String } -> DefinitionDocument
definitionDocument required =
  required