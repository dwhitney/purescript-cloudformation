module CloudFormation.AWS.Logs.MetricFilter where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Logs::MetricFilter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html
-- |
-- | - `FilterPattern`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html#cfn-cwl-metricfilter-filterpattern
-- | - `LogGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html#cfn-cwl-metricfilter-loggroupname
-- | - `MetricTransformations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html#cfn-cwl-metricfilter-metrictransformations
newtype MetricFilter = MetricFilter
  { "FilterPattern" :: String
  , "LogGroupName" :: String
  , "MetricTransformations" :: Array MetricTransformation
  }

derive instance newtypeMetricFilter :: Newtype MetricFilter _
instance resourceMetricFilter :: Resource MetricFilter where type_ _ = "AWS::Logs::MetricFilter"

metricFilter :: { "FilterPattern" :: String, "LogGroupName" :: String, "MetricTransformations" :: Array MetricTransformation } -> MetricFilter
metricFilter required = MetricFilter
  required

-- | `AWS::Logs::MetricFilter.MetricTransformation`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html
-- |
-- | - `DefaultValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-cwl-metricfilter-metrictransformation-defaultvalue
-- | - `MetricName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-cwl-metricfilter-metrictransformation-metricname
-- | - `MetricNamespace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-cwl-metricfilter-metrictransformation-metricnamespace
-- | - `MetricValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-cwl-metricfilter-metrictransformation-metricvalue
type MetricTransformation =
  { "MetricName" :: String
  , "MetricNamespace" :: String
  , "MetricValue" :: String
  , "DefaultValue" :: Maybe Number
  }

metricTransformation :: { "MetricName" :: String, "MetricNamespace" :: String, "MetricValue" :: String } -> MetricTransformation
metricTransformation required =
  (merge required
    { "DefaultValue" : Nothing
    })