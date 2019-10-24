module CloudFormation.AWS.DataPipeline.Pipeline where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "Name" :: String
  , "ParameterObjects" :: Array ParameterObject
  , "Activate" :: Maybe Boolean
  , "Description" :: Maybe String
  , "ParameterValues" :: Maybe (Array ParameterValue)
  , "PipelineObjects" :: Maybe (Array PipelineObject)
  , "PipelineTags" :: Maybe (Array PipelineTag)
  }

derive instance newtypePipeline :: Newtype Pipeline _
instance resourcePipeline :: Resource Pipeline where type_ _ = "AWS::DataPipeline::Pipeline"

pipeline :: { "Name" :: String, "ParameterObjects" :: Array ParameterObject } -> Pipeline
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
  { "Key" :: String
  , "RefValue" :: Maybe String
  , "StringValue" :: Maybe String
  }

field :: { "Key" :: String } -> Field
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
  { "Id" :: String
  , "StringValue" :: String
  }

parameterValue :: { "Id" :: String, "StringValue" :: String } -> ParameterValue
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
  { "Attributes" :: Array ParameterAttribute
  , "Id" :: String
  }

parameterObject :: { "Attributes" :: Array ParameterAttribute, "Id" :: String } -> ParameterObject
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
  { "Key" :: String
  , "Value" :: String
  }

pipelineTag :: { "Key" :: String, "Value" :: String } -> PipelineTag
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
  { "Key" :: String
  , "StringValue" :: String
  }

parameterAttribute :: { "Key" :: String, "StringValue" :: String } -> ParameterAttribute
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
  { "Fields" :: Array Field
  , "Id" :: String
  , "Name" :: String
  }

pipelineObject :: { "Fields" :: Array Field, "Id" :: String, "Name" :: String } -> PipelineObject
pipelineObject required =
  required