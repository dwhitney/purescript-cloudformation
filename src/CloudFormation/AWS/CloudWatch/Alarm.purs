module CloudFormation.AWS.CloudWatch.Alarm where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::CloudWatch::Alarm`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html
-- |
-- | - `ActionsEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-actionsenabled
-- | - `AlarmActions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-alarmactions
-- | - `AlarmDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-alarmdescription
-- | - `AlarmName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-alarmname
-- | - `ComparisonOperator`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-comparisonoperator
-- | - `DatapointsToAlarm`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarm-datapointstoalarm
-- | - `Dimensions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-dimension
-- | - `EvaluateLowSampleCountPercentile`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-evaluatelowsamplecountpercentile
-- | - `EvaluationPeriods`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-evaluationperiods
-- | - `ExtendedStatistic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-extendedstatistic
-- | - `InsufficientDataActions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-insufficientdataactions
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-metricname
-- | - `Metrics`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarm-metrics
-- | - `Namespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-namespace
-- | - `OKActions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-okactions
-- | - `Period`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-period
-- | - `Statistic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-statistic
-- | - `Threshold`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-threshold
-- | - `ThresholdMetricId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-dynamic-threshold
-- | - `TreatMissingData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-treatmissingdata
-- | - `Unit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-unit
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

-- | `AWS::CloudWatch::Alarm.Metric`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metric.html
-- |
-- | - `Dimensions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metric.html#cfn-cloudwatch-alarm-metric-dimensions
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metric.html#cfn-cloudwatch-alarm-metric-metricname
-- | - `Namespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metric.html#cfn-cloudwatch-alarm-metric-namespace
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

-- | `AWS::CloudWatch::Alarm.Dimension`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-dimension.html
-- |
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-dimension.html#cfn-cloudwatch-alarm-dimension-name
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-dimension.html#cfn-cloudwatch-alarm-dimension-value
type Dimension =
  { "Name" :: String
  , "Value" :: String
  }

dimension :: { "Name" :: String, "Value" :: String } -> Dimension
dimension required =
  required

-- | `AWS::CloudWatch::Alarm.MetricDataQuery`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html
-- |
-- | - `Expression`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-expression
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-id
-- | - `Label`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-label
-- | - `MetricStat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-metricstat
-- | - `ReturnData`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-returndata
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

-- | `AWS::CloudWatch::Alarm.MetricStat`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html
-- |
-- | - `Metric`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html#cfn-cloudwatch-alarm-metricstat-metric
-- | - `Period`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html#cfn-cloudwatch-alarm-metricstat-period
-- | - `Stat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html#cfn-cloudwatch-alarm-metricstat-stat
-- | - `Unit`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html#cfn-cloudwatch-alarm-metricstat-unit
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