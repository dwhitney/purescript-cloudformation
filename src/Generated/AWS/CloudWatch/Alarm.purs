module CloudFormation.AWS.CloudWatch.Alarm where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype Alarm = Alarm
  { "ComparisonOperator" :: Value String
  , "EvaluationPeriods" :: Value Int
  , "ActionsEnabled" :: Maybe (Value Boolean)
  , "AlarmActions" :: Maybe (Value (Array String))
  , "AlarmDescription" :: Maybe (Value String)
  , "AlarmName" :: Maybe (Value String)
  , "DatapointsToAlarm" :: Maybe (Value Int)
  , "Dimensions" :: Maybe (Value (Array Dimension))
  , "EvaluateLowSampleCountPercentile" :: Maybe (Value String)
  , "ExtendedStatistic" :: Maybe (Value String)
  , "InsufficientDataActions" :: Maybe (Value (Array String))
  , "MetricName" :: Maybe (Value String)
  , "Metrics" :: Maybe (Value (Array MetricDataQuery))
  , "Namespace" :: Maybe (Value String)
  , "OKActions" :: Maybe (Value (Array String))
  , "Period" :: Maybe (Value Int)
  , "Statistic" :: Maybe (Value String)
  , "Threshold" :: Maybe (Value Number)
  , "ThresholdMetricId" :: Maybe (Value String)
  , "TreatMissingData" :: Maybe (Value String)
  , "Unit" :: Maybe (Value String)
  }

derive instance newtypeAlarm :: Newtype Alarm _
derive newtype instance writeAlarm :: WriteForeign Alarm
instance resourceAlarm :: Resource Alarm where type_ _ = "AWS::CloudWatch::Alarm"

alarm :: { "ComparisonOperator" :: Value String, "EvaluationPeriods" :: Value Int } -> Alarm
alarm required = Alarm
  (merge required
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
    })

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
  { "Dimensions" :: Maybe (Value (Array Dimension))
  , "MetricName" :: Maybe (Value String)
  , "Namespace" :: Maybe (Value String)
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
  { "Name" :: Value String
  , "Value" :: Value String
  }

dimension :: { "Name" :: Value String, "Value" :: Value String } -> Dimension
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
  { "Id" :: Value String
  , "Expression" :: Maybe (Value String)
  , "Label" :: Maybe (Value String)
  , "MetricStat" :: Maybe (Value MetricStat)
  , "ReturnData" :: Maybe (Value Boolean)
  }

metricDataQuery :: { "Id" :: Value String } -> MetricDataQuery
metricDataQuery required =
  (merge required
    { "Expression" : Nothing
    , "Label" : Nothing
    , "MetricStat" : Nothing
    , "ReturnData" : Nothing
    })

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
  { "Metric" :: Value Metric
  , "Period" :: Value Int
  , "Stat" :: Value String
  , "Unit" :: Maybe (Value String)
  }

metricStat :: { "Metric" :: Value Metric, "Period" :: Value Int, "Stat" :: Value String } -> MetricStat
metricStat required =
  (merge required
    { "Unit" : Nothing
    })