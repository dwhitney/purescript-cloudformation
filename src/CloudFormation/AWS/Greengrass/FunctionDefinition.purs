module CloudFormation.AWS.Greengrass.FunctionDefinition where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type FunctionDefinition =
  { "Name" :: String
  , "InitialVersion" :: Maybe FunctionDefinitionVersion
  , "Tags" :: Maybe Foreign
  }

functionDefinition :: { "Name" :: String } -> FunctionDefinition
functionDefinition required =
  merge required
    { "InitialVersion" : Nothing
    , "Tags" : Nothing
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

type RunAs =
  { "Uid" :: Maybe Int
  , "Gid" :: Maybe Int
  }

runAs :: RunAs
runAs =
  { "Uid" : Nothing
  , "Gid" : Nothing
  }

type FunctionDefinitionVersion =
  { "Functions" :: Array Function
  , "DefaultConfig" :: Maybe DefaultConfig
  }

functionDefinitionVersion :: { "Functions" :: Array Function } -> FunctionDefinitionVersion
functionDefinitionVersion required =
  merge required
    { "DefaultConfig" : Nothing
    }

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

type Execution =
  { "IsolationMode" :: Maybe String
  , "RunAs" :: Maybe RunAs
  }

execution :: Execution
execution =
  { "IsolationMode" : Nothing
  , "RunAs" : Nothing
  }