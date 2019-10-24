module AWS.GuardDuty.IPSet where 

import Data.Maybe (Maybe(..))
import Record (merge)


type IPSet =
  { "Format" :: String
  , "Activate" :: Boolean
  , "DetectorId" :: String
  , "Location" :: String
  , "Name" :: Maybe String
  }

ipsPSet :: { "Format" :: String, "Activate" :: Boolean, "DetectorId" :: String, "Location" :: String } -> IPSet
ipsPSet required =
  merge required
    { "Name" : Nothing
    }