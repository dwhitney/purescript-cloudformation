module CloudFormation.AWS.KinesisAnalyticsV2.Application where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign (Foreign)


type Application =
  { "RuntimeEnvironment" :: String
  , "ServiceExecutionRole" :: String
  , "ApplicationName" :: Maybe String
  , "ApplicationConfiguration" :: Maybe ApplicationConfiguration
  , "ApplicationDescription" :: Maybe String
  }

application :: { "RuntimeEnvironment" :: String, "ServiceExecutionRole" :: String } -> Application
application required =
  merge required
    { "ApplicationName" : Nothing
    , "ApplicationConfiguration" : Nothing
    , "ApplicationDescription" : Nothing
    }

type EnvironmentProperties =
  { "PropertyGroups" :: Maybe (Array PropertyGroup)
  }

environmentProperties :: EnvironmentProperties
environmentProperties =
  { "PropertyGroups" : Nothing
  }

type ApplicationCodeConfiguration =
  { "CodeContentType" :: String
  , "CodeContent" :: CodeContent
  }

applicationCodeConfiguration :: { "CodeContentType" :: String, "CodeContent" :: CodeContent } -> ApplicationCodeConfiguration
applicationCodeConfiguration required =
  required

type ApplicationConfiguration =
  { "ApplicationCodeConfiguration" :: Maybe ApplicationCodeConfiguration
  , "EnvironmentProperties" :: Maybe EnvironmentProperties
  , "FlinkApplicationConfiguration" :: Maybe FlinkApplicationConfiguration
  , "SqlApplicationConfiguration" :: Maybe SqlApplicationConfiguration
  , "ApplicationSnapshotConfiguration" :: Maybe ApplicationSnapshotConfiguration
  }

applicationConfiguration :: ApplicationConfiguration
applicationConfiguration =
  { "ApplicationCodeConfiguration" : Nothing
  , "EnvironmentProperties" : Nothing
  , "FlinkApplicationConfiguration" : Nothing
  , "SqlApplicationConfiguration" : Nothing
  , "ApplicationSnapshotConfiguration" : Nothing
  }

type InputProcessingConfiguration =
  { "InputLambdaProcessor" :: Maybe InputLambdaProcessor
  }

inputProcessingConfiguration :: InputProcessingConfiguration
inputProcessingConfiguration =
  { "InputLambdaProcessor" : Nothing
  }

type SqlApplicationConfiguration =
  { "Inputs" :: Maybe (Array Input)
  }

sqlApplicationConfiguration :: SqlApplicationConfiguration
sqlApplicationConfiguration =
  { "Inputs" : Nothing
  }

type CodeContent =
  { "ZipFileContent" :: Maybe String
  , "S3ContentLocation" :: Maybe S3ContentLocation
  , "TextContent" :: Maybe String
  }

codeContent :: CodeContent
codeContent =
  { "ZipFileContent" : Nothing
  , "S3ContentLocation" : Nothing
  , "TextContent" : Nothing
  }

type JSONMappingParameters =
  { "RecordRowPath" :: String
  }

jsonmSONMappingParameters :: { "RecordRowPath" :: String } -> JSONMappingParameters
jsonmSONMappingParameters required =
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

type MonitoringConfiguration =
  { "ConfigurationType" :: String
  , "MetricsLevel" :: Maybe String
  , "LogLevel" :: Maybe String
  }

monitoringConfiguration :: { "ConfigurationType" :: String } -> MonitoringConfiguration
monitoringConfiguration required =
  merge required
    { "MetricsLevel" : Nothing
    , "LogLevel" : Nothing
    }

type CSVMappingParameters =
  { "RecordRowDelimiter" :: String
  , "RecordColumnDelimiter" :: String
  }

csvmSVMappingParameters :: { "RecordRowDelimiter" :: String, "RecordColumnDelimiter" :: String } -> CSVMappingParameters
csvmSVMappingParameters required =
  required

type ParallelismConfiguration =
  { "ConfigurationType" :: String
  , "ParallelismPerKPU" :: Maybe Int
  , "AutoScalingEnabled" :: Maybe Boolean
  , "Parallelism" :: Maybe Int
  }

parallelismConfiguration :: { "ConfigurationType" :: String } -> ParallelismConfiguration
parallelismConfiguration required =
  merge required
    { "ParallelismPerKPU" : Nothing
    , "AutoScalingEnabled" : Nothing
    , "Parallelism" : Nothing
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

type KinesisFirehoseInput =
  { "ResourceARN" :: String
  }

kinesisFirehoseInput :: { "ResourceARN" :: String } -> KinesisFirehoseInput
kinesisFirehoseInput required =
  required

type ApplicationSnapshotConfiguration =
  { "SnapshotsEnabled" :: Boolean
  }

applicationSnapshotConfiguration :: { "SnapshotsEnabled" :: Boolean } -> ApplicationSnapshotConfiguration
applicationSnapshotConfiguration required =
  required

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

type FlinkApplicationConfiguration =
  { "CheckpointConfiguration" :: Maybe CheckpointConfiguration
  , "ParallelismConfiguration" :: Maybe ParallelismConfiguration
  , "MonitoringConfiguration" :: Maybe MonitoringConfiguration
  }

flinkApplicationConfiguration :: FlinkApplicationConfiguration
flinkApplicationConfiguration =
  { "CheckpointConfiguration" : Nothing
  , "ParallelismConfiguration" : Nothing
  , "MonitoringConfiguration" : Nothing
  }

type InputLambdaProcessor =
  { "ResourceARN" :: String
  }

inputLambdaProcessor :: { "ResourceARN" :: String } -> InputLambdaProcessor
inputLambdaProcessor required =
  required

type InputParallelism =
  { "Count" :: Maybe Int
  }

inputParallelism :: InputParallelism
inputParallelism =
  { "Count" : Nothing
  }

type CheckpointConfiguration =
  { "ConfigurationType" :: String
  , "CheckpointInterval" :: Maybe Int
  , "MinPauseBetweenCheckpoints" :: Maybe Int
  , "CheckpointingEnabled" :: Maybe Boolean
  }

checkpointConfiguration :: { "ConfigurationType" :: String } -> CheckpointConfiguration
checkpointConfiguration required =
  merge required
    { "CheckpointInterval" : Nothing
    , "MinPauseBetweenCheckpoints" : Nothing
    , "CheckpointingEnabled" : Nothing
    }

type MappingParameters =
  { "JSONMappingParameters" :: Maybe JSONMappingParameters
  , "CSVMappingParameters" :: Maybe CSVMappingParameters
  }

mappingParameters :: MappingParameters
mappingParameters =
  { "JSONMappingParameters" : Nothing
  , "CSVMappingParameters" : Nothing
  }

type KinesisStreamsInput =
  { "ResourceARN" :: String
  }

kinesisStreamsInput :: { "ResourceARN" :: String } -> KinesisStreamsInput
kinesisStreamsInput required =
  required

type PropertyGroup =
  { "PropertyMap" :: Maybe Foreign
  , "PropertyGroupId" :: Maybe String
  }

propertyGroup :: PropertyGroup
propertyGroup =
  { "PropertyMap" : Nothing
  , "PropertyGroupId" : Nothing
  }

type S3ContentLocation =
  { "BucketARN" :: Maybe String
  , "FileKey" :: Maybe String
  , "ObjectVersion" :: Maybe String
  }

s3ContentLocation :: S3ContentLocation
s3ContentLocation =
  { "BucketARN" : Nothing
  , "FileKey" : Nothing
  , "ObjectVersion" : Nothing
  }