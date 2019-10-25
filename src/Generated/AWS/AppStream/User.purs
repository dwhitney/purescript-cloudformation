module CloudFormation.AWS.AppStream.User where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "UserName" :: Value String
  , "AuthenticationType" :: Value String
  , "FirstName" :: Maybe (Value String)
  , "MessageAction" :: Maybe (Value String)
  , "LastName" :: Maybe (Value String)
  }

derive instance newtypeUser :: Newtype User _
derive newtype instance writeUser :: WriteForeign User
instance resourceUser :: Resource User where type_ _ = "AWS::AppStream::User"

user :: { "UserName" :: Value String, "AuthenticationType" :: Value String } -> User
user required = User
  (merge required
    { "FirstName" : Nothing
    , "MessageAction" : Nothing
    , "LastName" : Nothing
    })