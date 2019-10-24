module AWS.Cognito.UserPoolIdentityProvider where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type UserPoolIdentityProvider =
  { "ProviderName" :: String
  , "UserPoolId" :: String
  , "ProviderType" :: String
  , "AttributeMapping" :: Maybe Foreign
  , "ProviderDetails" :: Maybe Foreign
  , "IdpIdentifiers" :: Maybe (Array String)
  }

userPoolIdentityProvider :: { "ProviderName" :: String, "UserPoolId" :: String, "ProviderType" :: String } -> UserPoolIdentityProvider
userPoolIdentityProvider required =
  merge required
    { "AttributeMapping" : Nothing
    , "ProviderDetails" : Nothing
    , "IdpIdentifiers" : Nothing
    }