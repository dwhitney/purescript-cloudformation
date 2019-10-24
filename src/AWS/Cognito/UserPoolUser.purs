module AWS.Cognito.UserPoolUser where 

import Data.Maybe (Maybe(..))
import Record (merge)


type UserPoolUser =
  { "UserPoolId" :: String
  , "ValidationData" :: Maybe (Array AttributeType)
  , "Username" :: Maybe String
  , "MessageAction" :: Maybe String
  , "DesiredDeliveryMediums" :: Maybe (Array String)
  , "ForceAliasCreation" :: Maybe Boolean
  , "UserAttributes" :: Maybe (Array AttributeType)
  }

userPoolUser :: { "UserPoolId" :: String } -> UserPoolUser
userPoolUser required =
  merge required
    { "ValidationData" : Nothing
    , "Username" : Nothing
    , "MessageAction" : Nothing
    , "DesiredDeliveryMediums" : Nothing
    , "ForceAliasCreation" : Nothing
    , "UserAttributes" : Nothing
    }

type AttributeType =
  { "Value" :: Maybe String
  , "Name" :: Maybe String
  }

attributeType :: AttributeType
attributeType =
  { "Value" : Nothing
  , "Name" : Nothing
  }