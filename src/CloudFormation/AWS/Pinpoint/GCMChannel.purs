module CloudFormation.AWS.Pinpoint.GCMChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)


type GCMChannel =
  { "ApiKey" :: String
  , "ApplicationId" :: String
  , "Enabled" :: Maybe Boolean
  }

gcmcCMChannel :: { "ApiKey" :: String, "ApplicationId" :: String } -> GCMChannel
gcmcCMChannel required =
  merge required
    { "Enabled" : Nothing
    }