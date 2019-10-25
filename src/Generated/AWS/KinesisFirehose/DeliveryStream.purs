module CloudFormation.AWS.KinesisFirehose.DeliveryStream where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Record (merge)
import Foreign.Object (Object)


-- | `AWS::KinesisFirehose::DeliveryStream`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html
-- |
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
newtype DeliveryStream = DeliveryStream
  { "DeliveryStreamName" :: Maybe (Value String)
  , "DeliveryStreamType" :: Maybe (Value String)
  , "ElasticsearchDestinationConfiguration" :: Maybe (Value ElasticsearchDestinationConfiguration)
  , "ExtendedS3DestinationConfiguration" :: Maybe (Value ExtendedS3DestinationConfiguration)
  , "KinesisStreamSourceConfiguration" :: Maybe (Value KinesisStreamSourceConfiguration)
  , "RedshiftDestinationConfiguration" :: Maybe (Value RedshiftDestinationConfiguration)
  , "S3DestinationConfiguration" :: Maybe (Value S3DestinationConfiguration)
  , "SplunkDestinationConfiguration" :: Maybe (Value SplunkDestinationConfiguration)
  }

derive instance newtypeDeliveryStream :: Newtype DeliveryStream _
derive newtype instance writeDeliveryStream :: WriteForeign DeliveryStream
instance resourceDeliveryStream :: Resource DeliveryStream where type_ _ = "AWS::KinesisFirehose::DeliveryStream"

deliveryStream :: DeliveryStream
deliveryStream = DeliveryStream
  { "DeliveryStreamName" : Nothing
  , "DeliveryStreamType" : Nothing
  , "ElasticsearchDestinationConfiguration" : Nothing
  , "ExtendedS3DestinationConfiguration" : Nothing
  , "KinesisStreamSourceConfiguration" : Nothing
  , "RedshiftDestinationConfiguration" : Nothing
  , "S3DestinationConfiguration" : Nothing
  , "SplunkDestinationConfiguration" : Nothing
  }

-- | `AWS::KinesisFirehose::DeliveryStream.RedshiftDestinationConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-redshiftdestinationconfiguration.html
-- |
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
  { "ClusterJDBCURL" :: Value String
  , "CopyCommand" :: Value CopyCommand
  , "Password" :: Value String
  , "RoleARN" :: Value String
  , "S3Configuration" :: Value S3DestinationConfiguration
  , "Username" :: Value String
  , "CloudWatchLoggingOptions" :: Maybe (Value CloudWatchLoggingOptions)
  , "ProcessingConfiguration" :: Maybe (Value ProcessingConfiguration)
  }

redshiftDestinationConfiguration :: { "ClusterJDBCURL" :: Value String, "CopyCommand" :: Value CopyCommand, "Password" :: Value String, "RoleARN" :: Value String, "S3Configuration" :: Value S3DestinationConfiguration, "Username" :: Value String } -> RedshiftDestinationConfiguration
redshiftDestinationConfiguration required =
  (merge required
    { "CloudWatchLoggingOptions" : Nothing
    , "ProcessingConfiguration" : Nothing
    })

-- | `AWS::KinesisFirehose::DeliveryStream.ExtendedS3DestinationConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-extendeds3destinationconfiguration.html
-- |
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
  { "BucketARN" :: Value String
  , "BufferingHints" :: Value BufferingHints
  , "CompressionFormat" :: Value String
  , "RoleARN" :: Value String
  , "CloudWatchLoggingOptions" :: Maybe (Value CloudWatchLoggingOptions)
  , "DataFormatConversionConfiguration" :: Maybe (Value DataFormatConversionConfiguration)
  , "EncryptionConfiguration" :: Maybe (Value EncryptionConfiguration)
  , "ErrorOutputPrefix" :: Maybe (Value String)
  , "Prefix" :: Maybe (Value String)
  , "ProcessingConfiguration" :: Maybe (Value ProcessingConfiguration)
  , "S3BackupConfiguration" :: Maybe (Value S3DestinationConfiguration)
  , "S3BackupMode" :: Maybe (Value String)
  }

extendedS3DestinationConfiguration :: { "BucketARN" :: Value String, "BufferingHints" :: Value BufferingHints, "CompressionFormat" :: Value String, "RoleARN" :: Value String } -> ExtendedS3DestinationConfiguration
extendedS3DestinationConfiguration required =
  (merge required
    { "CloudWatchLoggingOptions" : Nothing
    , "DataFormatConversionConfiguration" : Nothing
    , "EncryptionConfiguration" : Nothing
    , "ErrorOutputPrefix" : Nothing
    , "Prefix" : Nothing
    , "ProcessingConfiguration" : Nothing
    , "S3BackupConfiguration" : Nothing
    , "S3BackupMode" : Nothing
    })

-- | `AWS::KinesisFirehose::DeliveryStream.S3DestinationConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html
-- |
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
  { "BucketARN" :: Value String
  , "BufferingHints" :: Value BufferingHints
  , "CompressionFormat" :: Value String
  , "RoleARN" :: Value String
  , "CloudWatchLoggingOptions" :: Maybe (Value CloudWatchLoggingOptions)
  , "EncryptionConfiguration" :: Maybe (Value EncryptionConfiguration)
  , "ErrorOutputPrefix" :: Maybe (Value String)
  , "Prefix" :: Maybe (Value String)
  }

s3DestinationConfiguration :: { "BucketARN" :: Value String, "BufferingHints" :: Value BufferingHints, "CompressionFormat" :: Value String, "RoleARN" :: Value String } -> S3DestinationConfiguration
s3DestinationConfiguration required =
  (merge required
    { "CloudWatchLoggingOptions" : Nothing
    , "EncryptionConfiguration" : Nothing
    , "ErrorOutputPrefix" : Nothing
    , "Prefix" : Nothing
    })

-- | `AWS::KinesisFirehose::DeliveryStream.OpenXJsonSerDe`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html
-- |
-- | - `CaseInsensitive`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-caseinsensitive
-- | - `ColumnToJsonKeyMappings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-columntojsonkeymappings
-- | - `ConvertDotsInJsonKeysToUnderscores`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-openxjsonserde.html#cfn-kinesisfirehose-deliverystream-openxjsonserde-convertdotsinjsonkeystounderscores
type OpenXJsonSerDe =
  { "CaseInsensitive" :: Maybe (Value Boolean)
  , "ColumnToJsonKeyMappings" :: Maybe (Value (Object String))
  , "ConvertDotsInJsonKeysToUnderscores" :: Maybe (Value Boolean)
  }

openXJsonSerDe :: OpenXJsonSerDe
openXJsonSerDe =
  { "CaseInsensitive" : Nothing
  , "ColumnToJsonKeyMappings" : Nothing
  , "ConvertDotsInJsonKeysToUnderscores" : Nothing
  }

-- | `AWS::KinesisFirehose::DeliveryStream.CopyCommand`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html
-- |
-- | - `CopyOptions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html#cfn-kinesisfirehose-deliverystream-copycommand-copyoptions
-- | - `DataTableColumns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html#cfn-kinesisfirehose-deliverystream-copycommand-datatablecolumns
-- | - `DataTableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-copycommand.html#cfn-kinesisfirehose-deliverystream-copycommand-datatablename
type CopyCommand =
  { "DataTableName" :: Value String
  , "CopyOptions" :: Maybe (Value String)
  , "DataTableColumns" :: Maybe (Value String)
  }

copyCommand :: { "DataTableName" :: Value String } -> CopyCommand
copyCommand required =
  (merge required
    { "CopyOptions" : Nothing
    , "DataTableColumns" : Nothing
    })

-- | `AWS::KinesisFirehose::DeliveryStream.Serializer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html
-- |
-- | - `OrcSerDe`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html#cfn-kinesisfirehose-deliverystream-serializer-orcserde
-- | - `ParquetSerDe`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-serializer.html#cfn-kinesisfirehose-deliverystream-serializer-parquetserde
type Serializer =
  { "OrcSerDe" :: Maybe (Value OrcSerDe)
  , "ParquetSerDe" :: Maybe (Value ParquetSerDe)
  }

serializer :: Serializer
serializer =
  { "OrcSerDe" : Nothing
  , "ParquetSerDe" : Nothing
  }

-- | `AWS::KinesisFirehose::DeliveryStream.ParquetSerDe`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-parquetserde.html
-- |
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
  { "BlockSizeBytes" :: Maybe (Value Int)
  , "Compression" :: Maybe (Value String)
  , "EnableDictionaryCompression" :: Maybe (Value Boolean)
  , "MaxPaddingBytes" :: Maybe (Value Int)
  , "PageSizeBytes" :: Maybe (Value Int)
  , "WriterVersion" :: Maybe (Value String)
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

-- | `AWS::KinesisFirehose::DeliveryStream.KinesisStreamSourceConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration.html
-- |
-- | - `KinesisStreamARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration.html#cfn-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration-kinesisstreamarn
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration.html#cfn-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration-rolearn
type KinesisStreamSourceConfiguration =
  { "KinesisStreamARN" :: Value String
  , "RoleARN" :: Value String
  }

kinesisStreamSourceConfiguration :: { "KinesisStreamARN" :: Value String, "RoleARN" :: Value String } -> KinesisStreamSourceConfiguration
kinesisStreamSourceConfiguration required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.Deserializer`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html
-- |
-- | - `HiveJsonSerDe`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html#cfn-kinesisfirehose-deliverystream-deserializer-hivejsonserde
-- | - `OpenXJsonSerDe`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-deserializer.html#cfn-kinesisfirehose-deliverystream-deserializer-openxjsonserde
type Deserializer =
  { "HiveJsonSerDe" :: Maybe (Value HiveJsonSerDe)
  , "OpenXJsonSerDe" :: Maybe (Value OpenXJsonSerDe)
  }

deserializer :: Deserializer
deserializer =
  { "HiveJsonSerDe" : Nothing
  , "OpenXJsonSerDe" : Nothing
  }

-- | `AWS::KinesisFirehose::DeliveryStream.SplunkRetryOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkretryoptions.html
-- |
-- | - `DurationInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkretryoptions.html#cfn-kinesisfirehose-deliverystream-splunkretryoptions-durationinseconds
type SplunkRetryOptions =
  { "DurationInSeconds" :: Value Int
  }

splunkRetryOptions :: { "DurationInSeconds" :: Value Int } -> SplunkRetryOptions
splunkRetryOptions required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.SchemaConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-schemaconfiguration.html
-- |
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
  { "CatalogId" :: Value String
  , "DatabaseName" :: Value String
  , "Region" :: Value String
  , "RoleARN" :: Value String
  , "TableName" :: Value String
  , "VersionId" :: Value String
  }

schemaConfiguration :: { "CatalogId" :: Value String, "DatabaseName" :: Value String, "Region" :: Value String, "RoleARN" :: Value String, "TableName" :: Value String, "VersionId" :: Value String } -> SchemaConfiguration
schemaConfiguration required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.ElasticsearchDestinationConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration.html
-- |
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
  { "BufferingHints" :: Value ElasticsearchBufferingHints
  , "DomainARN" :: Value String
  , "IndexName" :: Value String
  , "IndexRotationPeriod" :: Value String
  , "RetryOptions" :: Value ElasticsearchRetryOptions
  , "RoleARN" :: Value String
  , "S3BackupMode" :: Value String
  , "S3Configuration" :: Value S3DestinationConfiguration
  , "TypeName" :: Value String
  , "CloudWatchLoggingOptions" :: Maybe (Value CloudWatchLoggingOptions)
  , "ProcessingConfiguration" :: Maybe (Value ProcessingConfiguration)
  }

elasticsearchDestinationConfiguration :: { "BufferingHints" :: Value ElasticsearchBufferingHints, "DomainARN" :: Value String, "IndexName" :: Value String, "IndexRotationPeriod" :: Value String, "RetryOptions" :: Value ElasticsearchRetryOptions, "RoleARN" :: Value String, "S3BackupMode" :: Value String, "S3Configuration" :: Value S3DestinationConfiguration, "TypeName" :: Value String } -> ElasticsearchDestinationConfiguration
elasticsearchDestinationConfiguration required =
  (merge required
    { "CloudWatchLoggingOptions" : Nothing
    , "ProcessingConfiguration" : Nothing
    })

-- | `AWS::KinesisFirehose::DeliveryStream.OutputFormatConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-outputformatconfiguration.html
-- |
-- | - `Serializer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-outputformatconfiguration.html#cfn-kinesisfirehose-deliverystream-outputformatconfiguration-serializer
type OutputFormatConfiguration =
  { "Serializer" :: Value Serializer
  }

outputFormatConfiguration :: { "Serializer" :: Value Serializer } -> OutputFormatConfiguration
outputFormatConfiguration required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.KMSEncryptionConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kmsencryptionconfig.html
-- |
-- | - `AWSKMSKeyARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kmsencryptionconfig.html#cfn-kinesisfirehose-deliverystream-kmsencryptionconfig-awskmskeyarn
type KMSEncryptionConfig =
  { "AWSKMSKeyARN" :: Value String
  }

kmseMSEncryptionConfig :: { "AWSKMSKeyARN" :: Value String } -> KMSEncryptionConfig
kmseMSEncryptionConfig required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.DataFormatConversionConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html
-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-enabled
-- | - `InputFormatConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-inputformatconfiguration
-- | - `OutputFormatConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-outputformatconfiguration
-- | - `SchemaConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-schemaconfiguration
type DataFormatConversionConfiguration =
  { "Enabled" :: Value Boolean
  , "InputFormatConfiguration" :: Value InputFormatConfiguration
  , "OutputFormatConfiguration" :: Value OutputFormatConfiguration
  , "SchemaConfiguration" :: Value SchemaConfiguration
  }

dataFormatConversionConfiguration :: { "Enabled" :: Value Boolean, "InputFormatConfiguration" :: Value InputFormatConfiguration, "OutputFormatConfiguration" :: Value OutputFormatConfiguration, "SchemaConfiguration" :: Value SchemaConfiguration } -> DataFormatConversionConfiguration
dataFormatConversionConfiguration required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.ElasticsearchRetryOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html
-- |
-- | - `DurationInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchretryoptions.html#cfn-kinesisfirehose-deliverystream-elasticsearchretryoptions-durationinseconds
type ElasticsearchRetryOptions =
  { "DurationInSeconds" :: Value Int
  }

elasticsearchRetryOptions :: { "DurationInSeconds" :: Value Int } -> ElasticsearchRetryOptions
elasticsearchRetryOptions required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.Processor`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processor.html
-- |
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processor.html#cfn-kinesisfirehose-deliverystream-processor-parameters
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processor.html#cfn-kinesisfirehose-deliverystream-processor-type
type Processor =
  { "Parameters" :: Value (Array ProcessorParameter)
  , "Type" :: Value String
  }

processor :: { "Parameters" :: Value (Array ProcessorParameter), "Type" :: Value String } -> Processor
processor required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.HiveJsonSerDe`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-hivejsonserde.html
-- |
-- | - `TimestampFormats`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-hivejsonserde.html#cfn-kinesisfirehose-deliverystream-hivejsonserde-timestampformats
type HiveJsonSerDe =
  { "TimestampFormats" :: Maybe (Value (Array String))
  }

hiveJsonSerDe :: HiveJsonSerDe
hiveJsonSerDe =
  { "TimestampFormats" : Nothing
  }

-- | `AWS::KinesisFirehose::DeliveryStream.ProcessorParameter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processorparameter.html
-- |
-- | - `ParameterName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processorparameter.html#cfn-kinesisfirehose-deliverystream-processorparameter-parametername
-- | - `ParameterValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processorparameter.html#cfn-kinesisfirehose-deliverystream-processorparameter-parametervalue
type ProcessorParameter =
  { "ParameterName" :: Value String
  , "ParameterValue" :: Value String
  }

processorParameter :: { "ParameterName" :: Value String, "ParameterValue" :: Value String } -> ProcessorParameter
processorParameter required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.BufferingHints`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html
-- |
-- | - `IntervalInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html#cfn-kinesisfirehose-deliverystream-bufferinghints-intervalinseconds
-- | - `SizeInMBs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-bufferinghints.html#cfn-kinesisfirehose-deliverystream-bufferinghints-sizeinmbs
type BufferingHints =
  { "IntervalInSeconds" :: Value Int
  , "SizeInMBs" :: Value Int
  }

bufferingHints :: { "IntervalInSeconds" :: Value Int, "SizeInMBs" :: Value Int } -> BufferingHints
bufferingHints required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.ProcessingConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html
-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html#cfn-kinesisfirehose-deliverystream-processingconfiguration-enabled
-- | - `Processors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html#cfn-kinesisfirehose-deliverystream-processingconfiguration-processors
type ProcessingConfiguration =
  { "Enabled" :: Maybe (Value Boolean)
  , "Processors" :: Maybe (Value (Array Processor))
  }

processingConfiguration :: ProcessingConfiguration
processingConfiguration =
  { "Enabled" : Nothing
  , "Processors" : Nothing
  }

-- | `AWS::KinesisFirehose::DeliveryStream.InputFormatConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-inputformatconfiguration.html
-- |
-- | - `Deserializer`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-inputformatconfiguration.html#cfn-kinesisfirehose-deliverystream-inputformatconfiguration-deserializer
type InputFormatConfiguration =
  { "Deserializer" :: Value Deserializer
  }

inputFormatConfiguration :: { "Deserializer" :: Value Deserializer } -> InputFormatConfiguration
inputFormatConfiguration required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.CloudWatchLoggingOptions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html
-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-enabled
-- | - `LogGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-loggroupname
-- | - `LogStreamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-cloudwatchloggingoptions.html#cfn-kinesisfirehose-deliverystream-cloudwatchloggingoptions-logstreamname
type CloudWatchLoggingOptions =
  { "Enabled" :: Maybe (Value Boolean)
  , "LogGroupName" :: Maybe (Value String)
  , "LogStreamName" :: Maybe (Value String)
  }

cloudWatchLoggingOptions :: CloudWatchLoggingOptions
cloudWatchLoggingOptions =
  { "Enabled" : Nothing
  , "LogGroupName" : Nothing
  , "LogStreamName" : Nothing
  }

-- | `AWS::KinesisFirehose::DeliveryStream.EncryptionConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-encryptionconfiguration.html
-- |
-- | - `KMSEncryptionConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-encryptionconfiguration.html#cfn-kinesisfirehose-deliverystream-encryptionconfiguration-kmsencryptionconfig
-- | - `NoEncryptionConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-encryptionconfiguration.html#cfn-kinesisfirehose-deliverystream-encryptionconfiguration-noencryptionconfig
type EncryptionConfiguration =
  { "KMSEncryptionConfig" :: Maybe (Value KMSEncryptionConfig)
  , "NoEncryptionConfig" :: Maybe (Value String)
  }

encryptionConfiguration :: EncryptionConfiguration
encryptionConfiguration =
  { "KMSEncryptionConfig" : Nothing
  , "NoEncryptionConfig" : Nothing
  }

-- | `AWS::KinesisFirehose::DeliveryStream.SplunkDestinationConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-splunkdestinationconfiguration.html
-- |
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
  { "HECEndpoint" :: Value String
  , "HECEndpointType" :: Value String
  , "HECToken" :: Value String
  , "S3Configuration" :: Value S3DestinationConfiguration
  , "CloudWatchLoggingOptions" :: Maybe (Value CloudWatchLoggingOptions)
  , "HECAcknowledgmentTimeoutInSeconds" :: Maybe (Value Int)
  , "ProcessingConfiguration" :: Maybe (Value ProcessingConfiguration)
  , "RetryOptions" :: Maybe (Value SplunkRetryOptions)
  , "S3BackupMode" :: Maybe (Value String)
  }

splunkDestinationConfiguration :: { "HECEndpoint" :: Value String, "HECEndpointType" :: Value String, "HECToken" :: Value String, "S3Configuration" :: Value S3DestinationConfiguration } -> SplunkDestinationConfiguration
splunkDestinationConfiguration required =
  (merge required
    { "CloudWatchLoggingOptions" : Nothing
    , "HECAcknowledgmentTimeoutInSeconds" : Nothing
    , "ProcessingConfiguration" : Nothing
    , "RetryOptions" : Nothing
    , "S3BackupMode" : Nothing
    })

-- | `AWS::KinesisFirehose::DeliveryStream.ElasticsearchBufferingHints`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchbufferinghints.html
-- |
-- | - `IntervalInSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchbufferinghints.html#cfn-kinesisfirehose-deliverystream-elasticsearchbufferinghints-intervalinseconds
-- | - `SizeInMBs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-elasticsearchbufferinghints.html#cfn-kinesisfirehose-deliverystream-elasticsearchbufferinghints-sizeinmbs
type ElasticsearchBufferingHints =
  { "IntervalInSeconds" :: Value Int
  , "SizeInMBs" :: Value Int
  }

elasticsearchBufferingHints :: { "IntervalInSeconds" :: Value Int, "SizeInMBs" :: Value Int } -> ElasticsearchBufferingHints
elasticsearchBufferingHints required =
  required

-- | `AWS::KinesisFirehose::DeliveryStream.OrcSerDe`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-orcserde.html
-- |
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
  { "BlockSizeBytes" :: Maybe (Value Int)
  , "BloomFilterColumns" :: Maybe (Value (Array String))
  , "BloomFilterFalsePositiveProbability" :: Maybe (Value Number)
  , "Compression" :: Maybe (Value String)
  , "DictionaryKeyThreshold" :: Maybe (Value Number)
  , "EnablePadding" :: Maybe (Value Boolean)
  , "FormatVersion" :: Maybe (Value String)
  , "PaddingTolerance" :: Maybe (Value Number)
  , "RowIndexStride" :: Maybe (Value Int)
  , "StripeSizeBytes" :: Maybe (Value Int)
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