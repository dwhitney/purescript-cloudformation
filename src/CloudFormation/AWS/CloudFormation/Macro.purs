module CloudFormation.AWS.CloudFormation.Macro where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Macro =
  { "FunctionName" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  , "LogGroupName" :: Maybe String
  , "LogRoleARN" :: Maybe String
  }

macro :: { "FunctionName" :: String, "Name" :: String } -> Macro
macro required =
  merge required
    { "Description" : Nothing
    , "LogGroupName" : Nothing
    , "LogRoleARN" : Nothing
    }