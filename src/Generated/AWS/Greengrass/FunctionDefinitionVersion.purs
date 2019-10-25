module CloudFormation.AWS.Greengrass.FunctionDefinitionVersion where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Prim hiding (Function)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import CloudFormation (Json) as CF


-- | `AWS::Greengrass::FunctionDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html
-- |
-- | - `DefaultConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html#cfn-greengrass-functiondefinitionversion-defaultconfig
-- | - `Functions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html#cfn-greengrass-functiondefinitionversion-functions
-- | - `FunctionDefinitionId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinitionversion.html#cfn-greengrass-functiondefinitionversion-functiondefinitionid
newtype FunctionDefinitionVersion = FunctionDefinitionVersion
  { "Functions" :: Value (Array Function)
  , "FunctionDefinitionId" :: Value String
  , "DefaultConfig" :: Maybe (Value DefaultConfig)
  }

derive instance newtypeFunctionDefinitionVersion :: Newtype FunctionDefinitionVersion _
derive newtype instance writeFunctionDefinitionVersion :: WriteForeign FunctionDefinitionVersion
instance resourceFunctionDefinitionVersion :: Resource FunctionDefinitionVersion where type_ _ = "AWS::Greengrass::FunctionDefinitionVersion"

functionDefinitionVersion :: { "Functions" :: Value (Array Function), "FunctionDefinitionId" :: Value String } -> FunctionDefinitionVersion
functionDefinitionVersion required = FunctionDefinitionVersion
  (merge required
    { "DefaultConfig" : Nothing
    })

-- | `AWS::Greengrass::FunctionDefinitionVersion.ResourceAccessPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html
-- |
-- | - `ResourceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html#cfn-greengrass-functiondefinitionversion-resourceaccesspolicy-resourceid
-- | - `Permission`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-resourceaccesspolicy.html#cfn-greengrass-functiondefinitionversion-resourceaccesspolicy-permission
type ResourceAccessPolicy =
  { "ResourceId" :: Value String
  , "Permission" :: Maybe (Value String)
  }

resourceAccessPolicy :: { "ResourceId" :: Value String } -> ResourceAccessPolicy
resourceAccessPolicy required =
  (merge required
    { "Permission" : Nothing
    })

-- | `AWS::Greengrass::FunctionDefinitionVersion.Function`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html
-- |
-- | - `FunctionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-functionarn
-- | - `FunctionConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-functionconfiguration
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-function.html#cfn-greengrass-functiondefinitionversion-function-id
type Function =
  { "FunctionArn" :: Value String
  , "FunctionConfiguration" :: Value FunctionConfiguration
  , "Id" :: Value String
  }

function :: { "FunctionArn" :: Value String, "FunctionConfiguration" :: Value FunctionConfiguration, "Id" :: Value String } -> Function
function required =
  required

-- | `AWS::Greengrass::FunctionDefinitionVersion.DefaultConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-defaultconfig.html
-- |
-- | - `Execution`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-defaultconfig.html#cfn-greengrass-functiondefinitionversion-defaultconfig-execution
type DefaultConfig =
  { "Execution" :: Value Execution
  }

defaultConfig :: { "Execution" :: Value Execution } -> DefaultConfig
defaultConfig required =
  required

-- | `AWS::Greengrass::FunctionDefinitionVersion.Environment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html
-- |
-- | - `Variables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-variables
-- | - `Execution`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-execution
-- | - `ResourceAccessPolicies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-resourceaccesspolicies
-- | - `AccessSysfs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-environment.html#cfn-greengrass-functiondefinitionversion-environment-accesssysfs
type Environment =
  { "Variables" :: Maybe (Value CF.Json)
  , "Execution" :: Maybe (Value Execution)
  , "ResourceAccessPolicies" :: Maybe (Value (Array ResourceAccessPolicy))
  , "AccessSysfs" :: Maybe (Value Boolean)
  }

environment :: Environment
environment =
  { "Variables" : Nothing
  , "Execution" : Nothing
  , "ResourceAccessPolicies" : Nothing
  , "AccessSysfs" : Nothing
  }

-- | `AWS::Greengrass::FunctionDefinitionVersion.RunAs`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html
-- |
-- | - `Uid`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html#cfn-greengrass-functiondefinitionversion-runas-uid
-- | - `Gid`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-runas.html#cfn-greengrass-functiondefinitionversion-runas-gid
type RunAs =
  { "Uid" :: Maybe (Value Int)
  , "Gid" :: Maybe (Value Int)
  }

runAs :: RunAs
runAs =
  { "Uid" : Nothing
  , "Gid" : Nothing
  }

-- | `AWS::Greengrass::FunctionDefinitionVersion.Execution`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html
-- |
-- | - `IsolationMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html#cfn-greengrass-functiondefinitionversion-execution-isolationmode
-- | - `RunAs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-execution.html#cfn-greengrass-functiondefinitionversion-execution-runas
type Execution =
  { "IsolationMode" :: Maybe (Value String)
  , "RunAs" :: Maybe (Value RunAs)
  }

execution :: Execution
execution =
  { "IsolationMode" : Nothing
  , "RunAs" : Nothing
  }

-- | `AWS::Greengrass::FunctionDefinitionVersion.FunctionConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinitionversion-functionconfiguration.html
-- |
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
  { "MemorySize" :: Maybe (Value Int)
  , "Pinned" :: Maybe (Value Boolean)
  , "ExecArgs" :: Maybe (Value String)
  , "Timeout" :: Maybe (Value Int)
  , "EncodingType" :: Maybe (Value String)
  , "Environment" :: Maybe (Value Environment)
  , "Executable" :: Maybe (Value String)
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