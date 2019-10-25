module CloudFormation.AWS.OpsWorks.UserProfile where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::OpsWorks::UserProfile`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html
-- |
-- | - `AllowSelfManagement`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-allowselfmanagement
-- | - `IamUserArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-iamuserarn
-- | - `SshPublicKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-sshpublickey
-- | - `SshUsername`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-sshusername
newtype UserProfile = UserProfile
  { "IamUserArn" :: Value String
  , "AllowSelfManagement" :: Maybe (Value Boolean)
  , "SshPublicKey" :: Maybe (Value String)
  , "SshUsername" :: Maybe (Value String)
  }

derive instance newtypeUserProfile :: Newtype UserProfile _
derive newtype instance writeUserProfile :: WriteForeign UserProfile
instance resourceUserProfile :: Resource UserProfile where type_ _ = "AWS::OpsWorks::UserProfile"

userProfile :: { "IamUserArn" :: Value String } -> UserProfile
userProfile required = UserProfile
  (merge required
    { "AllowSelfManagement" : Nothing
    , "SshPublicKey" : Nothing
    , "SshUsername" : Nothing
    })