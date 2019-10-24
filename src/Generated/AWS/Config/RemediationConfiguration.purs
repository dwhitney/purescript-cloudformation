module CloudFormation.AWS.Config.RemediationConfiguration where 

import Data.Maybe (Maybe(..))
import CloudFormation (Json)
import Record (merge)


-- | `AWS::Config::RemediationConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html
-- |
-- | - `TargetVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-targetversion
-- | - `ExecutionControls`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-executioncontrols
-- | - `Parameters`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-parameters
-- | - `TargetType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-targettype
-- | - `ConfigRuleName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-configrulename
-- | - `ResourceType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-resourcetype
-- | - `RetryAttemptSeconds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-retryattemptseconds
-- | - `MaximumAutomaticAttempts`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-maximumautomaticattempts
-- | - `TargetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-targetid
-- | - `Automatic`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-remediationconfiguration.html#cfn-config-remediationconfiguration-automatic
type RemediationConfiguration =
  { "TargetType" :: String
  , "ConfigRuleName" :: String
  , "TargetId" :: String
  , "TargetVersion" :: Maybe String
  , "ExecutionControls" :: Maybe ExecutionControls
  , "Parameters" :: Maybe Json
  , "ResourceType" :: Maybe String
  , "RetryAttemptSeconds" :: Maybe Int
  , "MaximumAutomaticAttempts" :: Maybe Int
  , "Automatic" :: Maybe Boolean
  }

remediationConfiguration :: { "TargetType" :: String, "ConfigRuleName" :: String, "TargetId" :: String } -> RemediationConfiguration
remediationConfiguration required =
  merge required
    { "TargetVersion" : Nothing
    , "ExecutionControls" : Nothing
    , "Parameters" : Nothing
    , "ResourceType" : Nothing
    , "RetryAttemptSeconds" : Nothing
    , "MaximumAutomaticAttempts" : Nothing
    , "Automatic" : Nothing
    }

-- | `AWS::Config::RemediationConfiguration.ExecutionControls`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-executioncontrols.html
-- |
-- | - `SsmControls`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-executioncontrols.html#cfn-config-remediationconfiguration-executioncontrols-ssmcontrols
type ExecutionControls =
  { "SsmControls" :: Maybe SsmControls
  }

executionControls :: ExecutionControls
executionControls =
  { "SsmControls" : Nothing
  }

-- | `AWS::Config::RemediationConfiguration.RemediationParameterValue`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-remediationparametervalue.html
-- |
-- | - `ResourceValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-remediationparametervalue.html#cfn-config-remediationconfiguration-remediationparametervalue-resourcevalue
-- | - `StaticValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-remediationparametervalue.html#cfn-config-remediationconfiguration-remediationparametervalue-staticvalue
type RemediationParameterValue =
  { "ResourceValue" :: Maybe ResourceValue
  , "StaticValue" :: Maybe StaticValue
  }

remediationParameterValue :: RemediationParameterValue
remediationParameterValue =
  { "ResourceValue" : Nothing
  , "StaticValue" : Nothing
  }

-- | `AWS::Config::RemediationConfiguration.StaticValue`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-staticvalue.html
-- |
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-staticvalue.html#cfn-config-remediationconfiguration-staticvalue-values
type StaticValue =
  { "Values" :: Maybe (Array String)
  }

staticValue :: StaticValue
staticValue =
  { "Values" : Nothing
  }

-- | `AWS::Config::RemediationConfiguration.SsmControls`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html
-- |
-- | - `ErrorPercentage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html#cfn-config-remediationconfiguration-ssmcontrols-errorpercentage
-- | - `ConcurrentExecutionRatePercentage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-ssmcontrols.html#cfn-config-remediationconfiguration-ssmcontrols-concurrentexecutionratepercentage
type SsmControls =
  { "ErrorPercentage" :: Maybe Int
  , "ConcurrentExecutionRatePercentage" :: Maybe Int
  }

ssmControls :: SsmControls
ssmControls =
  { "ErrorPercentage" : Nothing
  , "ConcurrentExecutionRatePercentage" : Nothing
  }

-- | `AWS::Config::RemediationConfiguration.ResourceValue`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-resourcevalue.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-resourcevalue.html#cfn-config-remediationconfiguration-resourcevalue-value
type ResourceValue =
  { "Value" :: Maybe String
  }

resourceValue :: ResourceValue
resourceValue =
  { "Value" : Nothing
  }