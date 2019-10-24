module AWS.RoboMaker.RobotApplicationVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


type RobotApplicationVersion =
  { "Application" :: String
  , "CurrentRevisionId" :: Maybe String
  }

robotApplicationVersion :: { "Application" :: String } -> RobotApplicationVersion
robotApplicationVersion required =
  merge required
    { "CurrentRevisionId" : Nothing
    }