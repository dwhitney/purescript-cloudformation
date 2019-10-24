module AWS.Greengrass.FunctionDefinitionVersion where 

import Data.Maybe (Maybe(..))
import Record (merge)
import Foreign (Foreign)


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

type ResourceAccessPolicy =
  { "ResourceId" :: String
  , "Permission" :: Maybe String
  }

resourceAccessPolicy :: { "ResourceId" :: String } -> ResourceAccessPolicy
resourceAccessPolicy required =
  merge required
    { "Permission" : Nothing
    }

type Function =
  { "FunctionArn" :: String
  , "FunctionConfiguration" :: FunctionConfiguration
  , "Id" :: String
  }

function :: { "FunctionArn" :: String, "FunctionConfiguration" :: FunctionConfiguration, "Id" :: String } -> Function
function required =
  required

type DefaultConfig =
  { "Execution" :: Execution
  }

defaultConfig :: { "Execution" :: Execution } -> DefaultConfig
defaultConfig required =
  required

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

type RunAs =
  { "Uid" :: Maybe Int
  , "Gid" :: Maybe Int
  }

runAs :: RunAs
runAs =
  { "Uid" : Nothing
  , "Gid" : Nothing
  }

type Execution =
  { "IsolationMode" :: Maybe String
  , "RunAs" :: Maybe RunAs
  }

execution :: Execution
execution =
  { "IsolationMode" : Nothing
  , "RunAs" : Nothing
  }

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