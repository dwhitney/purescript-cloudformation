module CloudFormation.AWS.Config.OrganizationConfigRule where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Config::OrganizationConfigRule`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html-- |
-- | - `OrganizationManagedRuleMetadata`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-organizationmanagedrulemetadata
-- | - `OrganizationConfigRuleName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-organizationconfigrulename
-- | - `OrganizationCustomRuleMetadata`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-organizationcustomrulemetadata
-- | - `ExcludedAccounts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-organizationconfigrule.html#cfn-config-organizationconfigrule-excludedaccounts
type OrganizationConfigRule =
  { "OrganizationConfigRuleName" :: String
  , "OrganizationManagedRuleMetadata" :: Maybe OrganizationManagedRuleMetadata
  , "OrganizationCustomRuleMetadata" :: Maybe OrganizationCustomRuleMetadata
  , "ExcludedAccounts" :: Maybe (Array String)
  }

organizationConfigRule :: { "OrganizationConfigRuleName" :: String } -> OrganizationConfigRule
organizationConfigRule required =
  merge required
    { "OrganizationManagedRuleMetadata" : Nothing
    , "OrganizationCustomRuleMetadata" : Nothing
    , "ExcludedAccounts" : Nothing
    }

-- | `AWS::Config::OrganizationConfigRule.OrganizationCustomRuleMetadata`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationcustomrulemetadata.html-- |
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
  { "LambdaFunctionArn" :: String
  , "OrganizationConfigRuleTriggerTypes" :: Array String
  , "TagKeyScope" :: Maybe String
  , "TagValueScope" :: Maybe String
  , "Description" :: Maybe String
  , "ResourceIdScope" :: Maybe String
  , "ResourceTypesScope" :: Maybe (Array String)
  , "MaximumExecutionFrequency" :: Maybe String
  , "InputParameters" :: Maybe String
  }

organizationCustomRuleMetadata :: { "LambdaFunctionArn" :: String, "OrganizationConfigRuleTriggerTypes" :: Array String } -> OrganizationCustomRuleMetadata
organizationCustomRuleMetadata required =
  merge required
    { "TagKeyScope" : Nothing
    , "TagValueScope" : Nothing
    , "Description" : Nothing
    , "ResourceIdScope" : Nothing
    , "ResourceTypesScope" : Nothing
    , "MaximumExecutionFrequency" : Nothing
    , "InputParameters" : Nothing
    }

-- | `AWS::Config::OrganizationConfigRule.OrganizationManagedRuleMetadata`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-organizationconfigrule-organizationmanagedrulemetadata.html-- |
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
  { "RuleIdentifier" :: String
  , "TagKeyScope" :: Maybe String
  , "TagValueScope" :: Maybe String
  , "Description" :: Maybe String
  , "ResourceIdScope" :: Maybe String
  , "ResourceTypesScope" :: Maybe (Array String)
  , "MaximumExecutionFrequency" :: Maybe String
  , "InputParameters" :: Maybe String
  }

organizationManagedRuleMetadata :: { "RuleIdentifier" :: String } -> OrganizationManagedRuleMetadata
organizationManagedRuleMetadata required =
  merge required
    { "TagKeyScope" : Nothing
    , "TagValueScope" : Nothing
    , "Description" : Nothing
    , "ResourceIdScope" : Nothing
    , "ResourceTypesScope" : Nothing
    , "MaximumExecutionFrequency" : Nothing
    , "InputParameters" : Nothing
    }