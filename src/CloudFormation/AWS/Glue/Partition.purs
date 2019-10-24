module CloudFormation.AWS.Glue.Partition where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Partition =
  { "TableName" :: String
  , "DatabaseName" :: String
  , "CatalogId" :: String
  , "PartitionInput" :: PartitionInput
  }

partition :: { "TableName" :: String, "DatabaseName" :: String, "CatalogId" :: String, "PartitionInput" :: PartitionInput } -> Partition
partition required =
  required

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

type Order =
  { "Column" :: String
  , "SortOrder" :: Maybe Int
  }

order :: { "Column" :: String } -> Order
order required =
  merge required
    { "SortOrder" : Nothing
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

type PartitionInput =
  { "Values" :: Array String
  , "Parameters" :: Maybe Foreign
  , "StorageDescriptor" :: Maybe StorageDescriptor
  }

partitionInput :: { "Values" :: Array String } -> PartitionInput
partitionInput required =
  merge required
    { "Parameters" : Nothing
    , "StorageDescriptor" : Nothing
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