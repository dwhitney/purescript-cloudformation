module CloudFormation.AWS.Cognito.IdentityPoolRoleAttachment where 

import CloudFormation (Value)
import CloudFormation (Json) as CF
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Cognito::IdentityPoolRoleAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html
-- |
-- | - `RoleMappings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html#cfn-cognito-identitypoolroleattachment-rolemappings
-- | - `IdentityPoolId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html#cfn-cognito-identitypoolroleattachment-identitypoolid
-- | - `Roles`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html#cfn-cognito-identitypoolroleattachment-roles
newtype IdentityPoolRoleAttachment = IdentityPoolRoleAttachment
  { "IdentityPoolId" :: Value String
  , "RoleMappings" :: Maybe (Value CF.Json)
  , "Roles" :: Maybe (Value CF.Json)
  }

derive instance newtypeIdentityPoolRoleAttachment :: Newtype IdentityPoolRoleAttachment _
derive newtype instance writeIdentityPoolRoleAttachment :: WriteForeign IdentityPoolRoleAttachment
instance resourceIdentityPoolRoleAttachment :: Resource IdentityPoolRoleAttachment where type_ _ = "AWS::Cognito::IdentityPoolRoleAttachment"

identityPoolRoleAttachment :: { "IdentityPoolId" :: Value String } -> IdentityPoolRoleAttachment
identityPoolRoleAttachment required = IdentityPoolRoleAttachment
  (merge required
    { "RoleMappings" : Nothing
    , "Roles" : Nothing
    })

-- | `AWS::Cognito::IdentityPoolRoleAttachment.RulesConfigurationType`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rulesconfigurationtype.html
-- |
-- | - `Rules`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rulesconfigurationtype.html#cfn-cognito-identitypoolroleattachment-rulesconfigurationtype-rules
type RulesConfigurationType =
  { "Rules" :: Value (Array MappingRule)
  }

rulesConfigurationType :: { "Rules" :: Value (Array MappingRule) } -> RulesConfigurationType
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
  { "MatchType" :: Value String
  , "Value" :: Value String
  , "Claim" :: Value String
  , "RoleARN" :: Value String
  }

mappingRule :: { "MatchType" :: Value String, "Value" :: Value String, "Claim" :: Value String, "RoleARN" :: Value String } -> MappingRule
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
  { "Type" :: Value String
  , "AmbiguousRoleResolution" :: Maybe (Value String)
  , "RulesConfiguration" :: Maybe (Value RulesConfigurationType)
  , "IdentityProvider" :: Maybe (Value String)
  }

roleMapping :: { "Type" :: Value String } -> RoleMapping
roleMapping required =
  (merge required
    { "AmbiguousRoleResolution" : Nothing
    , "RulesConfiguration" : Nothing
    , "IdentityProvider" : Nothing
    })