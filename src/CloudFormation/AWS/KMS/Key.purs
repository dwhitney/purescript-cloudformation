module CloudFormation.AWS.KMS.Key where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import CloudFormation.Tag (Tag)
import Record (merge)


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
type Key =
  { "KeyPolicy" :: Foreign
  , "Description" :: Maybe String
  , "EnableKeyRotation" :: Maybe Boolean
  , "Enabled" :: Maybe Boolean
  , "KeyUsage" :: Maybe String
  , "PendingWindowInDays" :: Maybe Int
  , "Tags" :: Maybe (Array Tag)
  }

key :: { "KeyPolicy" :: Foreign } -> Key
key required =
  merge required
    { "Description" : Nothing
    , "EnableKeyRotation" : Nothing
    , "Enabled" : Nothing
    , "KeyUsage" : Nothing
    , "PendingWindowInDays" : Nothing
    , "Tags" : Nothing
    }