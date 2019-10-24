module CloudFormation.AWS.Logs.LogStream where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Logs::LogStream`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html
-- |
-- | - `LogGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html#cfn-logs-logstream-loggroupname
-- | - `LogStreamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html#cfn-logs-logstream-logstreamname
newtype LogStream = LogStream
  { "LogGroupName" :: String
  , "LogStreamName" :: Maybe String
  }

derive instance newtypeLogStream :: Newtype LogStream _
instance resourceLogStream :: Resource LogStream where type_ _ = "AWS::Logs::LogStream"

logStream :: { "LogGroupName" :: String } -> LogStream
logStream required = LogStream
  (merge required
    { "LogStreamName" : Nothing
    })