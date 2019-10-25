module CloudFormation.AWS.Greengrass.FunctionDefinition where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Prim hiding (Function)


-- | `AWS::Greengrass::FunctionDefinition`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinition.html
-- |
-- | - `InitialVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinition.html#cfn-greengrass-functiondefinition-initialversion
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinition.html#cfn-greengrass-functiondefinition-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-functiondefinition.html#cfn-greengrass-functiondefinition-name
newtype FunctionDefinition = FunctionDefinition
  { "Name" :: Value String
  , "InitialVersion" :: Maybe (Value FunctionDefinitionVersion)
  , "Tags" :: Maybe (Value CF.Json)
  }

derive instance newtypeFunctionDefinition :: Newtype FunctionDefinition _
derive newtype instance writeFunctionDefinition :: WriteForeign FunctionDefinition
instance resourceFunctionDefinition :: Resource FunctionDefinition where type_ _ = "AWS::Greengrass::FunctionDefinition"

functionDefinition :: { "Name" :: Value String } -> FunctionDefinition
functionDefinition required = FunctionDefinition
  (merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
    })

-- | `AWS::Greengrass::FunctionDefinition.ResourceAccessPolicy`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-resourceaccesspolicy.html
-- |
-- | - `ResourceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-resourceaccesspolicy.html#cfn-greengrass-functiondefinition-resourceaccesspolicy-resourceid
-- | - `Permission`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-resourceaccesspolicy.html#cfn-greengrass-functiondefinition-resourceaccesspolicy-permission
type ResourceAccessPolicy =
  { "ResourceId" :: Value String
  , "Permission" :: Maybe (Value String)
  }

resourceAccessPolicy :: { "ResourceId" :: Value String } -> ResourceAccessPolicy
resourceAccessPolicy required =
  (merge required
    { "Permission" : Nothing
    })

-- | `AWS::Greengrass::FunctionDefinition.Function`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-function.html
-- |
-- | - `FunctionArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-function.html#cfn-greengrass-functiondefinition-function-functionarn
-- | - `FunctionConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-function.html#cfn-greengrass-functiondefinition-function-functionconfiguration
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-function.html#cfn-greengrass-functiondefinition-function-id
type Function =
  { "FunctionArn" :: Value String
  , "FunctionConfiguration" :: Value FunctionConfiguration
  , "Id" :: Value String
  }

function :: { "FunctionArn" :: Value String, "FunctionConfiguration" :: Value FunctionConfiguration, "Id" :: Value String } -> Function
function required =
  required

-- | `AWS::Greengrass::FunctionDefinition.DefaultConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-defaultconfig.html
-- |
-- | - `Execution`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-defaultconfig.html#cfn-greengrass-functiondefinition-defaultconfig-execution
type DefaultConfig =
  { "Execution" :: Value Execution
  }

defaultConfig :: { "Execution" :: Value Execution } -> DefaultConfig
defaultConfig required =
  required

-- | `AWS::Greengrass::FunctionDefinition.RunAs`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-runas.html
-- |
-- | - `Uid`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-runas.html#cfn-greengrass-functiondefinition-runas-uid
-- | - `Gid`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-runas.html#cfn-greengrass-functiondefinition-runas-gid
type RunAs =
  { "Uid" :: Maybe (Value Int)
  , "Gid" :: Maybe (Value Int)
  }

runAs :: RunAs
runAs =
  { "Uid" : Nothing
  , "Gid" : Nothing
  }

-- | `AWS::Greengrass::FunctionDefinition.FunctionDefinitionVersion`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html
-- |
-- | - `DefaultConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html#cfn-greengrass-functiondefinition-functiondefinitionversion-defaultconfig
-- | - `Functions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functiondefinitionversion.html#cfn-greengrass-functiondefinition-functiondefinitionversion-functions
type FunctionDefinitionVersion =
  { "Functions" :: Value (Array Function)
  , "DefaultConfig" :: Maybe (Value DefaultConfig)
  }

functionDefinitionVersion :: { "Functions" :: Value (Array Function) } -> FunctionDefinitionVersion
functionDefinitionVersion required =
  (merge required
    { "DefaultConfig" : Nothing
    })

-- | `AWS::Greengrass::FunctionDefinition.Environment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html
-- |
-- | - `Variables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html#cfn-greengrass-functiondefinition-environment-variables
-- | - `Execution`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html#cfn-greengrass-functiondefinition-environment-execution
-- | - `ResourceAccessPolicies`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html#cfn-greengrass-functiondefinition-environment-resourceaccesspolicies
-- | - `AccessSysfs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-environment.html#cfn-greengrass-functiondefinition-environment-accesssysfs
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

-- | `AWS::Greengrass::FunctionDefinition.FunctionConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html
-- |
-- | - `MemorySize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html#cfn-greengrass-functiondefinition-functionconfiguration-memorysize
-- | - `Pinned`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html#cfn-greengrass-functiondefinition-functionconfiguration-pinned
-- | - `ExecArgs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html#cfn-greengrass-functiondefinition-functionconfiguration-execargs
-- | - `Timeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html#cfn-greengrass-functiondefinition-functionconfiguration-timeout
-- | - `EncodingType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html#cfn-greengrass-functiondefinition-functionconfiguration-encodingtype
-- | - `Environment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html#cfn-greengrass-functiondefinition-functionconfiguration-environment
-- | - `Executable`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-functionconfiguration.html#cfn-greengrass-functiondefinition-functionconfiguration-executable
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

-- | `AWS::Greengrass::FunctionDefinition.Execution`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-execution.html
-- |
-- | - `IsolationMode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-execution.html#cfn-greengrass-functiondefinition-execution-isolationmode
-- | - `RunAs`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrass-functiondefinition-execution.html#cfn-greengrass-functiondefinition-execution-runas
type Execution =
  { "IsolationMode" :: Maybe (Value String)
  , "RunAs" :: Maybe (Value RunAs)
  }

execution :: Execution
execution =
  { "IsolationMode" : Nothing
  , "RunAs" : Nothing
  }