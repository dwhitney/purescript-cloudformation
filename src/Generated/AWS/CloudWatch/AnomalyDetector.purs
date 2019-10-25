module CloudFormation.AWS.CloudWatch.AnomalyDetector where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype AnomalyDetector = AnomalyDetector
  { "MetricName" :: Value String
  , "Stat" :: Value String
  , "Namespace" :: Value String
  , "Configuration" :: Maybe (Value Configuration)
  , "Dimensions" :: Maybe (Value (Array Dimension))
  }

derive instance newtypeAnomalyDetector :: Newtype AnomalyDetector _
derive newtype instance writeAnomalyDetector :: WriteForeign AnomalyDetector
instance resourceAnomalyDetector :: Resource AnomalyDetector where type_ _ = "AWS::CloudWatch::AnomalyDetector"

anomalyDetector :: { "MetricName" :: Value String, "Stat" :: Value String, "Namespace" :: Value String } -> AnomalyDetector
anomalyDetector required = AnomalyDetector
  (merge required
    { "Configuration" : Nothing
    , "Dimensions" : Nothing
    })

-- | `AWS::CloudWatch::AnomalyDetector.Configuration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-configuration.html
-- |
-- | - `MetricTimeZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-configuration.html#cfn-cloudwatch-anomalydetector-configuration-metrictimezone
-- | - `ExcludedTimeRanges`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-configuration.html#cfn-cloudwatch-anomalydetector-configuration-excludedtimeranges
type Configuration =
  { "MetricTimeZone" :: Maybe (Value String)
  , "ExcludedTimeRanges" :: Maybe (Value (Array Range))
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
  { "Value" :: Value String
  , "Name" :: Value String
  }

dimension :: { "Value" :: Value String, "Name" :: Value String } -> Dimension
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
  { "EndTime" :: Value String
  , "StartTime" :: Value String
  }

range :: { "EndTime" :: Value String, "StartTime" :: Value String } -> Range
range required =
  required