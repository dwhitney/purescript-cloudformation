module CloudFormation.AWS.Greengrass.FunctionDefinitionVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign (Foreign)


-- | `AWS::Greengrass::FunctionDefinitionVersion`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html-- |
-- | - `DefaultConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html#cfn-greengrass-functiondefinitionversion-defaultconfig
-- | - `Functions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html#cfn-greengrass-functiondefinitionversion-functions
-- | - `FunctionDefinitionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html#cfn-greengrass-functiondefinitionversion-functiondefinitionid
type FunctionDefinitionVersion =
  { "Functions" :: Array Function
  , "FunctionDefinitionId" :: String
  , "DefaultConfig" :: Maybe DefaultConfig
  }

functionDefinitionVersion :: { "Functions" :: Array Function, "FunctionDefinitionId" :: String } -> FunctionDefinitionVersion
functionDefinitionVersion required =
  merge required
    { "DefaultConfig" : Nothing
    }

-- | `AWS::Greengrass::FunctionDefinitionVersion.ResourceAccessPolicy`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html-- |
-- | - `ResourceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html#cfn-greengrass-functiondefinitionversion-resourceaccesspolicy-resourceid
-- | - `Permission`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html#cfn-greengrass-functiondefinitionversion-resourceaccesspolicy-permission
type ResourceAccessPolicy =
  { "ResourceId" :: String
  , "Permission" :: Maybe String
  }

resourceAccessPolicy :: { "ResourceId" :: String } -> ResourceAccessPolicy
resourceAccessPolicy required =
  merge required
    { "Permission" : Nothing
    }

-- | `AWS::Greengrass::FunctionDefinitionVersion.Function`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html-- |
-- | - `FunctionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-functionarn
-- | - `FunctionConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-functionconfiguration
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-id
type Function =
  { "FunctionArn" :: String
  , "FunctionConfiguration" :: FunctionConfiguration
  , "Id" :: String
  }

function :: { "FunctionArn" :: String, "FunctionConfiguration" :: FunctionConfiguration, "Id" :: String } -> Function
function required =
  required

-- | `AWS::Greengrass::FunctionDefinitionVersion.DefaultConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-defaultconfig.html-- |
-- | - `Execution`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-defaultconfig.html#cfn-greengrass-functiondefinitionversion-defaultconfig-execution
type DefaultConfig =
  { "Execution" :: Execution
  }

defaultConfig :: { "Execution" :: Execution } -> DefaultConfig
defaultConfig required =
  required

-- | `AWS::Greengrass::FunctionDefinitionVersion.Environment`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html-- |
-- | - `Variables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-variables
-- | - `Execution`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-execution
-- | - `ResourceAccessPolicies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-resourceaccesspolicies
-- | - `AccessSysfs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-accesssysfs
type Environment =
  { "Variables" :: Maybe Foreign
  , "Execution" :: Maybe Execution
  , "ResourceAccessPolicies" :: Maybe (Array ResourceAccessPolicy)
  , "AccessSysfs" :: Maybe Boolean
  }

environment :: Environment
environment =
  { "Variables" : Nothing
  , "Execution" : Nothing
  , "ResourceAccessPolicies" : Nothing
  , "AccessSysfs" : Nothing
  }

-- | `AWS::Greengrass::FunctionDefinitionVersion.RunAs`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html-- |
-- | - `Uid`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html#cfn-greengrass-functiondefinitionversion-runas-uid
-- | - `Gid`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html#cfn-greengrass-functiondefinitionversion-runas-gid
type RunAs =
  { "Uid" :: Maybe Int
  , "Gid" :: Maybe Int
  }

runAs :: RunAs
runAs =
  { "Uid" : Nothing
  , "Gid" : Nothing
  }

-- | `AWS::Greengrass::FunctionDefinitionVersion.Execution`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html-- |
-- | - `IsolationMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html#cfn-greengrass-functiondefinitionversion-execution-isolationmode
-- | - `RunAs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html#cfn-greengrass-functiondefinitionversion-execution-runas
type Execution =
  { "IsolationMode" :: Maybe String
  , "RunAs" :: Maybe RunAs
  }

execution :: Execution
execution =
  { "IsolationMode" : Nothing
  , "RunAs" : Nothing
  }

-- | `AWS::Greengrass::FunctionDefinitionVersion.FunctionConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html-- |
-- | - `MemorySize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-memorysize
-- | - `Pinned`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-pinned
-- | - `ExecArgs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-execargs
-- | - `Timeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-timeout
-- | - `EncodingType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-encodingtype
-- | - `Environment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-environment
-- | - `Executable`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html#cfn-greengrass-functiondefinitionversion-functionconfiguration-executable
type FunctionConfiguration =
  { "MemorySize" :: Maybe Int
  , "Pinned" :: Maybe Boolean
  , "ExecArgs" :: Maybe String
  , "Timeout" :: Maybe Int
  , "EncodingType" :: Maybe String
  , "Environment" :: Maybe Environment
  , "Executable" :: Maybe String
  }

functionConfiguration :: FunctionConfiguration
functionConfiguration =
  { "MemorySize" : Nothing
  , "Pinned" : Nothing
  , "ExecArgs" : Nothing
  , "Timeout" : Nothing
  , "EncodingType" : Nothing
  , "Environment" : Nothing
  , "Executable" : Nothing
  }