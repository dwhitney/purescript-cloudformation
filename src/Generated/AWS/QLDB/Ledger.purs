module CloudFormation.AWS.QLDB.Ledger where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::QLDB::Ledger`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html
-- |
-- | - `PermissionsMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html#cfn-qldb-ledger-permissionsmode
-- | - `DeletionProtection`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html#cfn-qldb-ledger-deletionprotection
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html#cfn-qldb-ledger-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-ledger.html#cfn-qldb-ledger-name
newtype Ledger = Ledger
  { "PermissionsMode" :: Value String
  , "DeletionProtection" :: Maybe (Value Boolean)
  , "Tags" :: Maybe (Value (Array Tag))
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeLedger :: Newtype Ledger _
derive newtype instance writeLedger :: WriteForeign Ledger
instance resourceLedger :: Resource Ledger where type_ _ = "AWS::QLDB::Ledger"

ledger :: { "PermissionsMode" :: Value String } -> Ledger
ledger required = Ledger
  (merge required
    { "DeletionProtection" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    })