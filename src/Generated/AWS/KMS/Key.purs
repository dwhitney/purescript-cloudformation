module CloudFormation.AWS.KMS.Key where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::KMS::Key`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-description
-- | - `EnableKeyRotation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-enablekeyrotation
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-enabled
-- | - `KeyPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keypolicy
-- | - `KeyUsage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keyusage
-- | - `PendingWindowInDays`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-pendingwindowindays
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-tags
newtype Key = Key
  { "KeyPolicy" :: Value CF.Json
  , "Description" :: Maybe (Value String)
  , "EnableKeyRotation" :: Maybe (Value Boolean)
  , "Enabled" :: Maybe (Value Boolean)
  , "KeyUsage" :: Maybe (Value String)
  , "PendingWindowInDays" :: Maybe (Value Int)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeKey :: Newtype Key _
derive newtype instance writeKey :: WriteForeign Key
instance resourceKey :: Resource Key where type_ _ = "AWS::KMS::Key"

key :: { "KeyPolicy" :: Value CF.Json } -> Key
key required = Key
  (merge required
    { "Description" : Nothing
    , "EnableKeyRotation" : Nothing
    , "Enabled" : Nothing
    , "KeyUsage" : Nothing
    , "PendingWindowInDays" : Nothing
    , "Tags" : Nothing
    })