module AWS.RoboMaker.Fleet where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))


type Fleet =
  { "Tags" :: Maybe Foreign
  , "Name" :: Maybe String
  }

fleet :: Fleet
fleet =
  { "Tags" : Nothing
  , "Name" : Nothing
  }