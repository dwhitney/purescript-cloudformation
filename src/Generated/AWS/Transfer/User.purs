module CloudFormation.AWS.Transfer.User where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype User = User
  { "Role" :: String
  , "ServerId" :: String
  , "UserName" :: String
  , "Policy" :: Maybe String
  , "HomeDirectory" :: Maybe String
  , "SshPublicKeys" :: Maybe (Array SshPublicKey)
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeUser :: Newtype User _
instance resourceUser :: Resource User where type_ _ = "AWS::Transfer::User"

user :: { "Role" :: String, "ServerId" :: String, "UserName" :: String } -> User
user required = User
  (merge required
    { "Policy" : Nothing
    , "HomeDirectory" : Nothing
    , "SshPublicKeys" : Nothing
    , "Tags" : Nothing
    })

type SshPublicKey = String