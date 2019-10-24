module CloudFormation.AWS.KinesisAnalyticsV2.Application where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (Json)


-- | `AWS::KinesisAnalyticsV2::Application`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-applicationname
-- | - `RuntimeEnvironment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-runtimeenvironment
-- | - `ApplicationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-applicationconfiguration
-- | - `ApplicationDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-applicationdescription
-- | - `ServiceExecutionRole`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-serviceexecutionrole
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

-- | `AWS::KinesisAnalyticsV2::Application.EnvironmentProperties`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-environmentproperties.html
-- |
-- | - `PropertyGroups`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-environmentproperties.html#cfn-kinesisanalyticsv2-application-environmentproperties-propertygroups
type EnvironmentProperties =
  { "PropertyGroups" :: Maybe (Array PropertyGroup)
  }

environmentProperties :: EnvironmentProperties
environmentProperties =
  { "PropertyGroups" : Nothing
  }

-- | `AWS::KinesisAnalyticsV2::Application.ApplicationCodeConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationcodeconfiguration.html
-- |
-- | - `CodeContentType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationcodeconfiguration.html#cfn-kinesisanalyticsv2-application-applicationcodeconfiguration-codecontenttype
-- | - `CodeContent`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationcodeconfiguration.html#cfn-kinesisanalyticsv2-application-applicationcodeconfiguration-codecontent
type ApplicationCodeConfiguration =
  { "CodeContentType" :: String
  , "CodeContent" :: CodeContent
  }

applicationCodeConfiguration :: { "CodeContentType" :: String, "CodeContent" :: CodeContent } -> ApplicationCodeConfiguration
applicationCodeConfiguration required =
  required

-- | `AWS::KinesisAnalyticsV2::Application.ApplicationConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html
-- |
-- | - `ApplicationCodeConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-applicationcodeconfiguration
-- | - `EnvironmentProperties`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-environmentproperties
-- | - `FlinkApplicationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-flinkapplicationconfiguration
-- | - `SqlApplicationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-sqlapplicationconfiguration
-- | - `ApplicationSnapshotConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationconfiguration.html#cfn-kinesisanalyticsv2-application-applicationconfiguration-applicationsnapshotconfiguration
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

-- | `AWS::KinesisAnalyticsV2::Application.InputProcessingConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputprocessingconfiguration.html
-- |
-- | - `InputLambdaProcessor`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputprocessingconfiguration.html#cfn-kinesisanalyticsv2-application-inputprocessingconfiguration-inputlambdaprocessor
type InputProcessingConfiguration =
  { "InputLambdaProcessor" :: Maybe InputLambdaProcessor
  }

inputProcessingConfiguration :: InputProcessingConfiguration
inputProcessingConfiguration =
  { "InputLambdaProcessor" : Nothing
  }

-- | `AWS::KinesisAnalyticsV2::Application.SqlApplicationConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-sqlapplicationconfiguration.html
-- |
-- | - `Inputs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-sqlapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-sqlapplicationconfiguration-inputs
type SqlApplicationConfiguration =
  { "Inputs" :: Maybe (Array Input)
  }

sqlApplicationConfiguration :: SqlApplicationConfiguration
sqlApplicationConfiguration =
  { "Inputs" : Nothing
  }

-- | `AWS::KinesisAnalyticsV2::Application.CodeContent`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html
-- |
-- | - `ZipFileContent`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html#cfn-kinesisanalyticsv2-application-codecontent-zipfilecontent
-- | - `S3ContentLocation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html#cfn-kinesisanalyticsv2-application-codecontent-s3contentlocation
-- | - `TextContent`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-codecontent.html#cfn-kinesisanalyticsv2-application-codecontent-textcontent
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

-- | `AWS::KinesisAnalyticsV2::Application.JSONMappingParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-jsonmappingparameters.html
-- |
-- | - `RecordRowPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-jsonmappingparameters.html#cfn-kinesisanalyticsv2-application-jsonmappingparameters-recordrowpath
type JSONMappingParameters =
  { "RecordRowPath" :: String
  }

jsonmSONMappingParameters :: { "RecordRowPath" :: String } -> JSONMappingParameters
jsonmSONMappingParameters required =
  required

-- | `AWS::KinesisAnalyticsV2::Application.RecordFormat`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordformat.html
-- |
-- | - `MappingParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordformat.html#cfn-kinesisanalyticsv2-application-recordformat-mappingparameters
-- | - `RecordFormatType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordformat.html#cfn-kinesisanalyticsv2-application-recordformat-recordformattype
type RecordFormat =
  { "RecordFormatType" :: String
  , "MappingParameters" :: Maybe MappingParameters
  }

recordFormat :: { "RecordFormatType" :: String } -> RecordFormat
recordFormat required =
  merge required
    { "MappingParameters" : Nothing
    }

-- | `AWS::KinesisAnalyticsV2::Application.MonitoringConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-monitoringconfiguration.html
-- |
-- | - `ConfigurationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-monitoringconfiguration.html#cfn-kinesisanalyticsv2-application-monitoringconfiguration-configurationtype
-- | - `MetricsLevel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-monitoringconfiguration.html#cfn-kinesisanalyticsv2-application-monitoringconfiguration-metricslevel
-- | - `LogLevel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-monitoringconfiguration.html#cfn-kinesisanalyticsv2-application-monitoringconfiguration-loglevel
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

-- | `AWS::KinesisAnalyticsV2::Application.CSVMappingParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-csvmappingparameters.html
-- |
-- | - `RecordRowDelimiter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-csvmappingparameters.html#cfn-kinesisanalyticsv2-application-csvmappingparameters-recordrowdelimiter
-- | - `RecordColumnDelimiter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-csvmappingparameters.html#cfn-kinesisanalyticsv2-application-csvmappingparameters-recordcolumndelimiter
type CSVMappingParameters =
  { "RecordRowDelimiter" :: String
  , "RecordColumnDelimiter" :: String
  }

csvmSVMappingParameters :: { "RecordRowDelimiter" :: String, "RecordColumnDelimiter" :: String } -> CSVMappingParameters
csvmSVMappingParameters required =
  required

-- | `AWS::KinesisAnalyticsV2::Application.ParallelismConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html
-- |
-- | - `ConfigurationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-configurationtype
-- | - `ParallelismPerKPU`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-parallelismperkpu
-- | - `AutoScalingEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-autoscalingenabled
-- | - `Parallelism`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-parallelismconfiguration.html#cfn-kinesisanalyticsv2-application-parallelismconfiguration-parallelism
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

-- | `AWS::KinesisAnalyticsV2::Application.RecordColumn`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordcolumn.html
-- |
-- | - `Mapping`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordcolumn.html#cfn-kinesisanalyticsv2-application-recordcolumn-mapping
-- | - `SqlType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordcolumn.html#cfn-kinesisanalyticsv2-application-recordcolumn-sqltype
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-recordcolumn.html#cfn-kinesisanalyticsv2-application-recordcolumn-name
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

-- | `AWS::KinesisAnalyticsV2::Application.InputSchema`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputschema.html
-- |
-- | - `RecordEncoding`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputschema.html#cfn-kinesisanalyticsv2-application-inputschema-recordencoding
-- | - `RecordColumns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputschema.html#cfn-kinesisanalyticsv2-application-inputschema-recordcolumns
-- | - `RecordFormat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputschema.html#cfn-kinesisanalyticsv2-application-inputschema-recordformat
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

-- | `AWS::KinesisAnalyticsV2::Application.KinesisFirehoseInput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-kinesisfirehoseinput.html
-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-kinesisfirehoseinput.html#cfn-kinesisanalyticsv2-application-kinesisfirehoseinput-resourcearn
type KinesisFirehoseInput =
  { "ResourceARN" :: String
  }

kinesisFirehoseInput :: { "ResourceARN" :: String } -> KinesisFirehoseInput
kinesisFirehoseInput required =
  required

-- | `AWS::KinesisAnalyticsV2::Application.ApplicationSnapshotConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationsnapshotconfiguration.html
-- |
-- | - `SnapshotsEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-applicationsnapshotconfiguration.html#cfn-kinesisanalyticsv2-application-applicationsnapshotconfiguration-snapshotsenabled
type ApplicationSnapshotConfiguration =
  { "SnapshotsEnabled" :: Boolean
  }

applicationSnapshotConfiguration :: { "SnapshotsEnabled" :: Boolean } -> ApplicationSnapshotConfiguration
applicationSnapshotConfiguration required =
  required

-- | `AWS::KinesisAnalyticsV2::Application.Input`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html
-- |
-- | - `NamePrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-nameprefix
-- | - `InputSchema`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputschema
-- | - `KinesisStreamsInput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-kinesisstreamsinput
-- | - `KinesisFirehoseInput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-kinesisfirehoseinput
-- | - `InputProcessingConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputprocessingconfiguration
-- | - `InputParallelism`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-input.html#cfn-kinesisanalyticsv2-application-input-inputparallelism
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

-- | `AWS::KinesisAnalyticsV2::Application.FlinkApplicationConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html
-- |
-- | - `CheckpointConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-flinkapplicationconfiguration-checkpointconfiguration
-- | - `ParallelismConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-flinkapplicationconfiguration-parallelismconfiguration
-- | - `MonitoringConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-flinkapplicationconfiguration-monitoringconfiguration
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

-- | `AWS::KinesisAnalyticsV2::Application.InputLambdaProcessor`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputlambdaprocessor.html
-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputlambdaprocessor.html#cfn-kinesisanalyticsv2-application-inputlambdaprocessor-resourcearn
type InputLambdaProcessor =
  { "ResourceARN" :: String
  }

inputLambdaProcessor :: { "ResourceARN" :: String } -> InputLambdaProcessor
inputLambdaProcessor required =
  required

-- | `AWS::KinesisAnalyticsV2::Application.InputParallelism`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputparallelism.html
-- |
-- | - `Count`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-inputparallelism.html#cfn-kinesisanalyticsv2-application-inputparallelism-count
type InputParallelism =
  { "Count" :: Maybe Int
  }

inputParallelism :: InputParallelism
inputParallelism =
  { "Count" : Nothing
  }

-- | `AWS::KinesisAnalyticsV2::Application.CheckpointConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html
-- |
-- | - `ConfigurationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html#cfn-kinesisanalyticsv2-application-checkpointconfiguration-configurationtype
-- | - `CheckpointInterval`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html#cfn-kinesisanalyticsv2-application-checkpointconfiguration-checkpointinterval
-- | - `MinPauseBetweenCheckpoints`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html#cfn-kinesisanalyticsv2-application-checkpointconfiguration-minpausebetweencheckpoints
-- | - `CheckpointingEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-checkpointconfiguration.html#cfn-kinesisanalyticsv2-application-checkpointconfiguration-checkpointingenabled
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

-- | `AWS::KinesisAnalyticsV2::Application.MappingParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-mappingparameters.html
-- |
-- | - `JSONMappingParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-mappingparameters.html#cfn-kinesisanalyticsv2-application-mappingparameters-jsonmappingparameters
-- | - `CSVMappingParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-mappingparameters.html#cfn-kinesisanalyticsv2-application-mappingparameters-csvmappingparameters
type MappingParameters =
  { "JSONMappingParameters" :: Maybe JSONMappingParameters
  , "CSVMappingParameters" :: Maybe CSVMappingParameters
  }

mappingParameters :: MappingParameters
mappingParameters =
  { "JSONMappingParameters" : Nothing
  , "CSVMappingParameters" : Nothing
  }

-- | `AWS::KinesisAnalyticsV2::Application.KinesisStreamsInput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-kinesisstreamsinput.html
-- |
-- | - `ResourceARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-kinesisstreamsinput.html#cfn-kinesisanalyticsv2-application-kinesisstreamsinput-resourcearn
type KinesisStreamsInput =
  { "ResourceARN" :: String
  }

kinesisStreamsInput :: { "ResourceARN" :: String } -> KinesisStreamsInput
kinesisStreamsInput required =
  required

-- | `AWS::KinesisAnalyticsV2::Application.PropertyGroup`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-propertygroup.html
-- |
-- | - `PropertyMap`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-propertygroup.html#cfn-kinesisanalyticsv2-application-propertygroup-propertymap
-- | - `PropertyGroupId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-propertygroup.html#cfn-kinesisanalyticsv2-application-propertygroup-propertygroupid
type PropertyGroup =
  { "PropertyMap" :: Maybe Json
  , "PropertyGroupId" :: Maybe String
  }

propertyGroup :: PropertyGroup
propertyGroup =
  { "PropertyMap" : Nothing
  , "PropertyGroupId" : Nothing
  }

-- | `AWS::KinesisAnalyticsV2::Application.S3ContentLocation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-s3contentlocation.html
-- |
-- | - `BucketARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-s3contentlocation.html#cfn-kinesisanalyticsv2-application-s3contentlocation-bucketarn
-- | - `FileKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-s3contentlocation.html#cfn-kinesisanalyticsv2-application-s3contentlocation-filekey
-- | - `ObjectVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-s3contentlocation.html#cfn-kinesisanalyticsv2-application-s3contentlocation-objectversion
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