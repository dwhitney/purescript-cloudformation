module CloudFormation.AWS.Glue.Table where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
  { "TableInput" :: Value TableInput
  , "DatabaseName" :: Value String
  , "CatalogId" :: Value String
  }

derive instance newtypeTable :: Newtype Table _
derive newtype instance writeTable :: WriteForeign Table
instance resourceTable :: Resource Table where type_ _ = "AWS::Glue::Table"

table :: { "TableInput" :: Value TableInput, "DatabaseName" :: Value String, "CatalogId" :: Value String } -> Table
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
  { "Parameters" :: Maybe (Value CF.Json)
  , "SerializationLibrary" :: Maybe (Value String)
  , "Name" :: Maybe (Value String)
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
  { "Owner" :: Maybe (Value String)
  , "ViewOriginalText" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "TableType" :: Maybe (Value String)
  , "Parameters" :: Maybe (Value CF.Json)
  , "ViewExpandedText" :: Maybe (Value String)
  , "StorageDescriptor" :: Maybe (Value StorageDescriptor)
  , "PartitionKeys" :: Maybe (Value (Array Column))
  , "Retention" :: Maybe (Value Int)
  , "Name" :: Maybe (Value String)
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
  { "StoredAsSubDirectories" :: Maybe (Value Boolean)
  , "Parameters" :: Maybe (Value CF.Json)
  , "BucketColumns" :: Maybe (Value (Array String))
  , "SkewedInfo" :: Maybe (Value SkewedInfo)
  , "InputFormat" :: Maybe (Value String)
  , "NumberOfBuckets" :: Maybe (Value Int)
  , "OutputFormat" :: Maybe (Value String)
  , "Columns" :: Maybe (Value (Array Column))
  , "SerdeInfo" :: Maybe (Value SerdeInfo)
  , "SortColumns" :: Maybe (Value (Array Order))
  , "Compressed" :: Maybe (Value Boolean)
  , "Location" :: Maybe (Value String)
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
  { "SkewedColumnNames" :: Maybe (Value (Array String))
  , "SkewedColumnValues" :: Maybe (Value (Array String))
  , "SkewedColumnValueLocationMaps" :: Maybe (Value CF.Json)
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
  { "Name" :: Value String
  , "Comment" :: Maybe (Value String)
  , "Type" :: Maybe (Value String)
  }

column :: { "Name" :: Value String } -> Column
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
  { "Column" :: Value String
  , "SortOrder" :: Value Int
  }

order :: { "Column" :: Value String, "SortOrder" :: Value Int } -> Order
order required =
  required