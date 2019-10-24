module AWS.Cognito.UserPoolUICustomizationAttachment where 

import Data.Maybe (Maybe(..))
import Record (merge)


type UserPoolUICustomizationAttachment =
  { "UserPoolId" :: String
  , "ClientId" :: String
  , "CSS" :: Maybe String
  }

userPoolUICustomizationAttachment :: { "UserPoolId" :: String, "ClientId" :: String } -> UserPoolUICustomizationAttachment
userPoolUICustomizationAttachment required =
  merge required
    { "CSS" : Nothing
    }