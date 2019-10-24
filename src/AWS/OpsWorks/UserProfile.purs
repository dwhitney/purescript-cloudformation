module AWS.OpsWorks.UserProfile where 

import Data.Maybe (Maybe(..))
import Record (merge)


type UserProfile =
  { "IamUserArn" :: String
  , "AllowSelfManagement" :: Maybe Boolean
  , "SshPublicKey" :: Maybe String
  , "SshUsername" :: Maybe String
  }

userProfile :: { "IamUserArn" :: String } -> UserProfile
userProfile required =
  merge required
    { "AllowSelfManagement" : Nothing
    , "SshPublicKey" : Nothing
    , "SshUsername" : Nothing
    }