module CloudFormation.AWS.Glue.Table where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Glue::Table`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-table.html
-- |
-- | - `TableInput`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-table.html#cfn-glue-table-tableinput
-- | - `DatabaseName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-table.html#cfn-glue-table-databasename
-- | - `CatalogId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-table.html#cfn-glue-table-catalogid
newtype Table = Table
  { "TableInput" :: TableInput
  , "DatabaseName" :: String
  , "CatalogId" :: String
  }

derive instance newtypeTable :: Newtype Table _
instance resourceTable :: Resource Table where type_ _ = "AWS::Glue::Table"

table :: { "TableInput" :: TableInput, "DatabaseName" :: String, "CatalogId" :: String } -> Table
table required = Table
  required

-- | `AWS::Glue::Table.SerdeInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-serdeinfo.html
-- |
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-serdeinfo.html#cfn-glue-table-serdeinfo-parameters
-- | - `SerializationLibrary`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-serdeinfo.html#cfn-glue-table-serdeinfo-serializationlibrary
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-serdeinfo.html#cfn-glue-table-serdeinfo-name
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

-- | `AWS::Glue::Table.TableInput`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html
-- |
-- | - `Owner`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-owner
-- | - `ViewOriginalText`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-vieworiginaltext
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-description
-- | - `TableType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-tabletype
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-parameters
-- | - `ViewExpandedText`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-viewexpandedtext
-- | - `StorageDescriptor`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-storagedescriptor
-- | - `PartitionKeys`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-partitionkeys
-- | - `Retention`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-retention
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-tableinput.html#cfn-glue-table-tableinput-name
type TableInput =
  { "Owner" :: Maybe String
  , "ViewOriginalText" :: Maybe String
  , "Description" :: Maybe String
  , "TableType" :: Maybe String
  , "Parameters" :: Maybe CF.Json
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

-- | `AWS::Glue::Table.StorageDescriptor`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html
-- |
-- | - `StoredAsSubDirectories`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-storedassubdirectories
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-parameters
-- | - `BucketColumns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-bucketcolumns
-- | - `SkewedInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-skewedinfo
-- | - `InputFormat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-inputformat
-- | - `NumberOfBuckets`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-numberofbuckets
-- | - `OutputFormat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-outputformat
-- | - `Columns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-columns
-- | - `SerdeInfo`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-serdeinfo
-- | - `SortColumns`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-sortcolumns
-- | - `Compressed`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-compressed
-- | - `Location`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-storagedescriptor.html#cfn-glue-table-storagedescriptor-location
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

-- | `AWS::Glue::Table.SkewedInfo`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-skewedinfo.html
-- |
-- | - `SkewedColumnNames`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-skewedinfo.html#cfn-glue-table-skewedinfo-skewedcolumnnames
-- | - `SkewedColumnValues`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-skewedinfo.html#cfn-glue-table-skewedinfo-skewedcolumnvalues
-- | - `SkewedColumnValueLocationMaps`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-skewedinfo.html#cfn-glue-table-skewedinfo-skewedcolumnvaluelocationmaps
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

-- | `AWS::Glue::Table.Column`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-column.html
-- |
-- | - `Comment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-column.html#cfn-glue-table-column-comment
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-column.html#cfn-glue-table-column-type
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-column.html#cfn-glue-table-column-name
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

-- | `AWS::Glue::Table.Order`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-order.html
-- |
-- | - `Column`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-order.html#cfn-glue-table-order-column
-- | - `SortOrder`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-table-order.html#cfn-glue-table-order-sortorder
type Order =
  { "Column" :: String
  , "SortOrder" :: Int
  }

order :: { "Column" :: String, "SortOrder" :: Int } -> Order
order required =
  required