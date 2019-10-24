module CloudFormation.AWS.Lambda.EventSourceMapping where 

import Data.Maybe (Maybe(..))
import Record (merge)


type EventSourceMapping =
  { "EventSourceArn" :: String
  , "FunctionName" :: String
  , "BatchSize" :: Maybe Int
  , "Enabled" :: Maybe Boolean
  , "MaximumBatchingWindowInSeconds" :: Maybe Int
  , "StartingPosition" :: Maybe String
  }

eventSourceMapping :: { "EventSourceArn" :: String, "FunctionName" :: String } -> EventSourceMapping
eventSourceMapping required =
  merge required
    { "BatchSize" : Nothing
    , "Enabled" : Nothing
    , "MaximumBatchingWindowInSeconds" : Nothing
    , "StartingPosition" : Nothing
    }