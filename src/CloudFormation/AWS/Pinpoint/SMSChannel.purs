module CloudFormation.AWS.Pinpoint.SMSChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)


type SMSChannel =
  { "ApplicationId" :: String
  , "ShortCode" :: Maybe String
  , "Enabled" :: Maybe Boolean
  , "SenderId" :: Maybe String
  }

smscMSChannel :: { "ApplicationId" :: String } -> SMSChannel
smscMSChannel required =
  merge required
    { "ShortCode" : Nothing
    , "Enabled" : Nothing
    , "SenderId" : Nothing
    }