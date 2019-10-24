module AWS.GuardDuty.Detector where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Detector =
  { "Enable" :: Boolean
  , "FindingPublishingFrequency" :: Maybe String
  }

detector :: { "Enable" :: Boolean } -> Detector
detector required =
  merge required
    { "FindingPublishingFrequency" : Nothing
    }