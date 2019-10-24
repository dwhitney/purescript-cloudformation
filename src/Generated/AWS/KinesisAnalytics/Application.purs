module CloudFormation.AWS.KinesisAnalytics.Application where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "Inputs" :: Array Input
  , "ApplicationName" :: Maybe String
  , "ApplicationDescription" :: Maybe String
  , "ApplicationCode" :: Maybe String
  }

derive instance newtypeApplication :: Newtype Application _
instance resourceApplication :: Resource Application where type_ _ = "AWS::KinesisAnalytics::Application"

application :: { "Inputs" :: Array Input } -> Application
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
  { "ResourceARN" :: String
  , "RoleARN" :: String
  }

inputLambdaProcessor :: { "ResourceARN" :: String, "RoleARN" :: String } -> InputLambdaProcessor
inputLambdaProcessor required =
  required

-- | `AWS::KinesisAnalytics::Application.InputProcessingConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputprocessingconfiguration.html
-- |
-- | - `InputLambdaProcessor`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputprocessingconfiguration.html#cfn-kinesisanalytics-application-inputprocessingconfiguration-inputlambdaprocessor
type InputProcessingConfiguration =
  { "InputLambdaProcessor" :: Maybe InputLambdaProcessor
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
  { "Count" :: Maybe Int
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
  { "ResourceARN" :: String
  , "RoleARN" :: String
  }

kinesisFirehoseInput :: { "ResourceARN" :: String, "RoleARN" :: String } -> KinesisFirehoseInput
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
  { "RecordFormatType" :: String
  , "MappingParameters" :: Maybe MappingParameters
  }

recordFormat :: { "RecordFormatType" :: String } -> RecordFormat
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
  { "SqlType" :: String
  , "Name" :: String
  , "Mapping" :: Maybe String
  }

recordColumn :: { "SqlType" :: String, "Name" :: String } -> RecordColumn
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
  { "ResourceARN" :: String
  , "RoleARN" :: String
  }

kinesisStreamsInput :: { "ResourceARN" :: String, "RoleARN" :: String } -> KinesisStreamsInput
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
  { "JSONMappingParameters" :: Maybe JSONMappingParameters
  , "CSVMappingParameters" :: Maybe CSVMappingParameters
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
  { "RecordRowPath" :: String
  }

jsonmSONMappingParameters :: { "RecordRowPath" :: String } -> JSONMappingParameters
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
  { "RecordColumns" :: Array RecordColumn
  , "RecordFormat" :: RecordFormat
  , "RecordEncoding" :: Maybe String
  }

inputSchema :: { "RecordColumns" :: Array RecordColumn, "RecordFormat" :: RecordFormat } -> InputSchema
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
  { "NamePrefix" :: String
  , "InputSchema" :: InputSchema
  , "KinesisStreamsInput" :: Maybe KinesisStreamsInput
  , "KinesisFirehoseInput" :: Maybe KinesisFirehoseInput
  , "InputProcessingConfiguration" :: Maybe InputProcessingConfiguration
  , "InputParallelism" :: Maybe InputParallelism
  }

input :: { "NamePrefix" :: String, "InputSchema" :: InputSchema } -> Input
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
  { "RecordRowDelimiter" :: String
  , "RecordColumnDelimiter" :: String
  }

csvmSVMappingParameters :: { "RecordRowDelimiter" :: String, "RecordColumnDelimiter" :: String } -> CSVMappingParameters
csvmSVMappingParameters required =
  required