module AWS.CloudFormation.WaitCondition where 

import Data.Maybe (Maybe(..))


type WaitCondition =
  { "Count" :: Maybe Int
  , "Handle" :: Maybe String
  , "Timeout" :: Maybe String
  }

waitCondition :: WaitCondition
waitCondition =
  { "Count" : Nothing
  , "Handle" : Nothing
  , "Timeout" : Nothing
  }