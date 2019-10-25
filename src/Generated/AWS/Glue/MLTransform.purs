module CloudFormation.AWS.Glue.MLTransform where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Glue::MLTransform`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html
-- |
-- | - `Role`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-role
-- | - `MaxRetries`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-maxretries
-- | - `WorkerType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-workertype
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-description
-- | - `Timeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-timeout
-- | - `TransformParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-transformparameters
-- | - `InputRecordTables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-inputrecordtables
-- | - `NumberOfWorkers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-numberofworkers
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-name
-- | - `MaxCapacity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html#cfn-glue-mltransform-maxcapacity
newtype MLTransform = MLTransform
  { "Role" :: Value String
  , "TransformParameters" :: Value TransformParameters
  , "InputRecordTables" :: Value InputRecordTables
  , "MaxRetries" :: Maybe (Value Int)
  , "WorkerType" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "Timeout" :: Maybe (Value Int)
  , "NumberOfWorkers" :: Maybe (Value Int)
  , "Name" :: Maybe (Value String)
  , "MaxCapacity" :: Maybe (Value Number)
  }

derive instance newtypeMLTransform :: Newtype MLTransform _
derive newtype instance writeMLTransform :: WriteForeign MLTransform
instance resourceMLTransform :: Resource MLTransform where type_ _ = "AWS::Glue::MLTransform"

mltLTransform :: { "Role" :: Value String, "TransformParameters" :: Value TransformParameters, "InputRecordTables" :: Value InputRecordTables } -> MLTransform
mltLTransform required = MLTransform
  (merge required
    { "MaxRetries" : Nothing
    , "WorkerType" : Nothing
    , "Description" : Nothing
    , "Timeout" : Nothing
    , "NumberOfWorkers" : Nothing
    , "Name" : Nothing
    , "MaxCapacity" : Nothing
    })

-- | `AWS::Glue::MLTransform.GlueTables`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html
-- |
-- | - `ConnectionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-connectionname
-- | - `TableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-tablename
-- | - `DatabaseName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-databasename
-- | - `CatalogId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-catalogid
type GlueTables =
  { "TableName" :: Value String
  , "DatabaseName" :: Value String
  , "ConnectionName" :: Maybe (Value String)
  , "CatalogId" :: Maybe (Value String)
  }

glueTables :: { "TableName" :: Value String, "DatabaseName" :: Value String } -> GlueTables
glueTables required =
  (merge required
    { "ConnectionName" : Nothing
    , "CatalogId" : Nothing
    })

-- | `AWS::Glue::MLTransform.InputRecordTables`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables.html
-- |
-- | - `GlueTables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables.html#cfn-glue-mltransform-inputrecordtables-gluetables
type InputRecordTables =
  { "GlueTables" :: Maybe (Value (Array GlueTables))
  }

inputRecordTables :: InputRecordTables
inputRecordTables =
  { "GlueTables" : Nothing
  }

-- | `AWS::Glue::MLTransform.TransformParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters.html
-- |
-- | - `TransformType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters.html#cfn-glue-mltransform-transformparameters-transformtype
-- | - `FindMatchesParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters
type TransformParameters =
  { "TransformType" :: Value String
  , "FindMatchesParameters" :: Maybe (Value FindMatchesParameters)
  }

transformParameters :: { "TransformType" :: Value String } -> TransformParameters
transformParameters required =
  (merge required
    { "FindMatchesParameters" : Nothing
    })

-- | `AWS::Glue::MLTransform.FindMatchesParameters`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html
-- |
-- | - `PrecisionRecallTradeoff`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-precisionrecalltradeoff
-- | - `EnforceProvidedLabels`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-enforceprovidedlabels
-- | - `PrimaryKeyColumnName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-primarykeycolumnname
-- | - `AccuracyCostTradeoff`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-accuracycosttradeoff
type FindMatchesParameters =
  { "PrimaryKeyColumnName" :: Value String
  , "PrecisionRecallTradeoff" :: Maybe (Value Number)
  , "EnforceProvidedLabels" :: Maybe (Value Boolean)
  , "AccuracyCostTradeoff" :: Maybe (Value Number)
  }

findMatchesParameters :: { "PrimaryKeyColumnName" :: Value String } -> FindMatchesParameters
findMatchesParameters required =
  (merge required
    { "PrecisionRecallTradeoff" : Nothing
    , "EnforceProvidedLabels" : Nothing
    , "AccuracyCostTradeoff" : Nothing
    })