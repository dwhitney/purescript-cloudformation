module AWS.Pinpoint.BaiduChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)


type BaiduChannel =
  { "SecretKey" :: String
  , "ApiKey" :: String
  , "ApplicationId" :: String
  , "Enabled" :: Maybe Boolean
  }

baiduChannel :: { "SecretKey" :: String, "ApiKey" :: String, "ApplicationId" :: String } -> BaiduChannel
baiduChannel required =
  merge required
    { "Enabled" : Nothing
    }