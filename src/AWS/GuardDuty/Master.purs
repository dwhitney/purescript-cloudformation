module AWS.GuardDuty.Master where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Master =
  { "DetectorId" :: String
  , "MasterId" :: String
  , "InvitationId" :: Maybe String
  }

master :: { "DetectorId" :: String, "MasterId" :: String } -> Master
master required =
  merge required
    { "InvitationId" : Nothing
    }