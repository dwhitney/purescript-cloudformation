module CloudFormation.AWS.Pinpoint.VoiceChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)


type VoiceChannel =
  { "ApplicationId" :: String
  , "Enabled" :: Maybe Boolean
  }

voiceChannel :: { "ApplicationId" :: String } -> VoiceChannel
voiceChannel required =
  merge required
    { "Enabled" : Nothing
    }