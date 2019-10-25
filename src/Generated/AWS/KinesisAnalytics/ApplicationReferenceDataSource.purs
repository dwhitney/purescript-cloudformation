module CloudFormation.AWS.KinesisAnalytics.ApplicationReferenceDataSource where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::KinesisAnalytics::ApplicationReferenceDataSource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationreferencedatasource.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationreferencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-applicationname
-- | - `ReferenceDataSource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalytics-applicationreferencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource
newtype ApplicationReferenceDataSource = ApplicationReferenceDataSource
  { "ApplicationName" :: Value String
  , "ReferenceDataSource" :: Value ReferenceDataSource
  }

derive instance newtypeApplicationReferenceDataSource :: Newtype ApplicationReferenceDataSource _
derive newtype instance writeApplicationReferenceDataSource :: WriteForeign ApplicationReferenceDataSource
instance resourceApplicationReferenceDataSource :: Resource ApplicationReferenceDataSource where type_ _ = "AWS::KinesisAnalytics::ApplicationReferenceDataSource"

applicationReferenceDataSource :: { "ApplicationName" :: Value String, "ReferenceDataSource" :: Value ReferenceDataSource } -> ApplicationReferenceDataSource
applicationReferenceDataSource required = ApplicationReferenceDataSource
  required

-- | `AWS::KinesisAnalytics::ApplicationReferenceDataSource.ReferenceDataSource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html
-- |
-- | - `ReferenceSchema`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-referenceschema
-- | - `TableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-tablename
-- | - `S3ReferenceDataSource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-s3referencedatasource
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

-- | `AWS::KinesisAnalytics::ApplicationReferenceDataSource.ReferenceSchema`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html
-- |
-- | - `RecordEncoding`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordencoding
-- | - `RecordColumns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordcolumns
-- | - `RecordFormat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordformat
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

-- | `AWS::KinesisAnalytics::ApplicationReferenceDataSource.RecordColumn`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordcolumn.html
-- |
-- | - `Mapping`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalytics-applicationreferencedatasource-recordcolumn-mapping
-- | - `SqlType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalytics-applicationreferencedatasource-recordcolumn-sqltype
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordcolumn.html#cfn-kinesisanalytics-applicationreferencedatasource-recordcolumn-name
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

-- | `AWS::KinesisAnalytics::ApplicationReferenceDataSource.JSONMappingParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-jsonmappingparameters.html
-- |
-- | - `RecordRowPath`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-jsonmappingparameters.html#cfn-kinesisanalytics-applicationreferencedatasource-jsonmappingparameters-recordrowpath
type JSONMappingParameters =
  { "RecordRowPath" :: Value String
  }

jsonmSONMappingParameters :: { "RecordRowPath" :: Value String } -> JSONMappingParameters
jsonmSONMappingParameters required =
  required

-- | `AWS::KinesisAnalytics::ApplicationReferenceDataSource.MappingParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-mappingparameters.html
-- |
-- | - `JSONMappingParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-mappingparameters.html#cfn-kinesisanalytics-applicationreferencedatasource-mappingparameters-jsonmappingparameters
-- | - `CSVMappingParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-mappingparameters.html#cfn-kinesisanalytics-applicationreferencedatasource-mappingparameters-csvmappingparameters
type MappingParameters =
  { "JSONMappingParameters" :: Maybe (Value JSONMappingParameters)
  , "CSVMappingParameters" :: Maybe (Value CSVMappingParameters)
  }

mappingParameters :: MappingParameters
mappingParameters =
  { "JSONMappingParameters" : Nothing
  , "CSVMappingParameters" : Nothing
  }

-- | `AWS::KinesisAnalytics::ApplicationReferenceDataSource.S3ReferenceDataSource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-s3referencedatasource.html
-- |
-- | - `BucketARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-s3referencedatasource-bucketarn
-- | - `FileKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-s3referencedatasource-filekey
-- | - `ReferenceRoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-s3referencedatasource-referencerolearn
type S3ReferenceDataSource =
  { "BucketARN" :: Value String
  , "FileKey" :: Value String
  , "ReferenceRoleARN" :: Value String
  }

s3ReferenceDataSource :: { "BucketARN" :: Value String, "FileKey" :: Value String, "ReferenceRoleARN" :: Value String } -> S3ReferenceDataSource
s3ReferenceDataSource required =
  required

-- | `AWS::KinesisAnalytics::ApplicationReferenceDataSource.CSVMappingParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-csvmappingparameters.html
-- |
-- | - `RecordRowDelimiter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-csvmappingparameters.html#cfn-kinesisanalytics-applicationreferencedatasource-csvmappingparameters-recordrowdelimiter
-- | - `RecordColumnDelimiter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-csvmappingparameters.html#cfn-kinesisanalytics-applicationreferencedatasource-csvmappingparameters-recordcolumndelimiter
type CSVMappingParameters =
  { "RecordRowDelimiter" :: Value String
  , "RecordColumnDelimiter" :: Value String
  }

csvmSVMappingParameters :: { "RecordRowDelimiter" :: Value String, "RecordColumnDelimiter" :: Value String } -> CSVMappingParameters
csvmSVMappingParameters required =
  required

-- | `AWS::KinesisAnalytics::ApplicationReferenceDataSource.RecordFormat`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordformat.html
-- |
-- | - `MappingParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordformat.html#cfn-kinesisanalytics-applicationreferencedatasource-recordformat-mappingparameters
-- | - `RecordFormatType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordformat.html#cfn-kinesisanalytics-applicationreferencedatasource-recordformat-recordformattype
type RecordFormat =
  { "RecordFormatType" :: Value String
  , "MappingParameters" :: Maybe (Value MappingParameters)
  }

recordFormat :: { "RecordFormatType" :: Value String } -> RecordFormat
recordFormat required =
  (merge required
    { "MappingParameters" : Nothing
    })