module AWS.Config.RemediationConfiguration where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type RemediationConfiguration =
  { "TargetType" :: String
  , "ConfigRuleName" :: String
  , "TargetId" :: String
  , "TargetVersion" :: Maybe String
  , "ExecutionControls" :: Maybe ExecutionControls
  , "Parameters" :: Maybe Foreign
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

type ExecutionControls =
  { "SsmControls" :: Maybe SsmControls
  }

executionControls :: ExecutionControls
executionControls =
  { "SsmControls" : Nothing
  }

type RemediationParameterValue =
  { "ResourceValue" :: Maybe ResourceValue
  , "StaticValue" :: Maybe StaticValue
  }

remediationParameterValue :: RemediationParameterValue
remediationParameterValue =
  { "ResourceValue" : Nothing
  , "StaticValue" : Nothing
  }

type StaticValue =
  { "Values" :: Maybe (Array String)
  }

staticValue :: StaticValue
staticValue =
  { "Values" : Nothing
  }

type SsmControls =
  { "ErrorPercentage" :: Maybe Int
  , "ConcurrentExecutionRatePercentage" :: Maybe Int
  }

ssmControls :: SsmControls
ssmControls =
  { "ErrorPercentage" : Nothing
  , "ConcurrentExecutionRatePercentage" : Nothing
  }

type ResourceValue =
  { "Value" :: Maybe String
  }

resourceValue :: ResourceValue
resourceValue =
  { "Value" : Nothing
  }