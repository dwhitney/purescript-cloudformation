module CloudFormation.AWS.Config.OrganizationConfigRule where 

import Data.Maybe (Maybe(..))
import Record (merge)


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