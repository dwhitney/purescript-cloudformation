module CloudFormation.AWS.CloudWatch.AnomalyDetector where 

import Data.Maybe (Maybe(..))
import Record (merge)


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

type Configuration =
  { "MetricTimeZone" :: Maybe String
  , "ExcludedTimeRanges" :: Maybe (Array Range)
  }

configuration :: Configuration
configuration =
  { "MetricTimeZone" : Nothing
  , "ExcludedTimeRanges" : Nothing
  }

type Dimension =
  { "Value" :: String
  , "Name" :: String
  }

dimension :: { "Value" :: String, "Name" :: String } -> Dimension
dimension required =
  required

type Range =
  { "EndTime" :: String
  , "StartTime" :: String
  }

range :: { "EndTime" :: String, "StartTime" :: String } -> Range
range required =
  required