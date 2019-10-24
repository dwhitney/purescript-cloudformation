module AWS.GuardDuty.ThreatIntelSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ThreatIntelSet =
  { "Format" :: String
  , "Activate" :: Boolean
  , "DetectorId" :: String
  , "Location" :: String
  , "Name" :: Maybe String
  }

threatIntelSet :: { "Format" :: String, "Activate" :: Boolean, "DetectorId" :: String, "Location" :: String } -> ThreatIntelSet
threatIntelSet required =
  merge required
    { "Name" : Nothing
    }