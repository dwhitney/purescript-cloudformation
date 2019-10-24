module CloudFormation.AWS.Cognito.IdentityPoolRoleAttachment where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


type IdentityPoolRoleAttachment =
  { "IdentityPoolId" :: String
  , "RoleMappings" :: Maybe Foreign
  , "Roles" :: Maybe Foreign
  }

identityPoolRoleAttachment :: { "IdentityPoolId" :: String } -> IdentityPoolRoleAttachment
identityPoolRoleAttachment required =
  merge required
    { "RoleMappings" : Nothing
    , "Roles" : Nothing
    }

type RulesConfigurationType =
  { "Rules" :: Array MappingRule
  }

rulesConfigurationType :: { "Rules" :: Array MappingRule } -> RulesConfigurationType
rulesConfigurationType required =
  required

type MappingRule =
  { "MatchType" :: String
  , "Value" :: String
  , "Claim" :: String
  , "RoleARN" :: String
  }

mappingRule :: { "MatchType" :: String, "Value" :: String, "Claim" :: String, "RoleARN" :: String } -> MappingRule
mappingRule required =
  required

type RoleMapping =
  { "Type" :: String
  , "AmbiguousRoleResolution" :: Maybe String
  , "RulesConfiguration" :: Maybe RulesConfigurationType
  , "IdentityProvider" :: Maybe String
  }

roleMapping :: { "Type" :: String } -> RoleMapping
roleMapping required =
  merge required
    { "AmbiguousRoleResolution" : Nothing
    , "RulesConfiguration" : Nothing
    , "IdentityProvider" : Nothing
    }