module AWS.Pinpoint.APNSVoipSandboxChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)


type APNSVoipSandboxChannel =
  { "ApplicationId" :: String
  , "BundleId" :: Maybe String
  , "PrivateKey" :: Maybe String
  , "Enabled" :: Maybe Boolean
  , "DefaultAuthenticationMethod" :: Maybe String
  , "TokenKey" :: Maybe String
  , "TeamId" :: Maybe String
  , "Certificate" :: Maybe String
  , "TokenKeyId" :: Maybe String
  }

apnsvPNSVoipSandboxChannel :: { "ApplicationId" :: String } -> APNSVoipSandboxChannel
apnsvPNSVoipSandboxChannel required =
  merge required
    { "BundleId" : Nothing
    , "PrivateKey" : Nothing
    , "Enabled" : Nothing
    , "DefaultAuthenticationMethod" : Nothing
    , "TokenKey" : Nothing
    , "TeamId" : Nothing
    , "Certificate" : Nothing
    , "TokenKeyId" : Nothing
    }