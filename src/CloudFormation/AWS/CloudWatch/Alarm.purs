module CloudFormation.AWS.CloudWatch.Alarm where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Alarm =
  { "ComparisonOperator" :: String
  , "EvaluationPeriods" :: Int
  , "ActionsEnabled" :: Maybe Boolean
  , "AlarmActions" :: Maybe (Array String)
  , "AlarmDescription" :: Maybe String
  , "AlarmName" :: Maybe String
  , "DatapointsToAlarm" :: Maybe Int
  , "Dimensions" :: Maybe (Array Dimension)
  , "EvaluateLowSampleCountPercentile" :: Maybe String
  , "ExtendedStatistic" :: Maybe String
  , "InsufficientDataActions" :: Maybe (Array String)
  , "MetricName" :: Maybe String
  , "Metrics" :: Maybe (Array MetricDataQuery)
  , "Namespace" :: Maybe String
  , "OKActions" :: Maybe (Array String)
  , "Period" :: Maybe Int
  , "Statistic" :: Maybe String
  , "Threshold" :: Maybe Number
  , "ThresholdMetricId" :: Maybe String
  , "TreatMissingData" :: Maybe String
  , "Unit" :: Maybe String
  }

alarm :: { "ComparisonOperator" :: String, "EvaluationPeriods" :: Int } -> Alarm
alarm required =
  merge required
    { "ActionsEnabled" : Nothing
    , "AlarmActions" : Nothing
    , "AlarmDescription" : Nothing
    , "AlarmName" : Nothing
    , "DatapointsToAlarm" : Nothing
    , "Dimensions" : Nothing
    , "EvaluateLowSampleCountPercentile" : Nothing
    , "ExtendedStatistic" : Nothing
    , "InsufficientDataActions" : Nothing
    , "MetricName" : Nothing
    , "Metrics" : Nothing
    , "Namespace" : Nothing
    , "OKActions" : Nothing
    , "Period" : Nothing
    , "Statistic" : Nothing
    , "Threshold" : Nothing
    , "ThresholdMetricId" : Nothing
    , "TreatMissingData" : Nothing
    , "Unit" : Nothing
    }

type Metric =
  { "Dimensions" :: Maybe (Array Dimension)
  , "MetricName" :: Maybe String
  , "Namespace" :: Maybe String
  }

metric :: Metric
metric =
  { "Dimensions" : Nothing
  , "MetricName" : Nothing
  , "Namespace" : Nothing
  }

type Dimension =
  { "Name" :: String
  , "Value" :: String
  }

dimension :: { "Name" :: String, "Value" :: String } -> Dimension
dimension required =
  required

type MetricDataQuery =
  { "Id" :: String
  , "Expression" :: Maybe String
  , "Label" :: Maybe String
  , "MetricStat" :: Maybe MetricStat
  , "ReturnData" :: Maybe Boolean
  }

metricDataQuery :: { "Id" :: String } -> MetricDataQuery
metricDataQuery required =
  merge required
    { "Expression" : Nothing
    , "Label" : Nothing
    , "MetricStat" : Nothing
    , "ReturnData" : Nothing
    }

type MetricStat =
  { "Metric" :: Metric
  , "Period" :: Int
  , "Stat" :: String
  , "Unit" :: Maybe String
  }

metricStat :: { "Metric" :: Metric, "Period" :: Int, "Stat" :: String } -> MetricStat
metricStat required =
  merge required
    { "Unit" : Nothing
    }