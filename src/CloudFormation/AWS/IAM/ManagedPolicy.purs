module CloudFormation.AWS.IAM.ManagedPolicy where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type ManagedPolicy =
  { "PolicyDocument" :: Foreign
  , "Description" :: Maybe String
  , "Groups" :: Maybe (Array String)
  , "ManagedPolicyName" :: Maybe String
  , "Path" :: Maybe String
  , "Roles" :: Maybe (Array String)
  , "Users" :: Maybe (Array String)
  }

managedPolicy :: { "PolicyDocument" :: Foreign } -> ManagedPolicy
managedPolicy required =
  merge required
    { "Description" : Nothing
    , "Groups" : Nothing
    , "ManagedPolicyName" : Nothing
    , "Path" : Nothing
    , "Roles" : Nothing
    , "Users" : Nothing
    }