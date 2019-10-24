module AWS.RoboMaker.SimulationApplicationVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)


type SimulationApplicationVersion =
  { "Application" :: String
  , "CurrentRevisionId" :: Maybe String
  }

simulationApplicationVersion :: { "Application" :: String } -> SimulationApplicationVersion
simulationApplicationVersion required =
  merge required
    { "CurrentRevisionId" : Nothing
    }