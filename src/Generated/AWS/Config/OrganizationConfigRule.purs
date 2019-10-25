module CloudFormation.AWS.Config.OrganizationConfigRule where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Config::OrganizationConfigRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html
-- |
-- | - `OrganizationManagedRuleMetadata`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata
-- | - `OrganizationConfigRuleName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-organizationconfigrulename
-- | - `OrganizationCustomRuleMetadata`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata
-- | - `ExcludedAccounts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-excludedaccounts
newtype OrganizationConfigRule = OrganizationConfigRule
  { "OrganizationConfigRuleName" :: Value String
  , "OrganizationManagedRuleMetadata" :: Maybe (Value OrganizationManagedRuleMetadata)
  , "OrganizationCustomRuleMetadata" :: Maybe (Value OrganizationCustomRuleMetadata)
  , "ExcludedAccounts" :: Maybe (Value (Array String))
  }

derive instance newtypeOrganizationConfigRule :: Newtype OrganizationConfigRule _
derive newtype instance writeOrganizationConfigRule :: WriteForeign OrganizationConfigRule
instance resourceOrganizationConfigRule :: Resource OrganizationConfigRule where type_ _ = "AWS::Config::OrganizationConfigRule"

organizationConfigRule :: { "OrganizationConfigRuleName" :: Value String } -> OrganizationConfigRule
organizationConfigRule required = OrganizationConfigRule
  (merge required
    { "OrganizationManagedRuleMetadata" : Nothing
    , "OrganizationCustomRuleMetadata" : Nothing
    , "ExcludedAccounts" : Nothing
    })

-- | `AWS::Config::OrganizationConfigRule.OrganizationCustomRuleMetadata`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html
-- |
-- | - `TagKeyScope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-tagkeyscope
-- | - `TagValueScope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-tagvaluescope
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-description
-- | - `ResourceIdScope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-resourceidscope
-- | - `LambdaFunctionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-lambdafunctionarn
-- | - `OrganizationConfigRuleTriggerTypes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-organizationconfigruletriggertypes
-- | - `ResourceTypesScope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-resourcetypesscope
-- | - `MaximumExecutionFrequency`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-maximumexecutionfrequency
-- | - `InputParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata-inputparameters
type OrganizationCustomRuleMetadata =
  { "LambdaFunctionArn" :: Value String
  , "OrganizationConfigRuleTriggerTypes" :: Value (Array String)
  , "TagKeyScope" :: Maybe (Value String)
  , "TagValueScope" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "ResourceIdScope" :: Maybe (Value String)
  , "ResourceTypesScope" :: Maybe (Value (Array String))
  , "MaximumExecutionFrequency" :: Maybe (Value String)
  , "InputParameters" :: Maybe (Value String)
  }

organizationCustomRuleMetadata :: { "LambdaFunctionArn" :: Value String, "OrganizationConfigRuleTriggerTypes" :: Value (Array String) } -> OrganizationCustomRuleMetadata
organizationCustomRuleMetadata required =
  (merge required
    { "TagKeyScope" : Nothing
    , "TagValueScope" : Nothing
    , "Description" : Nothing
    , "ResourceIdScope" : Nothing
    , "ResourceTypesScope" : Nothing
    , "MaximumExecutionFrequency" : Nothing
    , "InputParameters" : Nothing
    })

-- | `AWS::Config::OrganizationConfigRule.OrganizationManagedRuleMetadata`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html
-- |
-- | - `TagKeyScope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-tagkeyscope
-- | - `TagValueScope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-tagvaluescope
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-description
-- | - `ResourceIdScope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-resourceidscope
-- | - `RuleIdentifier`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-ruleidentifier
-- | - `ResourceTypesScope`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-resourcetypesscope
-- | - `MaximumExecutionFrequency`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-maximumexecutionfrequency
-- | - `InputParameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata-inputparameters
type OrganizationManagedRuleMetadata =
  { "RuleIdentifier" :: Value String
  , "TagKeyScope" :: Maybe (Value String)
  , "TagValueScope" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "ResourceIdScope" :: Maybe (Value String)
  , "ResourceTypesScope" :: Maybe (Value (Array String))
  , "MaximumExecutionFrequency" :: Maybe (Value String)
  , "InputParameters" :: Maybe (Value String)
  }

organizationManagedRuleMetadata :: { "RuleIdentifier" :: Value String } -> OrganizationManagedRuleMetadata
organizationManagedRuleMetadata required =
  (merge required
    { "TagKeyScope" : Nothing
    , "TagValueScope" : Nothing
    , "Description" : Nothing
    , "ResourceIdScope" : Nothing
    , "ResourceTypesScope" : Nothing
    , "MaximumExecutionFrequency" : Nothing
    , "InputParameters" : Nothing
    })