module CloudFormation.AWS.AppStream.User where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::AppStream::User`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html
-- |
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
newtype User = User
  { "UserName" :: String
  , "AuthenticationType" :: String
  , "FirstName" :: Maybe String
  , "MessageAction" :: Maybe String
  , "LastName" :: Maybe String
  }

derive instance newtypeUser :: Newtype User _
instance resourceUser :: Resource User where type_ _ = "AWS::AppStream::User"

user :: { "UserName" :: String, "AuthenticationType" :: String } -> User
user required = User
  (merge required
    { "FirstName" : Nothing
    , "MessageAction" : Nothing
    , "LastName" : Nothing
    })