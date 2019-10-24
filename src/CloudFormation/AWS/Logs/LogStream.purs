module CloudFormation.AWS.Logs.LogStream where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Logs::LogStream`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html-- |
-- | - `LogGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html#cfn-logs-logstream-loggroupname
-- | - `LogStreamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html#cfn-logs-logstream-logstreamname
type LogStream =
  { "LogGroupName" :: String
  , "LogStreamName" :: Maybe String
  }

logStream :: { "LogGroupName" :: String } -> LogStream
logStream required =
  merge required
    { "LogStreamName" : Nothing
    }