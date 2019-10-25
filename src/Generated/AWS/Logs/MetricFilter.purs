module CloudFormation.AWS.Logs.MetricFilter where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
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
  { "FilterPattern" :: Value String
  , "LogGroupName" :: Value String
  , "MetricTransformations" :: Value (Array MetricTransformation)
  }

derive instance newtypeMetricFilter :: Newtype MetricFilter _
derive newtype instance writeMetricFilter :: WriteForeign MetricFilter
instance resourceMetricFilter :: Resource MetricFilter where type_ _ = "AWS::Logs::MetricFilter"

metricFilter :: { "FilterPattern" :: Value String, "LogGroupName" :: Value String, "MetricTransformations" :: Value (Array MetricTransformation) } -> MetricFilter
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
  { "MetricName" :: Value String
  , "MetricNamespace" :: Value String
  , "MetricValue" :: Value String
  , "DefaultValue" :: Maybe (Value Number)
  }

metricTransformation :: { "MetricName" :: Value String, "MetricNamespace" :: Value String, "MetricValue" :: Value String } -> MetricTransformation
metricTransformation required =
  (merge required
    { "DefaultValue" : Nothing
    })