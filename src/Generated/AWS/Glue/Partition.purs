module CloudFormation.AWS.Glue.Partition where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)


-- | `AWS::Glue::Partition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-partition.html
-- |
-- | - `TableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-partition.html#cfn-glue-partition-tablename
-- | - `DatabaseName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-partition.html#cfn-glue-partition-databasename
-- | - `CatalogId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-partition.html#cfn-glue-partition-catalogid
-- | - `PartitionInput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-partition.html#cfn-glue-partition-partitioninput
newtype Partition = Partition
  { "TableName" :: String
  , "DatabaseName" :: String
  , "CatalogId" :: String
  , "PartitionInput" :: PartitionInput
  }

derive instance newtypePartition :: Newtype Partition _
instance resourcePartition :: Resource Partition where type_ _ = "AWS::Glue::Partition"

partition :: { "TableName" :: String, "DatabaseName" :: String, "CatalogId" :: String, "PartitionInput" :: PartitionInput } -> Partition
partition required = Partition
  required

-- | `AWS::Glue::Partition.SkewedInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-skewedinfo.html
-- |
-- | - `SkewedColumnNames`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-skewedinfo.html#cfn-glue-partition-skewedinfo-skewedcolumnnames
-- | - `SkewedColumnValues`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-skewedinfo.html#cfn-glue-partition-skewedinfo-skewedcolumnvalues
-- | - `SkewedColumnValueLocationMaps`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-skewedinfo.html#cfn-glue-partition-skewedinfo-skewedcolumnvaluelocationmaps
type SkewedInfo =
  { "SkewedColumnNames" :: Maybe (Array String)
  , "SkewedColumnValues" :: Maybe (Array String)
  , "SkewedColumnValueLocationMaps" :: Maybe CF.Json
  }

skewedInfo :: SkewedInfo
skewedInfo =
  { "SkewedColumnNames" : Nothing
  , "SkewedColumnValues" : Nothing
  , "SkewedColumnValueLocationMaps" : Nothing
  }

-- | `AWS::Glue::Partition.Order`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-order.html
-- |
-- | - `Column`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-order.html#cfn-glue-partition-order-column
-- | - `SortOrder`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-order.html#cfn-glue-partition-order-sortorder
type Order =
  { "Column" :: String
  , "SortOrder" :: Maybe Int
  }

order :: { "Column" :: String } -> Order
order required =
  (merge required
    { "SortOrder" : Nothing
    })

-- | `AWS::Glue::Partition.StorageDescriptor`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html
-- |
-- | - `StoredAsSubDirectories`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-storedassubdirectories
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-parameters
-- | - `BucketColumns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-bucketcolumns
-- | - `SkewedInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-skewedinfo
-- | - `InputFormat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-inputformat
-- | - `NumberOfBuckets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-numberofbuckets
-- | - `OutputFormat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-outputformat
-- | - `Columns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-columns
-- | - `SerdeInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-serdeinfo
-- | - `SortColumns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-sortcolumns
-- | - `Compressed`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-compressed
-- | - `Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-storagedescriptor.html#cfn-glue-partition-storagedescriptor-location
type StorageDescriptor =
  { "StoredAsSubDirectories" :: Maybe Boolean
  , "Parameters" :: Maybe CF.Json
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

-- | `AWS::Glue::Partition.PartitionInput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html
-- |
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html#cfn-glue-partition-partitioninput-parameters
-- | - `StorageDescriptor`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html#cfn-glue-partition-partitioninput-storagedescriptor
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-partitioninput.html#cfn-glue-partition-partitioninput-values
type PartitionInput =
  { "Values" :: Array String
  , "Parameters" :: Maybe CF.Json
  , "StorageDescriptor" :: Maybe StorageDescriptor
  }

partitionInput :: { "Values" :: Array String } -> PartitionInput
partitionInput required =
  (merge required
    { "Parameters" : Nothing
    , "StorageDescriptor" : Nothing
    })

-- | `AWS::Glue::Partition.Column`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-column.html
-- |
-- | - `Comment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-column.html#cfn-glue-partition-column-comment
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-column.html#cfn-glue-partition-column-type
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-column.html#cfn-glue-partition-column-name
type Column =
  { "Name" :: String
  , "Comment" :: Maybe String
  , "Type" :: Maybe String
  }

column :: { "Name" :: String } -> Column
column required =
  (merge required
    { "Comment" : Nothing
    , "Type" : Nothing
    })

-- | `AWS::Glue::Partition.SerdeInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html
-- |
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html#cfn-glue-partition-serdeinfo-parameters
-- | - `SerializationLibrary`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html#cfn-glue-partition-serdeinfo-serializationlibrary
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-partition-serdeinfo.html#cfn-glue-partition-serdeinfo-name
type SerdeInfo =
  { "Parameters" :: Maybe CF.Json
  , "SerializationLibrary" :: Maybe String
  , "Name" :: Maybe String
  }

serdeInfo :: SerdeInfo
serdeInfo =
  { "Parameters" : Nothing
  , "SerializationLibrary" : Nothing
  , "Name" : Nothing
  }