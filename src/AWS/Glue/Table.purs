module AWS.Glue.Table where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type Table =
  { "TableInput" :: TableInput
  , "DatabaseName" :: String
  , "CatalogId" :: String
  }

table :: { "TableInput" :: TableInput, "DatabaseName" :: String, "CatalogId" :: String } -> Table
table required =
  required

type SerdeInfo =
  { "Parameters" :: Maybe Foreign
  , "SerializationLibrary" :: Maybe String
  , "Name" :: Maybe String
  }

serdeInfo :: SerdeInfo
serdeInfo =
  { "Parameters" : Nothing
  , "SerializationLibrary" : Nothing
  , "Name" : Nothing
  }

type TableInput =
  { "Owner" :: Maybe String
  , "ViewOriginalText" :: Maybe String
  , "Description" :: Maybe String
  , "TableType" :: Maybe String
  , "Parameters" :: Maybe Foreign
  , "ViewExpandedText" :: Maybe String
  , "StorageDescriptor" :: Maybe StorageDescriptor
  , "PartitionKeys" :: Maybe (Array Column)
  , "Retention" :: Maybe Int
  , "Name" :: Maybe String
  }

tableInput :: TableInput
tableInput =
  { "Owner" : Nothing
  , "ViewOriginalText" : Nothing
  , "Description" : Nothing
  , "TableType" : Nothing
  , "Parameters" : Nothing
  , "ViewExpandedText" : Nothing
  , "StorageDescriptor" : Nothing
  , "PartitionKeys" : Nothing
  , "Retention" : Nothing
  , "Name" : Nothing
  }

type StorageDescriptor =
  { "StoredAsSubDirectories" :: Maybe Boolean
  , "Parameters" :: Maybe Foreign
  , "BucketColumns" :: Maybe (Array String)
  , "SkewedInfo" :: Maybe SkewedInfo
  , "InputFormat" :: Maybe String
  , "NumberOfBuckets" :: Maybe Int
  , "OutputFormat" :: Maybe String
  , "Columns" :: Maybe (Array Column)
  , "SerdeInfo" :: Maybe SerdeInfo
  , "SortColumns" :: Maybe (Array Order)
  , "Compressed" :: Maybe Boolean
  , "Location" :: Maybe String
  }

storageDescriptor :: StorageDescriptor
storageDescriptor =
  { "StoredAsSubDirectories" : Nothing
  , "Parameters" : Nothing
  , "BucketColumns" : Nothing
  , "SkewedInfo" : Nothing
  , "InputFormat" : Nothing
  , "NumberOfBuckets" : Nothing
  , "OutputFormat" : Nothing
  , "Columns" : Nothing
  , "SerdeInfo" : Nothing
  , "SortColumns" : Nothing
  , "Compressed" : Nothing
  , "Location" : Nothing
  }

type SkewedInfo =
  { "SkewedColumnNames" :: Maybe (Array String)
  , "SkewedColumnValues" :: Maybe (Array String)
  , "SkewedColumnValueLocationMaps" :: Maybe Foreign
  }

skewedInfo :: SkewedInfo
skewedInfo =
  { "SkewedColumnNames" : Nothing
  , "SkewedColumnValues" : Nothing
  , "SkewedColumnValueLocationMaps" : Nothing
  }

type Column =
  { "Name" :: String
  , "Comment" :: Maybe String
  , "Type" :: Maybe String
  }

column :: { "Name" :: String } -> Column
column required =
  merge required
    { "Comment" : Nothing
    , "Type" : Nothing
    }

type Order =
  { "Column" :: String
  , "SortOrder" :: Int
  }

order :: { "Column" :: String, "SortOrder" :: Int } -> Order
order required =
  required