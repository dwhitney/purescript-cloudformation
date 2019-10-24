module CloudFormation.AWS.Cognito.UserPoolGroup where 

import Data.Maybe (Maybe(..))
import Record (merge)


type UserPoolGroup =
  { "UserPoolId" :: String
  , "GroupName" :: Maybe String
  , "Description" :: Maybe String
  , "Precedence" :: Maybe Number
  , "RoleArn" :: Maybe String
  }

userPoolGroup :: { "UserPoolId" :: String } -> UserPoolGroup
userPoolGroup required =
  merge required
    { "GroupName" : Nothing
    , "Description" : Nothing
    , "Precedence" : Nothing
    , "RoleArn" : Nothing
    }