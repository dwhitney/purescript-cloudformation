module CloudFormation.AWS.Cognito.IdentityPoolRoleAttachment where 

import Foreign (Foreign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Cognito::IdentityPoolRoleAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html
-- |
-- | - `RoleMappings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html#cfn-cognito-identitypoolroleattachment-rolemappings
-- | - `IdentityPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html#cfn-cognito-identitypoolroleattachment-identitypoolid
-- | - `Roles`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html#cfn-cognito-identitypoolroleattachment-roles
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

-- | `AWS::Cognito::IdentityPoolRoleAttachment.RulesConfigurationType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rulesconfigurationtype.html
-- |
-- | - `Rules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rulesconfigurationtype.html#cfn-cognito-identitypoolroleattachment-rulesconfigurationtype-rules
type RulesConfigurationType =
  { "Rules" :: Array MappingRule
  }

rulesConfigurationType :: { "Rules" :: Array MappingRule } -> RulesConfigurationType
rulesConfigurationType required =
  required

-- | `AWS::Cognito::IdentityPoolRoleAttachment.MappingRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html
-- |
-- | - `MatchType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html#cfn-cognito-identitypoolroleattachment-mappingrule-matchtype
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html#cfn-cognito-identitypoolroleattachment-mappingrule-value
-- | - `Claim`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html#cfn-cognito-identitypoolroleattachment-mappingrule-claim
-- | - `RoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html#cfn-cognito-identitypoolroleattachment-mappingrule-rolearn
type MappingRule =
  { "MatchType" :: String
  , "Value" :: String
  , "Claim" :: String
  , "RoleARN" :: String
  }

mappingRule :: { "MatchType" :: String, "Value" :: String, "Claim" :: String, "RoleARN" :: String } -> MappingRule
mappingRule required =
  required

-- | `AWS::Cognito::IdentityPoolRoleAttachment.RoleMapping`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html
-- |
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html#cfn-cognito-identitypoolroleattachment-rolemapping-type
-- | - `AmbiguousRoleResolution`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html#cfn-cognito-identitypoolroleattachment-rolemapping-ambiguousroleresolution
-- | - `RulesConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html#cfn-cognito-identitypoolroleattachment-rolemapping-rulesconfiguration
-- | - `IdentityProvider`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rolemapping.html#cfn-cognito-identitypoolroleattachment-rolemapping-identityprovider
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