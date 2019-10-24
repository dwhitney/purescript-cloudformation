module AWS.Config.ConfigurationRecorder where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ConfigurationRecorder =
  { "RoleARN" :: String
  , "Name" :: Maybe String
  , "RecordingGroup" :: Maybe RecordingGroup
  }

configurationRecorder :: { "RoleARN" :: String } -> ConfigurationRecorder
configurationRecorder required =
  merge required
    { "Name" : Nothing
    , "RecordingGroup" : Nothing
    }

type RecordingGroup =
  { "AllSupported" :: Maybe Boolean
  , "IncludeGlobalResourceTypes" :: Maybe Boolean
  , "ResourceTypes" :: Maybe (Array String)
  }

recordingGroup :: RecordingGroup
recordingGroup =
  { "AllSupported" : Nothing
  , "IncludeGlobalResourceTypes" : Nothing
  , "ResourceTypes" : Nothing
  }