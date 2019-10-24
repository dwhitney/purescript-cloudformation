module CloudFormation.AWS.Lambda.Permission where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Permission =
  { "Action" :: String
  , "FunctionName" :: String
  , "Principal" :: String
  , "EventSourceToken" :: Maybe String
  , "SourceAccount" :: Maybe String
  , "SourceArn" :: Maybe String
  }

permission :: { "Action" :: String, "FunctionName" :: String, "Principal" :: String } -> Permission
permission required =
  merge required
    { "EventSourceToken" : Nothing
    , "SourceAccount" : Nothing
    , "SourceArn" : Nothing
    }