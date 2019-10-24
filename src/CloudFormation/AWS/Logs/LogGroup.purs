module CloudFormation.AWS.Logs.LogGroup where 

import Data.Maybe (Maybe(..))


type LogGroup =
  { "LogGroupName" :: Maybe String
  , "RetentionInDays" :: Maybe Int
  }

logGroup :: LogGroup
logGroup =
  { "LogGroupName" : Nothing
  , "RetentionInDays" : Nothing
  }