module CloudFormation.AWS.Glue.MLTransform where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Glue::MLTransform`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-mltransform.html-- |
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
type MLTransform =
  { "Role" :: String
  , "TransformParameters" :: TransformParameters
  , "InputRecordTables" :: InputRecordTables
  , "MaxRetries" :: Maybe Int
  , "WorkerType" :: Maybe String
  , "Description" :: Maybe String
  , "Timeout" :: Maybe Int
  , "NumberOfWorkers" :: Maybe Int
  , "Name" :: Maybe String
  , "MaxCapacity" :: Maybe Number
  }

mltLTransform :: { "Role" :: String, "TransformParameters" :: TransformParameters, "InputRecordTables" :: InputRecordTables } -> MLTransform
mltLTransform required =
  merge required
    { "MaxRetries" : Nothing
    , "WorkerType" : Nothing
    , "Description" : Nothing
    , "Timeout" : Nothing
    , "NumberOfWorkers" : Nothing
    , "Name" : Nothing
    , "MaxCapacity" : Nothing
    }

-- | `AWS::Glue::MLTransform.GlueTables`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html-- |
-- | - `ConnectionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-connectionname
-- | - `TableName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-tablename
-- | - `DatabaseName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-databasename
-- | - `CatalogId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables-gluetables.html#cfn-glue-mltransform-inputrecordtables-gluetables-catalogid
type GlueTables =
  { "TableName" :: String
  , "DatabaseName" :: String
  , "ConnectionName" :: Maybe String
  , "CatalogId" :: Maybe String
  }

glueTables :: { "TableName" :: String, "DatabaseName" :: String } -> GlueTables
glueTables required =
  merge required
    { "ConnectionName" : Nothing
    , "CatalogId" : Nothing
    }

-- | `AWS::Glue::MLTransform.InputRecordTables`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables.html-- |
-- | - `GlueTables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-inputrecordtables.html#cfn-glue-mltransform-inputrecordtables-gluetables
type InputRecordTables =
  { "GlueTables" :: Maybe (Array GlueTables)
  }

inputRecordTables :: InputRecordTables
inputRecordTables =
  { "GlueTables" : Nothing
  }

-- | `AWS::Glue::MLTransform.TransformParameters`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters.html-- |
-- | - `TransformType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters.html#cfn-glue-mltransform-transformparameters-transformtype
-- | - `FindMatchesParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters
type TransformParameters =
  { "TransformType" :: String
  , "FindMatchesParameters" :: Maybe FindMatchesParameters
  }

transformParameters :: { "TransformType" :: String } -> TransformParameters
transformParameters required =
  merge required
    { "FindMatchesParameters" : Nothing
    }

-- | `AWS::Glue::MLTransform.FindMatchesParameters`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html-- |
-- | - `PrecisionRecallTradeoff`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-precisionrecalltradeoff
-- | - `EnforceProvidedLabels`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-enforceprovidedlabels
-- | - `PrimaryKeyColumnName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-primarykeycolumnname
-- | - `AccuracyCostTradeoff`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-mltransform-transformparameters-findmatchesparameters.html#cfn-glue-mltransform-transformparameters-findmatchesparameters-accuracycosttradeoff
type FindMatchesParameters =
  { "PrimaryKeyColumnName" :: String
  , "PrecisionRecallTradeoff" :: Maybe Number
  , "EnforceProvidedLabels" :: Maybe Boolean
  , "AccuracyCostTradeoff" :: Maybe Number
  }

findMatchesParameters :: { "PrimaryKeyColumnName" :: String } -> FindMatchesParameters
findMatchesParameters required =
  merge required
    { "PrecisionRecallTradeoff" : Nothing
    , "EnforceProvidedLabels" : Nothing
    , "AccuracyCostTradeoff" : Nothing
    }