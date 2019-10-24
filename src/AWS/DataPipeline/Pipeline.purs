module AWS.DataPipeline.Pipeline where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Pipeline =
  { "Name" :: String
  , "ParameterObjects" :: Array ParameterObject
  , "Activate" :: Maybe Boolean
  , "Description" :: Maybe String
  , "ParameterValues" :: Maybe (Array ParameterValue)
  , "PipelineObjects" :: Maybe (Array PipelineObject)
  , "PipelineTags" :: Maybe (Array PipelineTag)
  }

pipeline :: { "Name" :: String, "ParameterObjects" :: Array ParameterObject } -> Pipeline
pipeline required =
  merge required
    { "Activate" : Nothing
    , "Description" : Nothing
    , "ParameterValues" : Nothing
    , "PipelineObjects" : Nothing
    , "PipelineTags" : Nothing
    }

type Field =
  { "Key" :: String
  , "RefValue" :: Maybe String
  , "StringValue" :: Maybe String
  }

field :: { "Key" :: String } -> Field
field required =
  merge required
    { "RefValue" : Nothing
    , "StringValue" : Nothing
    }

type ParameterValue =
  { "Id" :: String
  , "StringValue" :: String
  }

parameterValue :: { "Id" :: String, "StringValue" :: String } -> ParameterValue
parameterValue required =
  required

type ParameterObject =
  { "Attributes" :: Array ParameterAttribute
  , "Id" :: String
  }

parameterObject :: { "Attributes" :: Array ParameterAttribute, "Id" :: String } -> ParameterObject
parameterObject required =
  required

type PipelineTag =
  { "Key" :: String
  , "Value" :: String
  }

pipelineTag :: { "Key" :: String, "Value" :: String } -> PipelineTag
pipelineTag required =
  required

type ParameterAttribute =
  { "Key" :: String
  , "StringValue" :: String
  }

parameterAttribute :: { "Key" :: String, "StringValue" :: String } -> ParameterAttribute
parameterAttribute required =
  required

type PipelineObject =
  { "Fields" :: Array Field
  , "Id" :: String
  , "Name" :: String
  }

pipelineObject :: { "Fields" :: Array Field, "Id" :: String, "Name" :: String } -> PipelineObject
pipelineObject required =
  required