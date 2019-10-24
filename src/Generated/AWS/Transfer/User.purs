module CloudFormation.AWS.Transfer.User where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::Transfer::User`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html
-- |
-- | - `Policy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-policy
-- | - `Role`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-role
-- | - `HomeDirectory`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-homedirectory
-- | - `ServerId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-serverid
-- | - `UserName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-username
-- | - `SshPublicKeys`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-sshpublickeys
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-tags
type User =
  { "Role" :: String
  , "ServerId" :: String
  , "UserName" :: String
  , "Policy" :: Maybe String
  , "HomeDirectory" :: Maybe String
  , "SshPublicKeys" :: Maybe (Array SshPublicKey)
  , "Tags" :: Maybe (Array Tag)
  }

user :: { "Role" :: String, "ServerId" :: String, "UserName" :: String } -> User
user required =
  merge required
    { "Policy" : Nothing
    , "HomeDirectory" : Nothing
    , "SshPublicKeys" : Nothing
    , "Tags" : Nothing
    }

type SshPublicKey = String