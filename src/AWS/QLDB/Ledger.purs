module AWS.QLDB.Ledger where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type Ledger =
  { "PermissionsMode" :: String
  , "DeletionProtection" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  }

ledger :: { "PermissionsMode" :: String } -> Ledger
ledger required =
  merge required
    { "DeletionProtection" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    }