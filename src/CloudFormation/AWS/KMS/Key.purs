module CloudFormation.AWS.KMS.Key where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import CloudFormation.Tag (Tag)
import Record (merge)


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