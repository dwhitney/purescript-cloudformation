module CloudFormation.AWS.Config.RemediationConfiguration where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
newtype RemediationConfiguration = RemediationConfiguration
  { "TargetType" :: Value String
  , "ConfigRuleName" :: Value String
  , "TargetId" :: Value String
  , "TargetVersion" :: Maybe (Value String)
  , "ExecutionControls" :: Maybe (Value ExecutionControls)
  , "Parameters" :: Maybe (Value CF.Json)
  , "ResourceType" :: Maybe (Value String)
  , "RetryAttemptSeconds" :: Maybe (Value Int)
  , "MaximumAutomaticAttempts" :: Maybe (Value Int)
  , "Automatic" :: Maybe (Value Boolean)
  }

derive instance newtypeRemediationConfiguration :: Newtype RemediationConfiguration _
derive newtype instance writeRemediationConfiguration :: WriteForeign RemediationConfiguration
instance resourceRemediationConfiguration :: Resource RemediationConfiguration where type_ _ = "AWS::Config::RemediationConfiguration"

remediationConfiguration :: { "TargetType" :: Value String, "ConfigRuleName" :: Value String, "TargetId" :: Value String } -> RemediationConfiguration
remediationConfiguration required = RemediationConfiguration
  (merge required
    { "TargetVersion" : Nothing
    , "ExecutionControls" : Nothing
    , "Parameters" : Nothing
    , "ResourceType" : Nothing
    , "RetryAttemptSeconds" : Nothing
    , "MaximumAutomaticAttempts" : Nothing
    , "Automatic" : Nothing
    })

-- | `AWS::Config::RemediationConfiguration.ExecutionControls`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-executioncontrols.html
-- |
-- | - `SsmControls`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-remediationconfiguration-executioncontrols.html#cfn-config-remediationconfiguration-executioncontrols-ssmcontrols
type ExecutionControls =
  { "SsmControls" :: Maybe (Value SsmControls)
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
  { "ResourceValue" :: Maybe (Value ResourceValue)
  , "StaticValue" :: Maybe (Value StaticValue)
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
  { "Values" :: Maybe (Value (Array String))
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
  { "ErrorPercentage" :: Maybe (Value Int)
  , "ConcurrentExecutionRatePercentage" :: Maybe (Value Int)
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
  { "Value" :: Maybe (Value String)
  }

resourceValue :: ResourceValue
resourceValue =
  { "Value" : Nothing
  }