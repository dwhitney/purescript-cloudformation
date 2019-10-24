module CloudFormation.AWS.KinesisAnalytics.ApplicationReferenceDataSource where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
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
  { "ApplicationName" :: String
  , "ReferenceDataSource" :: ReferenceDataSource
  }

derive instance newtypeApplicationReferenceDataSource :: Newtype ApplicationReferenceDataSource _
instance resourceApplicationReferenceDataSource :: Resource ApplicationReferenceDataSource where type_ _ = "AWS::KinesisAnalytics::ApplicationReferenceDataSource"

applicationReferenceDataSource :: { "ApplicationName" :: String, "ReferenceDataSource" :: ReferenceDataSource } -> ApplicationReferenceDataSource
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
  { "ReferenceSchema" :: ReferenceSchema
  , "TableName" :: Maybe String
  , "S3ReferenceDataSource" :: Maybe S3ReferenceDataSource
  }

referenceDataSource :: { "ReferenceSchema" :: ReferenceSchema } -> ReferenceDataSource
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
  { "RecordColumns" :: Array RecordColumn
  , "RecordFormat" :: RecordFormat
  , "RecordEncoding" :: Maybe String
  }

referenceSchema :: { "RecordColumns" :: Array RecordColumn, "RecordFormat" :: RecordFormat } -> ReferenceSchema
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
  { "SqlType" :: String
  , "Name" :: String
  , "Mapping" :: Maybe String
  }

recordColumn :: { "SqlType" :: String, "Name" :: String } -> RecordColumn
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
  { "RecordRowPath" :: String
  }

jsonmSONMappingParameters :: { "RecordRowPath" :: String } -> JSONMappingParameters
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
  { "JSONMappingParameters" :: Maybe JSONMappingParameters
  , "CSVMappingParameters" :: Maybe CSVMappingParameters
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
  { "BucketARN" :: String
  , "FileKey" :: String
  , "ReferenceRoleARN" :: String
  }

s3ReferenceDataSource :: { "BucketARN" :: String, "FileKey" :: String, "ReferenceRoleARN" :: String } -> S3ReferenceDataSource
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
  { "RecordRowDelimiter" :: String
  , "RecordColumnDelimiter" :: String
  }

csvmSVMappingParameters :: { "RecordRowDelimiter" :: String, "RecordColumnDelimiter" :: String } -> CSVMappingParameters
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
  { "RecordFormatType" :: String
  , "MappingParameters" :: Maybe MappingParameters
  }

recordFormat :: { "RecordFormatType" :: String } -> RecordFormat
recordFormat required =
  (merge required
    { "MappingParameters" : Nothing
    })