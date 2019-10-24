module CloudFormation.AWS.CloudFormation.Stack where 

import Data.Maybe (Maybe(..))
import Foreign.Object (Object)
import CloudFormation.Tag (Tag)
import Record (merge)


type Stack =
  { "TemplateURL" :: String
  , "NotificationARNs" :: Maybe (Array String)
  , "Parameters" :: Maybe (Object String)
  , "Tags" :: Maybe (Array Tag)
  , "TimeoutInMinutes" :: Maybe Int
  }

stack :: { "TemplateURL" :: String } -> Stack
stack required =
  merge required
    { "NotificationARNs" : Nothing
    , "Parameters" : Nothing
    , "Tags" : Nothing
    , "TimeoutInMinutes" : Nothing
    }