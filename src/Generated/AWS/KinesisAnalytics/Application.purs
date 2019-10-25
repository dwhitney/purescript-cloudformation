module CloudFormation.AWS.KinesisAnalytics.Application where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::KinesisAnalytics::Application`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-application.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-application.html#cfn-kinesisanalytics-application-applicationname
-- | - `Inputs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-application.html#cfn-kinesisanalytics-application-inputs
-- | - `ApplicationDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-application.html#cfn-kinesisanalytics-application-applicationdescription
-- | - `ApplicationCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-application.html#cfn-kinesisanalytics-application-applicationcode
newtype Application = Application
  { "Inputs" :: Value (Array Input)
  , "ApplicationName" :: Maybe (Value String)
  , "ApplicationDescription" :: Maybe (Value String)
  , "ApplicationCode" :: Maybe (Value String)
  }

derive instance newtypeApplication :: Newtype Application _
derive newtype instance writeApplication :: WriteForeign Application
instance resourceApplication :: Resource Application where type_ _ = "AWS::KinesisAnalytics::Application"

application :: { "Inputs" :: Value (Array Input) } -> Application
application required = Application
  (merge required
    { "ApplicationName" : Nothing
    , "ApplicationDescription" : Nothing
    , "ApplicationCode" : Nothing
    })

-- | `AWS::KinesisAnalytics::Application.InputLambdaProcessor`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputlambdaprocessor.html
-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputlambdaprocessor.html#cfn-kinesisanalytics-application-inputlambdaprocessor-resourcearn
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputlambdaprocessor.html#cfn-kinesisanalytics-application-inputlambdaprocessor-rolearn
type InputLambdaProcessor =
  { "ResourceARN" :: Value String
  , "RoleARN" :: Value String
  }

inputLambdaProcessor :: { "ResourceARN" :: Value String, "RoleARN" :: Value String } -> InputLambdaProcessor
inputLambdaProcessor required =
  required

-- | `AWS::KinesisAnalytics::Application.InputProcessingConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputprocessingconfiguration.html
-- |
-- | - `InputLambdaProcessor`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputprocessingconfiguration.html#cfn-kinesisanalytics-application-inputprocessingconfiguration-inputlambdaprocessor
type InputProcessingConfiguration =
  { "InputLambdaProcessor" :: Maybe (Value InputLambdaProcessor)
  }

inputProcessingConfiguration :: InputProcessingConfiguration
inputProcessingConfiguration =
  { "InputLambdaProcessor" : Nothing
  }

-- | `AWS::KinesisAnalytics::Application.InputParallelism`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputparallelism.html
-- |
-- | - `Count`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputparallelism.html#cfn-kinesisanalytics-application-inputparallelism-count
type InputParallelism =
  { "Count" :: Maybe (Value Int)
  }

inputParallelism :: InputParallelism
inputParallelism =
  { "Count" : Nothing
  }

-- | `AWS::KinesisAnalytics::Application.KinesisFirehoseInput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisfirehoseinput.html
-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisfirehoseinput.html#cfn-kinesisanalytics-application-kinesisfirehoseinput-resourcearn
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisfirehoseinput.html#cfn-kinesisanalytics-application-kinesisfirehoseinput-rolearn
type KinesisFirehoseInput =
  { "ResourceARN" :: Value String
  , "RoleARN" :: Value String
  }

kinesisFirehoseInput :: { "ResourceARN" :: Value String, "RoleARN" :: Value String } -> KinesisFirehoseInput
kinesisFirehoseInput required =
  required

-- | `AWS::KinesisAnalytics::Application.RecordFormat`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-recordformat.html
-- |
-- | - `MappingParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-recordformat.html#cfn-kinesisanalytics-application-recordformat-mappingparameters
-- | - `RecordFormatType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-recordformat.html#cfn-kinesisanalytics-application-recordformat-recordformattype
type RecordFormat =
  { "RecordFormatType" :: Value String
  , "MappingParameters" :: Maybe (Value MappingParameters)
  }

recordFormat :: { "RecordFormatType" :: Value String } -> RecordFormat
recordFormat required =
  (merge required
    { "MappingParameters" : Nothing
    })

-- | `AWS::KinesisAnalytics::Application.RecordColumn`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-recordcolumn.html
-- |
-- | - `Mapping`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-recordcolumn.html#cfn-kinesisanalytics-application-recordcolumn-mapping
-- | - `SqlType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-recordcolumn.html#cfn-kinesisanalytics-application-recordcolumn-sqltype
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-recordcolumn.html#cfn-kinesisanalytics-application-recordcolumn-name
type RecordColumn =
  { "SqlType" :: Value String
  , "Name" :: Value String
  , "Mapping" :: Maybe (Value String)
  }

recordColumn :: { "SqlType" :: Value String, "Name" :: Value String } -> RecordColumn
recordColumn required =
  (merge required
    { "Mapping" : Nothing
    })

-- | `AWS::KinesisAnalytics::Application.KinesisStreamsInput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisstreamsinput.html
-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisstreamsinput.html#cfn-kinesisanalytics-application-kinesisstreamsinput-resourcearn
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-kinesisstreamsinput.html#cfn-kinesisanalytics-application-kinesisstreamsinput-rolearn
type KinesisStreamsInput =
  { "ResourceARN" :: Value String
  , "RoleARN" :: Value String
  }

kinesisStreamsInput :: { "ResourceARN" :: Value String, "RoleARN" :: Value String } -> KinesisStreamsInput
kinesisStreamsInput required =
  required

-- | `AWS::KinesisAnalytics::Application.MappingParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-mappingparameters.html
-- |
-- | - `JSONMappingParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-mappingparameters.html#cfn-kinesisanalytics-application-mappingparameters-jsonmappingparameters
-- | - `CSVMappingParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-mappingparameters.html#cfn-kinesisanalytics-application-mappingparameters-csvmappingparameters
type MappingParameters =
  { "JSONMappingParameters" :: Maybe (Value JSONMappingParameters)
  , "CSVMappingParameters" :: Maybe (Value CSVMappingParameters)
  }

mappingParameters :: MappingParameters
mappingParameters =
  { "JSONMappingParameters" : Nothing
  , "CSVMappingParameters" : Nothing
  }

-- | `AWS::KinesisAnalytics::Application.JSONMappingParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-jsonmappingparameters.html
-- |
-- | - `RecordRowPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-jsonmappingparameters.html#cfn-kinesisanalytics-application-jsonmappingparameters-recordrowpath
type JSONMappingParameters =
  { "RecordRowPath" :: Value String
  }

jsonmSONMappingParameters :: { "RecordRowPath" :: Value String } -> JSONMappingParameters
jsonmSONMappingParameters required =
  required

-- | `AWS::KinesisAnalytics::Application.InputSchema`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html
-- |
-- | - `RecordEncoding`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordencoding
-- | - `RecordColumns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordcolumns
-- | - `RecordFormat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputschema.html#cfn-kinesisanalytics-application-inputschema-recordformat
type InputSchema =
  { "RecordColumns" :: Value (Array RecordColumn)
  , "RecordFormat" :: Value RecordFormat
  , "RecordEncoding" :: Maybe (Value String)
  }

inputSchema :: { "RecordColumns" :: Value (Array RecordColumn), "RecordFormat" :: Value RecordFormat } -> InputSchema
inputSchema required =
  (merge required
    { "RecordEncoding" : Nothing
    })

-- | `AWS::KinesisAnalytics::Application.Input`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html
-- |
-- | - `NamePrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-nameprefix
-- | - `InputSchema`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-inputschema
-- | - `KinesisStreamsInput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-kinesisstreamsinput
-- | - `KinesisFirehoseInput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-kinesisfirehoseinput
-- | - `InputProcessingConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-inputprocessingconfiguration
-- | - `InputParallelism`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-input.html#cfn-kinesisanalytics-application-input-inputparallelism
type Input =
  { "NamePrefix" :: Value String
  , "InputSchema" :: Value InputSchema
  , "KinesisStreamsInput" :: Maybe (Value KinesisStreamsInput)
  , "KinesisFirehoseInput" :: Maybe (Value KinesisFirehoseInput)
  , "InputProcessingConfiguration" :: Maybe (Value InputProcessingConfiguration)
  , "InputParallelism" :: Maybe (Value InputParallelism)
  }

input :: { "NamePrefix" :: Value String, "InputSchema" :: Value InputSchema } -> Input
input required =
  (merge required
    { "KinesisStreamsInput" : Nothing
    , "KinesisFirehoseInput" : Nothing
    , "InputProcessingConfiguration" : Nothing
    , "InputParallelism" : Nothing
    })

-- | `AWS::KinesisAnalytics::Application.CSVMappingParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-csvmappingparameters.html
-- |
-- | - `RecordRowDelimiter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-csvmappingparameters.html#cfn-kinesisanalytics-application-csvmappingparameters-recordrowdelimiter
-- | - `RecordColumnDelimiter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-csvmappingparameters.html#cfn-kinesisanalytics-application-csvmappingparameters-recordcolumndelimiter
type CSVMappingParameters =
  { "RecordRowDelimiter" :: Value String
  , "RecordColumnDelimiter" :: Value String
  }

csvmSVMappingParameters :: { "RecordRowDelimiter" :: Value String, "RecordColumnDelimiter" :: Value String } -> CSVMappingParameters
csvmSVMappingParameters required =
  required