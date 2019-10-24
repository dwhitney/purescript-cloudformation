module AWS.RoboMaker.Robot where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Robot =
  { "Architecture" :: String
  , "GreengrassGroupId" :: String
  , "Fleet" :: Maybe String
  , "Tags" :: Maybe Foreign
  , "Name" :: Maybe String
  }

robot :: { "Architecture" :: String, "GreengrassGroupId" :: String } -> Robot
robot required =
  merge required
    { "Fleet" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    }