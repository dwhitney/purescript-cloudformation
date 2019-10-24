module CloudFormation.AWS.OpsWorks.UserProfile where 

import Data.Maybe (Maybe(..))
import Record (merge)


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
type UserProfile =
  { "IamUserArn" :: String
  , "AllowSelfManagement" :: Maybe Boolean
  , "SshPublicKey" :: Maybe String
  , "SshUsername" :: Maybe String
  }

userProfile :: { "IamUserArn" :: String } -> UserProfile
userProfile required =
  merge required
    { "AllowSelfManagement" : Nothing
    , "SshPublicKey" : Nothing
    , "SshUsername" : Nothing
    }