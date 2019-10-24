module CloudFormation.AWS.IAM.Role where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


type Role =
  { "AssumeRolePolicyDocument" :: Foreign
  , "Description" :: Maybe String
  , "ManagedPolicyArns" :: Maybe (Array String)
  , "MaxSessionDuration" :: Maybe Int
  , "Path" :: Maybe String
  , "PermissionsBoundary" :: Maybe String
  , "Policies" :: Maybe (Array Policy)
  , "RoleName" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

role :: { "AssumeRolePolicyDocument" :: Foreign } -> Role
role required =
  merge required
    { "Description" : Nothing
    , "ManagedPolicyArns" : Nothing
    , "MaxSessionDuration" : Nothing
    , "Path" : Nothing
    , "PermissionsBoundary" : Nothing
    , "Policies" : Nothing
    , "RoleName" : Nothing
    , "Tags" : Nothing
    }

type Policy =
  { "PolicyDocument" :: Foreign
  , "PolicyName" :: String
  }

policy :: { "PolicyDocument" :: Foreign, "PolicyName" :: String } -> Policy
policy required =
  required