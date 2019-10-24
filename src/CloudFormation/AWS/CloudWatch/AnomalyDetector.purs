module CloudFormation.AWS.CloudWatch.AnomalyDetector where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::CloudWatch::AnomalyDetector`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html
-- |
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-metricname
-- | - `Stat`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-stat
-- | - `Configuration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-configuration
-- | - `Dimensions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-dimensions
-- | - `Namespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-namespace
type AnomalyDetector =
  { "MetricName" :: String
  , "Stat" :: String
  , "Namespace" :: String
  , "Configuration" :: Maybe Configuration
  , "Dimensions" :: Maybe (Array Dimension)
  }

anomalyDetector :: { "MetricName" :: String, "Stat" :: String, "Namespace" :: String } -> AnomalyDetector
anomalyDetector required =
  merge required
    { "Configuration" : Nothing
    , "Dimensions" : Nothing
    }

-- | `AWS::CloudWatch::AnomalyDetector.Configuration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-configuration.html
-- |
-- | - `MetricTimeZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-configuration.html#cfn-cloudwatch-anomalydetector-configuration-metrictimezone
-- | - `ExcludedTimeRanges`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-configuration.html#cfn-cloudwatch-anomalydetector-configuration-excludedtimeranges
type Configuration =
  { "MetricTimeZone" :: Maybe String
  , "ExcludedTimeRanges" :: Maybe (Array Range)
  }

configuration :: Configuration
configuration =
  { "MetricTimeZone" : Nothing
  , "ExcludedTimeRanges" : Nothing
  }

-- | `AWS::CloudWatch::AnomalyDetector.Dimension`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-dimension.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-dimension.html#cfn-cloudwatch-anomalydetector-dimension-value
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-dimension.html#cfn-cloudwatch-anomalydetector-dimension-name
type Dimension =
  { "Value" :: String
  , "Name" :: String
  }

dimension :: { "Value" :: String, "Name" :: String } -> Dimension
dimension required =
  required

-- | `AWS::CloudWatch::AnomalyDetector.Range`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-range.html
-- |
-- | - `EndTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-range.html#cfn-cloudwatch-anomalydetector-range-endtime
-- | - `StartTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-range.html#cfn-cloudwatch-anomalydetector-range-starttime
type Range =
  { "EndTime" :: String
  , "StartTime" :: String
  }

range :: { "EndTime" :: String, "StartTime" :: String } -> Range
range required =
  required