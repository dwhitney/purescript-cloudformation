module CloudFormation.AWS.Pinpoint.ADMChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ADMChannel =
  { "ClientSecret" :: String
  , "ClientId" :: String
  , "ApplicationId" :: String
  , "Enabled" :: Maybe Boolean
  }

admcDMChannel :: { "ClientSecret" :: String, "ClientId" :: String, "ApplicationId" :: String } -> ADMChannel
admcDMChannel required =
  merge required
    { "Enabled" : Nothing
    }