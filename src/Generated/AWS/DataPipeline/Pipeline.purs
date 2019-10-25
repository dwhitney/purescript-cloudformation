module CloudFormation.AWS.DataPipeline.Pipeline where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::DataPipeline::Pipeline`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html
-- |
-- | - `Activate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-activate
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-description
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-name
-- | - `ParameterObjects`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-parameterobjects
-- | - `ParameterValues`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-parametervalues
-- | - `PipelineObjects`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-pipelineobjects
-- | - `PipelineTags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-datapipeline-pipeline.html#cfn-datapipeline-pipeline-pipelinetags
newtype Pipeline = Pipeline
  { "Name" :: Value String
  , "ParameterObjects" :: Value (Array ParameterObject)
  , "Activate" :: Maybe (Value Boolean)
  , "Description" :: Maybe (Value String)
  , "ParameterValues" :: Maybe (Value (Array ParameterValue))
  , "PipelineObjects" :: Maybe (Value (Array PipelineObject))
  , "PipelineTags" :: Maybe (Value (Array PipelineTag))
  }

derive instance newtypePipeline :: Newtype Pipeline _
derive newtype instance writePipeline :: WriteForeign Pipeline
instance resourcePipeline :: Resource Pipeline where type_ _ = "AWS::DataPipeline::Pipeline"

pipeline :: { "Name" :: Value String, "ParameterObjects" :: Value (Array ParameterObject) } -> Pipeline
pipeline required = Pipeline
  (merge required
    { "Activate" : Nothing
    , "Description" : Nothing
    , "ParameterValues" : Nothing
    , "PipelineObjects" : Nothing
    , "PipelineTags" : Nothing
    })

-- | `AWS::DataPipeline::Pipeline.Field`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html#cfn-datapipeline-pipeline-pipelineobjects-fields-key
-- | - `RefValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html#cfn-datapipeline-pipeline-pipelineobjects-fields-refvalue
-- | - `StringValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects-fields.html#cfn-datapipeline-pipeline-pipelineobjects-fields-stringvalue
type Field =
  { "Key" :: Value String
  , "RefValue" :: Maybe (Value String)
  , "StringValue" :: Maybe (Value String)
  }

field :: { "Key" :: Value String } -> Field
field required =
  (merge required
    { "RefValue" : Nothing
    , "StringValue" : Nothing
    })

-- | `AWS::DataPipeline::Pipeline.ParameterValue`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parametervalues.html
-- |
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parametervalues.html#cfn-datapipeline-pipeline-parametervalues-id
-- | - `StringValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parametervalues.html#cfn-datapipeline-pipeline-parametervalues-stringvalue
type ParameterValue =
  { "Id" :: Value String
  , "StringValue" :: Value String
  }

parameterValue :: { "Id" :: Value String, "StringValue" :: Value String } -> ParameterValue
parameterValue required =
  required

-- | `AWS::DataPipeline::Pipeline.ParameterObject`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobjects.html
-- |
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobjects.html#cfn-datapipeline-pipeline-parameterobjects-attributes
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobjects.html#cfn-datapipeline-pipeline-parameterobjects-id
type ParameterObject =
  { "Attributes" :: Value (Array ParameterAttribute)
  , "Id" :: Value String
  }

parameterObject :: { "Attributes" :: Value (Array ParameterAttribute), "Id" :: Value String } -> ParameterObject
parameterObject required =
  required

-- | `AWS::DataPipeline::Pipeline.PipelineTag`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelinetags.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelinetags.html#cfn-datapipeline-pipeline-pipelinetags-key
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelinetags.html#cfn-datapipeline-pipeline-pipelinetags-value
type PipelineTag =
  { "Key" :: Value String
  , "Value" :: Value String
  }

pipelineTag :: { "Key" :: Value String, "Value" :: Value String } -> PipelineTag
pipelineTag required =
  required

-- | `AWS::DataPipeline::Pipeline.ParameterAttribute`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobjects-attributes.html
-- |
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobjects-attributes.html#cfn-datapipeline-pipeline-parameterobjects-attribtues-key
-- | - `StringValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-parameterobjects-attributes.html#cfn-datapipeline-pipeline-parameterobjects-attribtues-stringvalue
type ParameterAttribute =
  { "Key" :: Value String
  , "StringValue" :: Value String
  }

parameterAttribute :: { "Key" :: Value String, "StringValue" :: Value String } -> ParameterAttribute
parameterAttribute required =
  required

-- | `AWS::DataPipeline::Pipeline.PipelineObject`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html
-- |
-- | - `Fields`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html#cfn-datapipeline-pipeline-pipelineobjects-fields
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html#cfn-datapipeline-pipeline-pipelineobjects-id
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datapipeline-pipeline-pipelineobjects.html#cfn-datapipeline-pipeline-pipelineobjects-name
type PipelineObject =
  { "Fields" :: Value (Array Field)
  , "Id" :: Value String
  , "Name" :: Value String
  }

pipelineObject :: { "Fields" :: Value (Array Field), "Id" :: Value String, "Name" :: Value String } -> PipelineObject
pipelineObject required =
  required