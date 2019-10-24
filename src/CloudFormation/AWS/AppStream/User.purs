module CloudFormation.AWS.AppStream.User where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::AppStream::User`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html-- |
-- | - `UserName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-username
-- | - `FirstName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-firstname
-- | - `MessageAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-messageaction
-- | - `LastName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-lastname
-- | - `AuthenticationType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-authenticationtype
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