module AWS.Transfer.User where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type User =
  { "Role" :: String
  , "ServerId" :: String
  , "UserName" :: String
  , "Policy" :: Maybe String
  , "HomeDirectory" :: Maybe String
  , "SshPublicKeys" :: Maybe (Array SshPublicKey)
  , "Tags" :: Maybe (Array Tag)
  }

user :: { "Role" :: String, "ServerId" :: String, "UserName" :: String } -> User
user required =
  merge required
    { "Policy" : Nothing
    , "HomeDirectory" : Nothing
    , "SshPublicKeys" : Nothing
    , "Tags" : Nothing
    }

type SshPublicKey = String