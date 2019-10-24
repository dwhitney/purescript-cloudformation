module AWS.AppStream.StackUserAssociation where 

import Data.Maybe (Maybe(..))
import Record (merge)


type StackUserAssociation =
  { "UserName" :: String
  , "StackName" :: String
  , "AuthenticationType" :: String
  , "SendEmailNotification" :: Maybe Boolean
  }

stackUserAssociation :: { "UserName" :: String, "StackName" :: String, "AuthenticationType" :: String } -> StackUserAssociation
stackUserAssociation required =
  merge required
    { "SendEmailNotification" : Nothing
    }