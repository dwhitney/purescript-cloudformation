module CloudFormation.AWS.KinesisAnalyticsV2.ApplicationReferenceDataSource where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ApplicationReferenceDataSource =
  { "ApplicationName" :: String
  , "ReferenceDataSource" :: ReferenceDataSource
  }

applicationReferenceDataSource :: { "ApplicationName" :: String, "ReferenceDataSource" :: ReferenceDataSource } -> ApplicationReferenceDataSource
applicationReferenceDataSource required =
  required

type CSVMappingParameters =
  { "RecordRowDelimiter" :: String
  , "RecordColumnDelimiter" :: String
  }

csvmSVMappingParameters :: { "RecordRowDelimiter" :: String, "RecordColumnDelimiter" :: String } -> CSVMappingParameters
csvmSVMappingParameters required =
  required

type ReferenceSchema =
  { "RecordColumns" :: Array RecordColumn
  , "RecordFormat" :: RecordFormat
  , "RecordEncoding" :: Maybe String
  }

referenceSchema :: { "RecordColumns" :: Array RecordColumn, "RecordFormat" :: RecordFormat } -> ReferenceSchema
referenceSchema required =
  merge required
    { "RecordEncoding" : Nothing
    }

type S3ReferenceDataSource =
  { "BucketARN" :: String
  , "FileKey" :: String
  }

s3ReferenceDataSource :: { "BucketARN" :: String, "FileKey" :: String } -> S3ReferenceDataSource
s3ReferenceDataSource required =
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

type ReferenceDataSource =
  { "ReferenceSchema" :: ReferenceSchema
  , "TableName" :: Maybe String
  , "S3ReferenceDataSource" :: Maybe S3ReferenceDataSource
  }

referenceDataSource :: { "ReferenceSchema" :: ReferenceSchema } -> ReferenceDataSource
referenceDataSource required =
  merge required
    { "TableName" : Nothing
    , "S3ReferenceDataSource" : Nothing
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