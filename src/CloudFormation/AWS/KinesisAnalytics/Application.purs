module CloudFormation.AWS.KinesisAnalytics.Application where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Application =
  { "Inputs" :: Array Input
  , "ApplicationName" :: Maybe String
  , "ApplicationDescription" :: Maybe String
  , "ApplicationCode" :: Maybe String
  }

application :: { "Inputs" :: Array Input } -> Application
application required =
  merge required
    { "ApplicationName" : Nothing
    , "ApplicationDescription" : Nothing
    , "ApplicationCode" : Nothing
    }

type InputLambdaProcessor =
  { "ResourceARN" :: String
  , "RoleARN" :: String
  }

inputLambdaProcessor :: { "ResourceARN" :: String, "RoleARN" :: String } -> InputLambdaProcessor
inputLambdaProcessor required =
  required

type InputProcessingConfiguration =
  { "InputLambdaProcessor" :: Maybe InputLambdaProcessor
  }

inputProcessingConfiguration :: InputProcessingConfiguration
inputProcessingConfiguration =
  { "InputLambdaProcessor" : Nothing
  }

type InputParallelism =
  { "Count" :: Maybe Int
  }

inputParallelism :: InputParallelism
inputParallelism =
  { "Count" : Nothing
  }

type KinesisFirehoseInput =
  { "ResourceARN" :: String
  , "RoleARN" :: String
  }

kinesisFirehoseInput :: { "ResourceARN" :: String, "RoleARN" :: String } -> KinesisFirehoseInput
kinesisFirehoseInput required =
  required

type RecordFormat =
  { "RecordFormatType" :: String
  , "MappingParameters" :: Maybe MappingParameters
  }

recordFormat :: { "RecordFormatType" :: String } -> RecordFormat
recordFormat required =
  merge required
    { "MappingParameters" : Nothing
    }

type RecordColumn =
  { "SqlType" :: String
  , "Name" :: String
  , "Mapping" :: Maybe String
  }

recordColumn :: { "SqlType" :: String, "Name" :: String } -> RecordColumn
recordColumn required =
  merge required
    { "Mapping" : Nothing
    }

type KinesisStreamsInput =
  { "ResourceARN" :: String
  , "RoleARN" :: String
  }

kinesisStreamsInput :: { "ResourceARN" :: String, "RoleARN" :: String } -> KinesisStreamsInput
kinesisStreamsInput required =
  required

type MappingParameters =
  { "JSONMappingParameters" :: Maybe JSONMappingParameters
  , "CSVMappingParameters" :: Maybe CSVMappingParameters
  }

mappingParameters :: MappingParameters
mappingParameters =
  { "JSONMappingParameters" : Nothing
  , "CSVMappingParameters" : Nothing
  }

type JSONMappingParameters =
  { "RecordRowPath" :: String
  }

jsonmSONMappingParameters :: { "RecordRowPath" :: String } -> JSONMappingParameters
jsonmSONMappingParameters required =
  required

type InputSchema =
  { "RecordColumns" :: Array RecordColumn
  , "RecordFormat" :: RecordFormat
  , "RecordEncoding" :: Maybe String
  }

inputSchema :: { "RecordColumns" :: Array RecordColumn, "RecordFormat" :: RecordFormat } -> InputSchema
inputSchema required =
  merge required
    { "RecordEncoding" : Nothing
    }

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
  merge required
    { "KinesisStreamsInput" : Nothing
    , "KinesisFirehoseInput" : Nothing
    , "InputProcessingConfiguration" : Nothing
    , "InputParallelism" : Nothing
    }

type CSVMappingParameters =
  { "RecordRowDelimiter" :: String
  , "RecordColumnDelimiter" :: String
  }

csvmSVMappingParameters :: { "RecordRowDelimiter" :: String, "RecordColumnDelimiter" :: String } -> CSVMappingParameters
csvmSVMappingParameters required =
  required