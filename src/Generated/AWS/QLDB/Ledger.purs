module CloudFormation.AWS.QLDB.Ledger where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "PermissionsMode" :: String
  , "DeletionProtection" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  }

derive instance newtypeLedger :: Newtype Ledger _
instance resourceLedger :: Resource Ledger where type_ _ = "AWS::QLDB::Ledger"

ledger :: { "PermissionsMode" :: String } -> Ledger
ledger required = Ledger
  (merge required
    { "DeletionProtection" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    })