module AWS.IAM.User where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type User =
  { "Groups" :: Maybe (Array String)
  , "LoginProfile" :: Maybe LoginProfile
  , "ManagedPolicyArns" :: Maybe (Array String)
  , "Path" :: Maybe String
  , "PermissionsBoundary" :: Maybe String
  , "Policies" :: Maybe (Array Policy)
  , "UserName" :: Maybe String
  }

user :: User
user =
  { "Groups" : Nothing
  , "LoginProfile" : Nothing
  , "ManagedPolicyArns" : Nothing
  , "Path" : Nothing
  , "PermissionsBoundary" : Nothing
  , "Policies" : Nothing
  , "UserName" : Nothing
  }

type Policy =
  { "PolicyDocument" :: Foreign
  , "PolicyName" :: String
  }

policy :: { "PolicyDocument" :: Foreign, "PolicyName" :: String } -> Policy
policy required =
  required

type LoginProfile =
  { "Password" :: String
  , "PasswordResetRequired" :: Maybe Boolean
  }

loginProfile :: { "Password" :: String } -> LoginProfile
loginProfile required =
  merge required
    { "PasswordResetRequired" : Nothing
    }