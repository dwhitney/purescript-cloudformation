module CloudFormation.AWS.Transfer.User where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "Role" :: Value String
  , "ServerId" :: Value String
  , "UserName" :: Value String
  , "Policy" :: Maybe (Value String)
  , "HomeDirectory" :: Maybe (Value String)
  , "SshPublicKeys" :: Maybe (Value (Array SshPublicKey))
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeUser :: Newtype User _
derive newtype instance writeUser :: WriteForeign User
instance resourceUser :: Resource User where type_ _ = "AWS::Transfer::User"

user :: { "Role" :: Value String, "ServerId" :: Value String, "UserName" :: Value String } -> User
user required = User
  (merge required
    { "Policy" : Nothing
    , "HomeDirectory" : Nothing
    , "SshPublicKeys" : Nothing
    , "Tags" : Nothing
    })

type SshPublicKey = String