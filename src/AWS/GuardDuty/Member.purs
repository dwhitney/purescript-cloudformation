module AWS.GuardDuty.Member where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Member =
  { "MemberId" :: String
  , "Email" :: String
  , "DetectorId" :: String
  , "Status" :: Maybe String
  , "Message" :: Maybe String
  , "DisableEmailNotification" :: Maybe Boolean
  }

member :: { "MemberId" :: String, "Email" :: String, "DetectorId" :: String } -> Member
member required =
  merge required
    { "Status" : Nothing
    , "Message" : Nothing
    , "DisableEmailNotification" : Nothing
    }