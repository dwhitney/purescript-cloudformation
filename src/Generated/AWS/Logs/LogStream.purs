module CloudFormation.AWS.Logs.LogStream where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Logs::LogStream`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html
-- |
-- | - `LogGroupName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html#cfn-logs-logstream-loggroupname
-- | - `LogStreamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-logstream.html#cfn-logs-logstream-logstreamname
newtype LogStream = LogStream
  { "LogGroupName" :: Value String
  , "LogStreamName" :: Maybe (Value String)
  }

derive instance newtypeLogStream :: Newtype LogStream _
derive newtype instance writeLogStream :: WriteForeign LogStream
instance resourceLogStream :: Resource LogStream where type_ _ = "AWS::Logs::LogStream"

logStream :: { "LogGroupName" :: Value String } -> LogStream
logStream required = LogStream
  (merge required
    { "LogStreamName" : Nothing
    })