module CloudFormation.AWS.KinesisFirehose.DeliveryStream where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign.Object (Object)


-- | `AWS::KinesisFirehose::DeliveryStream`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html-- |
-- | - `DeliveryStreamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-deliverystreamname
-- | - `DeliveryStreamType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-deliverystreamtype
-- | - `ElasticsearchDestinationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration
-- | - `ExtendedS3DestinationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration
-- | - `KinesisStreamSourceConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration
-- | - `RedshiftDestinationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-redshiftdestinationconfiguration
-- | - `S3DestinationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration
-- | - `SplunkDestinationConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration
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

-- | `AWS::KinesisFirehose::DeliveryStream.RedshiftDestinationConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-redshiftdestinationconfiguration.html-- |
-- | - `CloudWatchLoggingOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-redshiftdestinationconfiguration-cloudwatchloggingoptions
-- | - `ClusterJDBCURL`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-redshiftdestinationconfiguration-clusterjdbcurl
-- | - `CopyCommand`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-redshiftdestinationconfiguration-copycommand
-- | - `Password`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-redshiftdestinationconfiguration-password
-- | - `ProcessingConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-redshiftdestinationconfiguration-processingconfiguration
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-redshiftdestinationconfiguration-rolearn
-- | - `S3Configuration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-redshiftdestinationconfiguration-s3configuration
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-redshiftdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-redshiftdestinationconfiguration-username
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

-- | `AWS::KinesisFirehose::DeliveryStream.ExtendedS3DestinationConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html-- |
-- | - `BucketARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-bucketarn
-- | - `BufferingHints`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-bufferinghints
-- | - `CloudWatchLoggingOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-cloudwatchloggingoptions
-- | - `CompressionFormat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-compressionformat
-- | - `DataFormatConversionConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-dataformatconversionconfiguration
-- | - `EncryptionConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-encryptionconfiguration
-- | - `ErrorOutputPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-erroroutputprefix
-- | - `Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-prefix
-- | - `ProcessingConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-processingconfiguration
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-rolearn
-- | - `S3BackupConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-s3backupconfiguration
-- | - `S3BackupMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration-s3backupmode
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

-- | `AWS::KinesisFirehose::DeliveryStream.S3DestinationConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html-- |
-- | - `BucketARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-bucketarn
-- | - `BufferingHints`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-bufferinghints
-- | - `CloudWatchLoggingOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-cloudwatchloggingoptions
-- | - `CompressionFormat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-compressionformat
-- | - `EncryptionConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-encryptionconfiguration
-- | - `ErrorOutputPrefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-erroroutputprefix
-- | - `Prefix`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-prefix
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-rolearn
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

-- | `AWS::KinesisFirehose::DeliveryStream.OpenXJsonSerDe`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html-- |
-- | - `CaseInsensitive`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-caseinsensitive
-- | - `ColumnToJsonKeyMappings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-columntojsonkeymappings
-- | - `ConvertDotsInJsonKeysToUnderscores`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-convertdotsinjsonkeystounderscores
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

-- | `AWS::KinesisFirehose::DeliveryStream.CopyCommand`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html-- |
-- | - `CopyOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html#cfn-kinesisfirehose-deliverystream-copycommand-copyoptions
-- | - `DataTableColumns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html#cfn-kinesisfirehose-deliverystream-copycommand-datatablecolumns
-- | - `DataTableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html#cfn-kinesisfirehose-deliverystream-copycommand-datatablename
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

-- | `AWS::KinesisFirehose::DeliveryStream.Serializer`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html-- |
-- | - `OrcSerDe`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html#cfn-kinesisfirehose-deliverystream-serializer-orcserde
-- | - `ParquetSerDe`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html#cfn-kinesisfirehose-deliverystream-serializer-parquetserde
type Serializer =
  { "OrcSerDe" :: Maybe OrcSerDe
  , "ParquetSerDe" :: Maybe ParquetSerDe
  }

serializer :: Serializer
serializer =
  { "OrcSerDe" : Nothing
  , "ParquetSerDe" : Nothing
  }

-- | `AWS::KinesisFirehose::DeliveryStream.ParquetSerDe`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html-- |
-- | - `BlockSizeBytes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-blocksizebytes
-- | - `Compression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-compression
-- | - `EnableDictionaryCompression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-enabledictionarycompression
-- | - `MaxPaddingBytes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-maxpaddingbytes
-- | - `PageSizeBytes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-pagesizebytes
-- | - `WriterVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html#cfn-kinesisfirehose-deliverystream-parquetserde-writerversion
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

-- | `AWS::KinesisFirehose::DeliveryStream.KinesisStreamSourceConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration.html-- |
-- | - `KinesisStreamARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration.html#cfn-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration-kinesisstreamarn
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration.html#cfn-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration-rolearn
type KinesisStreamSourceConfiguration =
  { "KinesisStreamARN" :: String
  , "RoleARN" :: String
  }

kinesisStreamSourceConfiguration :: { "KinesisStreamARN" :: String, "RoleARN" :: String } -> KinesisStreamSourceConfiguration
kinesisStreamSourceConfiguration required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.Deserializer`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html-- |
-- | - `HiveJsonSerDe`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html#cfn-kinesisfirehose-deliverystream-deserializer-hivejsonserde
-- | - `OpenXJsonSerDe`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html#cfn-kinesisfirehose-deliverystream-deserializer-openxjsonserde
type Deserializer =
  { "HiveJsonSerDe" :: Maybe HiveJsonSerDe
  , "OpenXJsonSerDe" :: Maybe OpenXJsonSerDe
  }

deserializer :: Deserializer
deserializer =
  { "HiveJsonSerDe" : Nothing
  , "OpenXJsonSerDe" : Nothing
  }

-- | `AWS::KinesisFirehose::DeliveryStream.SplunkRetryOptions`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkretryoptions.html-- |
-- | - `DurationInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkretryoptions.html#cfn-kinesisfirehose-deliverystream-splunkretryoptions-durationinseconds
type SplunkRetryOptions =
  { "DurationInSeconds" :: Int
  }

splunkRetryOptions :: { "DurationInSeconds" :: Int } -> SplunkRetryOptions
splunkRetryOptions required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.SchemaConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html-- |
-- | - `CatalogId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-catalogid
-- | - `DatabaseName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-databasename
-- | - `Region`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-region
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-rolearn
-- | - `TableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-tablename
-- | - `VersionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html#cfn-kinesisfirehose-deliverystream-schemaconfiguration-versionid
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

-- | `AWS::KinesisFirehose::DeliveryStream.ElasticsearchDestinationConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html-- |
-- | - `BufferingHints`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-bufferinghints
-- | - `CloudWatchLoggingOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-cloudwatchloggingoptions
-- | - `DomainARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-domainarn
-- | - `IndexName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-indexname
-- | - `IndexRotationPeriod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-indexrotationperiod
-- | - `ProcessingConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-processingconfiguration
-- | - `RetryOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-retryoptions
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-rolearn
-- | - `S3BackupMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-s3backupmode
-- | - `S3Configuration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-s3configuration
-- | - `TypeName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration-typename
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

-- | `AWS::KinesisFirehose::DeliveryStream.OutputFormatConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-outputformatconfiguration.html-- |
-- | - `Serializer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-outputformatconfiguration.html#cfn-kinesisfirehose-deliverystream-outputformatconfiguration-serializer
type OutputFormatConfiguration =
  { "Serializer" :: Serializer
  }

outputFormatConfiguration :: { "Serializer" :: Serializer } -> OutputFormatConfiguration
outputFormatConfiguration required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.KMSEncryptionConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kmsencryptionconfig.html-- |
-- | - `AWSKMSKeyARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kmsencryptionconfig.html#cfn-kinesisfirehose-deliverystream-kmsencryptionconfig-awskmskeyarn
type KMSEncryptionConfig =
  { "AWSKMSKeyARN" :: String
  }

kmseMSEncryptionConfig :: { "AWSKMSKeyARN" :: String } -> KMSEncryptionConfig
kmseMSEncryptionConfig required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.DataFormatConversionConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-enabled
-- | - `InputFormatConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-inputformatconfiguration
-- | - `OutputFormatConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-outputformatconfiguration
-- | - `SchemaConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-schemaconfiguration
type DataFormatConversionConfiguration =
  { "Enabled" :: Boolean
  , "InputFormatConfiguration" :: InputFormatConfiguration
  , "OutputFormatConfiguration" :: OutputFormatConfiguration
  , "SchemaConfiguration" :: SchemaConfiguration
  }

dataFormatConversionConfiguration :: { "Enabled" :: Boolean, "InputFormatConfiguration" :: InputFormatConfiguration, "OutputFormatConfiguration" :: OutputFormatConfiguration, "SchemaConfiguration" :: SchemaConfiguration } -> DataFormatConversionConfiguration
dataFormatConversionConfiguration required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.ElasticsearchRetryOptions`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html-- |
-- | - `DurationInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html#cfn-kinesisfirehose-deliverystream-elasticsearchretryoptions-durationinseconds
type ElasticsearchRetryOptions =
  { "DurationInSeconds" :: Int
  }

elasticsearchRetryOptions :: { "DurationInSeconds" :: Int } -> ElasticsearchRetryOptions
elasticsearchRetryOptions required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.Processor`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processor.html-- |
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processor.html#cfn-kinesisfirehose-deliverystream-processor-parameters
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processor.html#cfn-kinesisfirehose-deliverystream-processor-type
type Processor =
  { "Parameters" :: Array ProcessorParameter
  , "Type" :: String
  }

processor :: { "Parameters" :: Array ProcessorParameter, "Type" :: String } -> Processor
processor required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.HiveJsonSerDe`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-hivejsonserde.html-- |
-- | - `TimestampFormats`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-hivejsonserde.html#cfn-kinesisfirehose-deliverystream-hivejsonserde-timestampformats
type HiveJsonSerDe =
  { "TimestampFormats" :: Maybe (Array String)
  }

hiveJsonSerDe :: HiveJsonSerDe
hiveJsonSerDe =
  { "TimestampFormats" : Nothing
  }

-- | `AWS::KinesisFirehose::DeliveryStream.ProcessorParameter`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processorparameter.html-- |
-- | - `ParameterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processorparameter.html#cfn-kinesisfirehose-deliverystream-processorparameter-parametername
-- | - `ParameterValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processorparameter.html#cfn-kinesisfirehose-deliverystream-processorparameter-parametervalue
type ProcessorParameter =
  { "ParameterName" :: String
  , "ParameterValue" :: String
  }

processorParameter :: { "ParameterName" :: String, "ParameterValue" :: String } -> ProcessorParameter
processorParameter required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.BufferingHints`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html-- |
-- | - `IntervalInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html#cfn-kinesisfirehose-deliverystream-bufferinghints-intervalinseconds
-- | - `SizeInMBs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html#cfn-kinesisfirehose-deliverystream-bufferinghints-sizeinmbs
type BufferingHints =
  { "IntervalInSeconds" :: Int
  , "SizeInMBs" :: Int
  }

bufferingHints :: { "IntervalInSeconds" :: Int, "SizeInMBs" :: Int } -> BufferingHints
bufferingHints required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.ProcessingConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html#cfn-kinesisfirehose-deliverystream-processingconfiguration-enabled
-- | - `Processors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html#cfn-kinesisfirehose-deliverystream-processingconfiguration-processors
type ProcessingConfiguration =
  { "Enabled" :: Maybe Boolean
  , "Processors" :: Maybe (Array Processor)
  }

processingConfiguration :: ProcessingConfiguration
processingConfiguration =
  { "Enabled" : Nothing
  , "Processors" : Nothing
  }

-- | `AWS::KinesisFirehose::DeliveryStream.InputFormatConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-inputformatconfiguration.html-- |
-- | - `Deserializer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-inputformatconfiguration.html#cfn-kinesisfirehose-deliverystream-inputformatconfiguration-deserializer
type InputFormatConfiguration =
  { "Deserializer" :: Deserializer
  }

inputFormatConfiguration :: { "Deserializer" :: Deserializer } -> InputFormatConfiguration
inputFormatConfiguration required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.CloudWatchLoggingOptions`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-enabled
-- | - `LogGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-loggroupname
-- | - `LogStreamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-logstreamname
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

-- | `AWS::KinesisFirehose::DeliveryStream.EncryptionConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-encryptionconfiguration.html-- |
-- | - `KMSEncryptionConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-encryptionconfiguration.html#cfn-kinesisfirehose-deliverystream-encryptionconfiguration-kmsencryptionconfig
-- | - `NoEncryptionConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-encryptionconfiguration.html#cfn-kinesisfirehose-deliverystream-encryptionconfiguration-noencryptionconfig
type EncryptionConfiguration =
  { "KMSEncryptionConfig" :: Maybe KMSEncryptionConfig
  , "NoEncryptionConfig" :: Maybe String
  }

encryptionConfiguration :: EncryptionConfiguration
encryptionConfiguration =
  { "KMSEncryptionConfig" : Nothing
  , "NoEncryptionConfig" : Nothing
  }

-- | `AWS::KinesisFirehose::DeliveryStream.SplunkDestinationConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html-- |
-- | - `CloudWatchLoggingOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-cloudwatchloggingoptions
-- | - `HECAcknowledgmentTimeoutInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-hecacknowledgmenttimeoutinseconds
-- | - `HECEndpoint`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-hecendpoint
-- | - `HECEndpointType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-hecendpointtype
-- | - `HECToken`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-hectoken
-- | - `ProcessingConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-processingconfiguration
-- | - `RetryOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-retryoptions
-- | - `S3BackupMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-s3backupmode
-- | - `S3Configuration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration-s3configuration
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

-- | `AWS::KinesisFirehose::DeliveryStream.ElasticsearchBufferingHints`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchbufferinghints.html-- |
-- | - `IntervalInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchbufferinghints.html#cfn-kinesisfirehose-deliverystream-elasticsearchbufferinghints-intervalinseconds
-- | - `SizeInMBs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchbufferinghints.html#cfn-kinesisfirehose-deliverystream-elasticsearchbufferinghints-sizeinmbs
type ElasticsearchBufferingHints =
  { "IntervalInSeconds" :: Int
  , "SizeInMBs" :: Int
  }

elasticsearchBufferingHints :: { "IntervalInSeconds" :: Int, "SizeInMBs" :: Int } -> ElasticsearchBufferingHints
elasticsearchBufferingHints required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.OrcSerDe`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html-- |
-- | - `BlockSizeBytes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-blocksizebytes
-- | - `BloomFilterColumns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-bloomfiltercolumns
-- | - `BloomFilterFalsePositiveProbability`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-bloomfilterfalsepositiveprobability
-- | - `Compression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-compression
-- | - `DictionaryKeyThreshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-dictionarykeythreshold
-- | - `EnablePadding`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-enablepadding
-- | - `FormatVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-formatversion
-- | - `PaddingTolerance`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-paddingtolerance
-- | - `RowIndexStride`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-rowindexstride
-- | - `StripeSizeBytes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html#cfn-kinesisfirehose-deliverystream-orcserde-stripesizebytes
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