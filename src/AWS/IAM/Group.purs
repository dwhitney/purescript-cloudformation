module AWS.IAM.Group where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)


type Group =
  { "GroupName" :: Maybe String
  , "ManagedPolicyArns" :: Maybe (Array String)
  , "Path" :: Maybe String
  , "Policies" :: Maybe (Array Policy)
  }

group :: Group
group =
  { "GroupName" : Nothing
  , "ManagedPolicyArns" : Nothing
  , "Path" : Nothing
  , "Policies" : Nothing
  }

type Policy =
  { "PolicyDocument" :: Foreign
  , "PolicyName" :: String
  }

policy :: { "PolicyDocument" :: Foreign, "PolicyName" :: String } -> Policy
policy required =
  required