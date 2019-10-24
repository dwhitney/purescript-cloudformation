module AWS.Logs.LogStream where 

import Data.Maybe (Maybe(..))
import Record (merge)


type LogStream =
  { "LogGroupName" :: String
  , "LogStreamName" :: Maybe String
  }

logStream :: { "LogGroupName" :: String } -> LogStream
logStream required =
  merge required
    { "LogStreamName" : Nothing
    }