module CloudFormation.AWS.KinesisFirehose.DeliveryStream where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign.Object (Object)


type DeliveryStream =
  { "DeliveryStreamName" :: Maybe String
  , "DeliveryStreamType" :: Maybe String
  , "ElasticsearchDestinationConfiguration" :: Maybe ElasticsearchDestinationConfiguration
  , "ExtendedS3DestinationConfiguration" :: Maybe ExtendedS3DestinationConfiguration
  , "KinesisStreamSourceConfiguration" :: Maybe KinesisStreamSourceConfiguration
  , "RedshiftDestinationConfiguration" :: Maybe RedshiftDestinationConfiguration
  , "S3DestinationConfiguration" :: Maybe S3DestinationConfiguration
  , "SplunkDestinationConfiguration" :: Maybe SplunkDestinationConfiguration
  }

deliveryStream :: DeliveryStream
deliveryStream =
  { "DeliveryStreamName" : Nothing
  , "DeliveryStreamType" : Nothing
  , "ElasticsearchDestinationConfiguration" : Nothing
  , "ExtendedS3DestinationConfiguration" : Nothing
  , "KinesisStreamSourceConfiguration" : Nothing
  , "RedshiftDestinationConfiguration" : Nothing
  , "S3DestinationConfiguration" : Nothing
  , "SplunkDestinationConfiguration" : Nothing
  }

type RedshiftDestinationConfiguration =
  { "ClusterJDBCURL" :: String
  , "CopyCommand" :: CopyCommand
  , "Password" :: String
  , "RoleARN" :: String
  , "S3Configuration" :: S3DestinationConfiguration
  , "Username" :: String
  , "CloudWatchLoggingOptions" :: Maybe CloudWatchLoggingOptions
  , "ProcessingConfiguration" :: Maybe ProcessingConfiguration
  }

redshiftDestinationConfiguration :: { "ClusterJDBCURL" :: String, "CopyCommand" :: CopyCommand, "Password" :: String, "RoleARN" :: String, "S3Configuration" :: S3DestinationConfiguration, "Username" :: String } -> RedshiftDestinationConfiguration
redshiftDestinationConfiguration required =
  merge required
    { "CloudWatchLoggingOptions" : Nothing
    , "ProcessingConfiguration" : Nothing
    }

type ExtendedS3DestinationConfiguration =
  { "BucketARN" :: String
  , "BufferingHints" :: BufferingHints
  , "CompressionFormat" :: String
  , "RoleARN" :: String
  , "CloudWatchLoggingOptions" :: Maybe CloudWatchLoggingOptions
  , "DataFormatConversionConfiguration" :: Maybe DataFormatConversionConfiguration
  , "EncryptionConfiguration" :: Maybe EncryptionConfiguration
  , "ErrorOutputPrefix" :: Maybe String
  , "Prefix" :: Maybe String
  , "ProcessingConfiguration" :: Maybe ProcessingConfiguration
  , "S3BackupConfiguration" :: Maybe S3DestinationConfiguration
  , "S3BackupMode" :: Maybe String
  }

extendedS3DestinationConfiguration :: { "BucketARN" :: String, "BufferingHints" :: BufferingHints, "CompressionFormat" :: String, "RoleARN" :: String } -> ExtendedS3DestinationConfiguration
extendedS3DestinationConfiguration required =
  merge required
    { "CloudWatchLoggingOptions" : Nothing
    , "DataFormatConversionConfiguration" : Nothing
    , "EncryptionConfiguration" : Nothing
    , "ErrorOutputPrefix" : Nothing
    , "Prefix" : Nothing
    , "ProcessingConfiguration" : Nothing
    , "S3BackupConfiguration" : Nothing
    , "S3BackupMode" : Nothing
    }

type S3DestinationConfiguration =
  { "BucketARN" :: String
  , "BufferingHints" :: BufferingHints
  , "CompressionFormat" :: String
  , "RoleARN" :: String
  , "CloudWatchLoggingOptions" :: Maybe CloudWatchLoggingOptions
  , "EncryptionConfiguration" :: Maybe EncryptionConfiguration
  , "ErrorOutputPrefix" :: Maybe String
  , "Prefix" :: Maybe String
  }

s3DestinationConfiguration :: { "BucketARN" :: String, "BufferingHints" :: BufferingHints, "CompressionFormat" :: String, "RoleARN" :: String } -> S3DestinationConfiguration
s3DestinationConfiguration required =
  merge required
    { "CloudWatchLoggingOptions" : Nothing
    , "EncryptionConfiguration" : Nothing
    , "ErrorOutputPrefix" : Nothing
    , "Prefix" : Nothing
    }

type OpenXJsonSerDe =
  { "CaseInsensitive" :: Maybe Boolean
  , "ColumnToJsonKeyMappings" :: Maybe (Object String)
  , "ConvertDotsInJsonKeysToUnderscores" :: Maybe Boolean
  }

openXJsonSerDe :: OpenXJsonSerDe
openXJsonSerDe =
  { "CaseInsensitive" : Nothing
  , "ColumnToJsonKeyMappings" : Nothing
  , "ConvertDotsInJsonKeysToUnderscores" : Nothing
  }

type CopyCommand =
  { "DataTableName" :: String
  , "CopyOptions" :: Maybe String
  , "DataTableColumns" :: Maybe String
  }

copyCommand :: { "DataTableName" :: String } -> CopyCommand
copyCommand required =
  merge required
    { "CopyOptions" : Nothing
    , "DataTableColumns" : Nothing
    }

type Serializer =
  { "OrcSerDe" :: Maybe OrcSerDe
  , "ParquetSerDe" :: Maybe ParquetSerDe
  }

serializer :: Serializer
serializer =
  { "OrcSerDe" : Nothing
  , "ParquetSerDe" : Nothing
  }

type ParquetSerDe =
  { "BlockSizeBytes" :: Maybe Int
  , "Compression" :: Maybe String
  , "EnableDictionaryCompression" :: Maybe Boolean
  , "MaxPaddingBytes" :: Maybe Int
  , "PageSizeBytes" :: Maybe Int
  , "WriterVersion" :: Maybe String
  }

parquetSerDe :: ParquetSerDe
parquetSerDe =
  { "BlockSizeBytes" : Nothing
  , "Compression" : Nothing
  , "EnableDictionaryCompression" : Nothing
  , "MaxPaddingBytes" : Nothing
  , "PageSizeBytes" : Nothing
  , "WriterVersion" : Nothing
  }

type KinesisStreamSourceConfiguration =
  { "KinesisStreamARN" :: String
  , "RoleARN" :: String
  }

kinesisStreamSourceConfiguration :: { "KinesisStreamARN" :: String, "RoleARN" :: String } -> KinesisStreamSourceConfiguration
kinesisStreamSourceConfiguration required =
  required

type Deserializer =
  { "HiveJsonSerDe" :: Maybe HiveJsonSerDe
  , "OpenXJsonSerDe" :: Maybe OpenXJsonSerDe
  }

deserializer :: Deserializer
deserializer =
  { "HiveJsonSerDe" : Nothing
  , "OpenXJsonSerDe" : Nothing
  }

type SplunkRetryOptions =
  { "DurationInSeconds" :: Int
  }

splunkRetryOptions :: { "DurationInSeconds" :: Int } -> SplunkRetryOptions
splunkRetryOptions required =
  required

type SchemaConfiguration =
  { "CatalogId" :: String
  , "DatabaseName" :: String
  , "Region" :: String
  , "RoleARN" :: String
  , "TableName" :: String
  , "VersionId" :: String
  }

schemaConfiguration :: { "CatalogId" :: String, "DatabaseName" :: String, "Region" :: String, "RoleARN" :: String, "TableName" :: String, "VersionId" :: String } -> SchemaConfiguration
schemaConfiguration required =
  required

type ElasticsearchDestinationConfiguration =
  { "BufferingHints" :: ElasticsearchBufferingHints
  , "DomainARN" :: String
  , "IndexName" :: String
  , "IndexRotationPeriod" :: String
  , "RetryOptions" :: ElasticsearchRetryOptions
  , "RoleARN" :: String
  , "S3BackupMode" :: String
  , "S3Configuration" :: S3DestinationConfiguration
  , "TypeName" :: String
  , "CloudWatchLoggingOptions" :: Maybe CloudWatchLoggingOptions
  , "ProcessingConfiguration" :: Maybe ProcessingConfiguration
  }

elasticsearchDestinationConfiguration :: { "BufferingHints" :: ElasticsearchBufferingHints, "DomainARN" :: String, "IndexName" :: String, "IndexRotationPeriod" :: String, "RetryOptions" :: ElasticsearchRetryOptions, "RoleARN" :: String, "S3BackupMode" :: String, "S3Configuration" :: S3DestinationConfiguration, "TypeName" :: String } -> ElasticsearchDestinationConfiguration
elasticsearchDestinationConfiguration required =
  merge required
    { "CloudWatchLoggingOptions" : Nothing
    , "ProcessingConfiguration" : Nothing
    }

type OutputFormatConfiguration =
  { "Serializer" :: Serializer
  }

outputFormatConfiguration :: { "Serializer" :: Serializer } -> OutputFormatConfiguration
outputFormatConfiguration required =
  required

type KMSEncryptionConfig =
  { "AWSKMSKeyARN" :: String
  }

kmseMSEncryptionConfig :: { "AWSKMSKeyARN" :: String } -> KMSEncryptionConfig
kmseMSEncryptionConfig required =
  required

type DataFormatConversionConfiguration =
  { "Enabled" :: Boolean
  , "InputFormatConfiguration" :: InputFormatConfiguration
  , "OutputFormatConfiguration" :: OutputFormatConfiguration
  , "SchemaConfiguration" :: SchemaConfiguration
  }

dataFormatConversionConfiguration :: { "Enabled" :: Boolean, "InputFormatConfiguration" :: InputFormatConfiguration, "OutputFormatConfiguration" :: OutputFormatConfiguration, "SchemaConfiguration" :: SchemaConfiguration } -> DataFormatConversionConfiguration
dataFormatConversionConfiguration required =
  required

type ElasticsearchRetryOptions =
  { "DurationInSeconds" :: Int
  }

elasticsearchRetryOptions :: { "DurationInSeconds" :: Int } -> ElasticsearchRetryOptions
elasticsearchRetryOptions required =
  required

type Processor =
  { "Parameters" :: Array ProcessorParameter
  , "Type" :: String
  }

processor :: { "Parameters" :: Array ProcessorParameter, "Type" :: String } -> Processor
processor required =
  required

type HiveJsonSerDe =
  { "TimestampFormats" :: Maybe (Array String)
  }

hiveJsonSerDe :: HiveJsonSerDe
hiveJsonSerDe =
  { "TimestampFormats" : Nothing
  }

type ProcessorParameter =
  { "ParameterName" :: String
  , "ParameterValue" :: String
  }

processorParameter :: { "ParameterName" :: String, "ParameterValue" :: String } -> ProcessorParameter
processorParameter required =
  required

type BufferingHints =
  { "IntervalInSeconds" :: Int
  , "SizeInMBs" :: Int
  }

bufferingHints :: { "IntervalInSeconds" :: Int, "SizeInMBs" :: Int } -> BufferingHints
bufferingHints required =
  required

type ProcessingConfiguration =
  { "Enabled" :: Maybe Boolean
  , "Processors" :: Maybe (Array Processor)
  }

processingConfiguration :: ProcessingConfiguration
processingConfiguration =
  { "Enabled" : Nothing
  , "Processors" : Nothing
  }

type InputFormatConfiguration =
  { "Deserializer" :: Deserializer
  }

inputFormatConfiguration :: { "Deserializer" :: Deserializer } -> InputFormatConfiguration
inputFormatConfiguration required =
  required

type CloudWatchLoggingOptions =
  { "Enabled" :: Maybe Boolean
  , "LogGroupName" :: Maybe String
  , "LogStreamName" :: Maybe String
  }

cloudWatchLoggingOptions :: CloudWatchLoggingOptions
cloudWatchLoggingOptions =
  { "Enabled" : Nothing
  , "LogGroupName" : Nothing
  , "LogStreamName" : Nothing
  }

type EncryptionConfiguration =
  { "KMSEncryptionConfig" :: Maybe KMSEncryptionConfig
  , "NoEncryptionConfig" :: Maybe String
  }

encryptionConfiguration :: EncryptionConfiguration
encryptionConfiguration =
  { "KMSEncryptionConfig" : Nothing
  , "NoEncryptionConfig" : Nothing
  }

type SplunkDestinationConfiguration =
  { "HECEndpoint" :: String
  , "HECEndpointType" :: String
  , "HECToken" :: String
  , "S3Configuration" :: S3DestinationConfiguration
  , "CloudWatchLoggingOptions" :: Maybe CloudWatchLoggingOptions
  , "HECAcknowledgmentTimeoutInSeconds" :: Maybe Int
  , "ProcessingConfiguration" :: Maybe ProcessingConfiguration
  , "RetryOptions" :: Maybe SplunkRetryOptions
  , "S3BackupMode" :: Maybe String
  }

splunkDestinationConfiguration :: { "HECEndpoint" :: String, "HECEndpointType" :: String, "HECToken" :: String, "S3Configuration" :: S3DestinationConfiguration } -> SplunkDestinationConfiguration
splunkDestinationConfiguration required =
  merge required
    { "CloudWatchLoggingOptions" : Nothing
    , "HECAcknowledgmentTimeoutInSeconds" : Nothing
    , "ProcessingConfiguration" : Nothing
    , "RetryOptions" : Nothing
    , "S3BackupMode" : Nothing
    }

type ElasticsearchBufferingHints =
  { "IntervalInSeconds" :: Int
  , "SizeInMBs" :: Int
  }

elasticsearchBufferingHints :: { "IntervalInSeconds" :: Int, "SizeInMBs" :: Int } -> ElasticsearchBufferingHints
elasticsearchBufferingHints required =
  required

type OrcSerDe =
  { "BlockSizeBytes" :: Maybe Int
  , "BloomFilterColumns" :: Maybe (Array String)
  , "BloomFilterFalsePositiveProbability" :: Maybe Number
  , "Compression" :: Maybe String
  , "DictionaryKeyThreshold" :: Maybe Number
  , "EnablePadding" :: Maybe Boolean
  , "FormatVersion" :: Maybe String
  , "PaddingTolerance" :: Maybe Number
  , "RowIndexStride" :: Maybe Int
  , "StripeSizeBytes" :: Maybe Int
  }

orcSerDe :: OrcSerDe
orcSerDe =
  { "BlockSizeBytes" : Nothing
  , "BloomFilterColumns" : Nothing
  , "BloomFilterFalsePositiveProbability" : Nothing
  , "Compression" : Nothing
  , "DictionaryKeyThreshold" : Nothing
  , "EnablePadding" : Nothing
  , "FormatVersion" : Nothing
  , "PaddingTolerance" : Nothing
  , "RowIndexStride" : Nothing
  , "StripeSizeBytes" : Nothing
  }