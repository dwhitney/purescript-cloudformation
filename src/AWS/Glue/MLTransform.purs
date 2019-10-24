module AWS.Glue.MLTransform where 

import Data.Maybe (Maybe(..))
import Record (merge)


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

type InputRecordTables =
  { "GlueTables" :: Maybe (Array GlueTables)
  }

inputRecordTables :: InputRecordTables
inputRecordTables =
  { "GlueTables" : Nothing
  }

type TransformParameters =
  { "TransformType" :: String
  , "FindMatchesParameters" :: Maybe FindMatchesParameters
  }

transformParameters :: { "TransformType" :: String } -> TransformParameters
transformParameters required =
  merge required
    { "FindMatchesParameters" : Nothing
    }

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