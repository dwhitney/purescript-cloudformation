module CloudFormation.AWS.KinesisAnalyticsV2.ApplicationReferenceDataSource where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationreferencedatasource.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationreferencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-applicationname
-- | - `ReferenceDataSource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationreferencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource
newtype ApplicationReferenceDataSource = ApplicationReferenceDataSource
  { "ApplicationName" :: Value String
  , "ReferenceDataSource" :: Value ReferenceDataSource
  }

derive instance newtypeApplicationReferenceDataSource :: Newtype ApplicationReferenceDataSource _
derive newtype instance writeApplicationReferenceDataSource :: WriteForeign ApplicationReferenceDataSource
instance resourceApplicationReferenceDataSource :: Resource ApplicationReferenceDataSource where type_ _ = "AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource"

applicationReferenceDataSource :: { "ApplicationName" :: Value String, "ReferenceDataSource" :: Value ReferenceDataSource } -> ApplicationReferenceDataSource
applicationReferenceDataSource required = ApplicationReferenceDataSource
  required

-- | `AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.CSVMappingParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters.html
-- |
-- | - `RecordRowDelimiter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters-recordrowdelimiter
-- | - `RecordColumnDelimiter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters-recordcolumndelimiter
type CSVMappingParameters =
  { "RecordRowDelimiter" :: Value String
  , "RecordColumnDelimiter" :: Value String
  }

csvmSVMappingParameters :: { "RecordRowDelimiter" :: Value String, "RecordColumnDelimiter" :: Value String } -> CSVMappingParameters
csvmSVMappingParameters required =
  required

-- | `AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.ReferenceSchema`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referenceschema.html
-- |
-- | - `RecordEncoding`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referenceschema-recordencoding
-- | - `RecordColumns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referenceschema-recordcolumns
-- | - `RecordFormat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referenceschema-recordformat
type ReferenceSchema =
  { "RecordColumns" :: Value (Array RecordColumn)
  , "RecordFormat" :: Value RecordFormat
  , "RecordEncoding" :: Maybe (Value String)
  }

referenceSchema :: { "RecordColumns" :: Value (Array RecordColumn), "RecordFormat" :: Value RecordFormat } -> ReferenceSchema
referenceSchema required =
  (merge required
    { "RecordEncoding" : Nothing
    })

-- | `AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.S3ReferenceDataSource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource.html
-- |
-- | - `BucketARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource-bucketarn
-- | - `FileKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource-filekey
type S3ReferenceDataSource =
  { "BucketARN" :: Value String
  , "FileKey" :: Value String
  }

s3ReferenceDataSource :: { "BucketARN" :: Value String, "FileKey" :: Value String } -> S3ReferenceDataSource
s3ReferenceDataSource required =
  required

-- | `AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.MappingParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters.html
-- |
-- | - `JSONMappingParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters-jsonmappingparameters
-- | - `CSVMappingParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters-csvmappingparameters
type MappingParameters =
  { "JSONMappingParameters" :: Maybe (Value JSONMappingParameters)
  , "CSVMappingParameters" :: Maybe (Value CSVMappingParameters)
  }

mappingParameters :: MappingParameters
mappingParameters =
  { "JSONMappingParameters" : Nothing
  , "CSVMappingParameters" : Nothing
  }

-- | `AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.ReferenceDataSource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource.html
-- |
-- | - `ReferenceSchema`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource-referenceschema
-- | - `TableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource-tablename
-- | - `S3ReferenceDataSource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource-s3referencedatasource
type ReferenceDataSource =
  { "ReferenceSchema" :: Value ReferenceSchema
  , "TableName" :: Maybe (Value String)
  , "S3ReferenceDataSource" :: Maybe (Value S3ReferenceDataSource)
  }

referenceDataSource :: { "ReferenceSchema" :: Value ReferenceSchema } -> ReferenceDataSource
referenceDataSource required =
  (merge required
    { "TableName" : Nothing
    , "S3ReferenceDataSource" : Nothing
    })

-- | `AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.JSONMappingParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-jsonmappingparameters.html
-- |
-- | - `RecordRowPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-jsonmappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-jsonmappingparameters-recordrowpath
type JSONMappingParameters =
  { "RecordRowPath" :: Value String
  }

jsonmSONMappingParameters :: { "RecordRowPath" :: Value String } -> JSONMappingParameters
jsonmSONMappingParameters required =
  required

-- | `AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.RecordFormat`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordformat.html
-- |
-- | - `MappingParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordformat.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordformat-mappingparameters
-- | - `RecordFormatType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordformat.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordformat-recordformattype
type RecordFormat =
  { "RecordFormatType" :: Value String
  , "MappingParameters" :: Maybe (Value MappingParameters)
  }

recordFormat :: { "RecordFormatType" :: Value String } -> RecordFormat
recordFormat required =
  (merge required
    { "MappingParameters" : Nothing
    })

-- | `AWS::KinesisAnalyticsV2::ApplicationReferenceDataSource.RecordColumn`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn.html
-- |
-- | - `Mapping`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn-mapping
-- | - `SqlType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn-sqltype
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordcolumn-name
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