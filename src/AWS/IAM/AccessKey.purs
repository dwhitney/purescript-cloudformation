module AWS.IAM.AccessKey where 

import Data.Maybe (Maybe(..))
import Record (merge)


type AccessKey =
  { "UserName" :: String
  , "Serial" :: Maybe Int
  , "Status" :: Maybe String
  }

accessKey :: { "UserName" :: String } -> AccessKey
accessKey required =
  merge required
    { "Serial" : Nothing
    , "Status" : Nothing
    }