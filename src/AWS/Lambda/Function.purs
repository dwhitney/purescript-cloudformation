module AWS.Lambda.Function where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)
import Foreign.Object (Object)


type Function =
  { "Code" :: Code
  , "Handler" :: String
  , "Role" :: String
  , "Runtime" :: String
  , "DeadLetterConfig" :: Maybe DeadLetterConfig
  , "Description" :: Maybe String
  , "Environment" :: Maybe Environment
  , "FunctionName" :: Maybe String
  , "KmsKeyArn" :: Maybe String
  , "Layers" :: Maybe (Array String)
  , "MemorySize" :: Maybe Int
  , "ReservedConcurrentExecutions" :: Maybe Int
  , "Tags" :: Maybe (Array Tag)
  , "Timeout" :: Maybe Int
  , "TracingConfig" :: Maybe TracingConfig
  , "VpcConfig" :: Maybe VpcConfig
  }

function :: { "Code" :: Code, "Handler" :: String, "Role" :: String, "Runtime" :: String } -> Function
function required =
  merge required
    { "DeadLetterConfig" : Nothing
    , "Description" : Nothing
    , "Environment" : Nothing
    , "FunctionName" : Nothing
    , "KmsKeyArn" : Nothing
    , "Layers" : Nothing
    , "MemorySize" : Nothing
    , "ReservedConcurrentExecutions" : Nothing
    , "Tags" : Nothing
    , "Timeout" : Nothing
    , "TracingConfig" : Nothing
    , "VpcConfig" : Nothing
    }

type Environment =
  { "Variables" :: Maybe (Object String)
  }

environment :: Environment
environment =
  { "Variables" : Nothing
  }

type TracingConfig =
  { "Mode" :: Maybe String
  }

tracingConfig :: TracingConfig
tracingConfig =
  { "Mode" : Nothing
  }

type Code =
  { "S3Bucket" :: Maybe String
  , "S3Key" :: Maybe String
  , "S3ObjectVersion" :: Maybe String
  , "ZipFile" :: Maybe String
  }

code :: Code
code =
  { "S3Bucket" : Nothing
  , "S3Key" : Nothing
  , "S3ObjectVersion" : Nothing
  , "ZipFile" : Nothing
  }

type DeadLetterConfig =
  { "TargetArn" :: Maybe String
  }

deadLetterConfig :: DeadLetterConfig
deadLetterConfig =
  { "TargetArn" : Nothing
  }

type VpcConfig =
  { "SecurityGroupIds" :: Array String
  , "SubnetIds" :: Array String
  }

vpcConfig :: { "SecurityGroupIds" :: Array String, "SubnetIds" :: Array String } -> VpcConfig
vpcConfig required =
  required