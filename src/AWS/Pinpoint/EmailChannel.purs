module AWS.Pinpoint.EmailChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)


type EmailChannel =
  { "FromAddress" :: String
  , "ApplicationId" :: String
  , "Identity" :: String
  , "ConfigurationSet" :: Maybe String
  , "Enabled" :: Maybe Boolean
  , "RoleArn" :: Maybe String
  }

emailChannel :: { "FromAddress" :: String, "ApplicationId" :: String, "Identity" :: String } -> EmailChannel
emailChannel required =
  merge required
    { "ConfigurationSet" : Nothing
    , "Enabled" : Nothing
    , "RoleArn" : Nothing
    }