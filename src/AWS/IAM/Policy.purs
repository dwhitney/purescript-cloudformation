module AWS.IAM.Policy where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Policy =
  { "PolicyDocument" :: Foreign
  , "PolicyName" :: String
  , "Groups" :: Maybe (Array String)
  , "Roles" :: Maybe (Array String)
  , "Users" :: Maybe (Array String)
  }

policy :: { "PolicyDocument" :: Foreign, "PolicyName" :: String } -> Policy
policy required =
  merge required
    { "Groups" : Nothing
    , "Roles" : Nothing
    , "Users" : Nothing
    }