module CloudFormation.AWS.OpsWorks.UserProfile where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "IamUserArn" :: String
  , "AllowSelfManagement" :: Maybe Boolean
  , "SshPublicKey" :: Maybe String
  , "SshUsername" :: Maybe String
  }

derive instance newtypeUserProfile :: Newtype UserProfile _
instance resourceUserProfile :: Resource UserProfile where type_ _ = "AWS::OpsWorks::UserProfile"

userProfile :: { "IamUserArn" :: String } -> UserProfile
userProfile required = UserProfile
  (merge required
    { "AllowSelfManagement" : Nothing
    , "SshPublicKey" : Nothing
    , "SshUsername" : Nothing
    })