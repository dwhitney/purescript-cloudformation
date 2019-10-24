module CloudFormation.AWS.AppStream.User where 

import Data.Maybe (Maybe(..))
import Record (merge)


type User =
  { "UserName" :: String
  , "AuthenticationType" :: String
  , "FirstName" :: Maybe String
  , "MessageAction" :: Maybe String
  , "LastName" :: Maybe String
  }

user :: { "UserName" :: String, "AuthenticationType" :: String } -> User
user required =
  merge required
    { "FirstName" : Nothing
    , "MessageAction" : Nothing
    , "LastName" : Nothing
    }