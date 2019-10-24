module CloudFormation.AWS.Cognito.UserPoolResourceServer where 

import Data.Maybe (Maybe(..))
import Record (merge)


type UserPoolResourceServer =
  { "UserPoolId" :: String
  , "Identifier" :: String
  , "Name" :: String
  , "Scopes" :: Maybe (Array ResourceServerScopeType)
  }

userPoolResourceServer :: { "UserPoolId" :: String, "Identifier" :: String, "Name" :: String } -> UserPoolResourceServer
userPoolResourceServer required =
  merge required
    { "Scopes" : Nothing
    }

type ResourceServerScopeType =
  { "ScopeName" :: String
  , "ScopeDescription" :: String
  }

resourceServerScopeType :: { "ScopeName" :: String, "ScopeDescription" :: String } -> ResourceServerScopeType
resourceServerScopeType required =
  required