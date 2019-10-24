module CloudFormation.AWS.Logs.MetricFilter where 

import Data.Maybe (Maybe(..))
import Record (merge)


type MetricFilter =
  { "FilterPattern" :: String
  , "LogGroupName" :: String
  , "MetricTransformations" :: Array MetricTransformation
  }

metricFilter :: { "FilterPattern" :: String, "LogGroupName" :: String, "MetricTransformations" :: Array MetricTransformation } -> MetricFilter
metricFilter required =
  required

type MetricTransformation =
  { "MetricName" :: String
  , "MetricNamespace" :: String
  , "MetricValue" :: String
  , "DefaultValue" :: Maybe Number
  }

metricTransformation :: { "MetricName" :: String, "MetricNamespace" :: String, "MetricValue" :: String } -> MetricTransformation
metricTransformation required =
  merge required
    { "DefaultValue" : Nothing
    }