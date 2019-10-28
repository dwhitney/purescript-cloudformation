module CloudFormation.AWS.Lambda.Function where 

import Prim hiding (Function)

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Foreign.Object (Object)


-- | `AWS::Lambda::Function`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html
-- |
-- | - `Code`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-code
-- | - `DeadLetterConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-deadletterconfig
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-description
-- | - `Environment`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-environment
-- | - `FunctionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-functionname
-- | - `Handler`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-handler
-- | - `KmsKeyArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-kmskeyarn
-- | - `Layers`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-layers
-- | - `MemorySize`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-memorysize
-- | - `ReservedConcurrentExecutions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-reservedconcurrentexecutions
-- | - `Role`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-role
-- | - `Runtime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-runtime
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-tags
-- | - `Timeout`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-timeout
-- | - `TracingConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-tracingconfig
-- | - `VpcConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html#cfn-lambda-function-vpcconfig
newtype Function = Function
  { "Code" :: Value Code
  , "Handler" :: Value String
  , "Role" :: Value String
  , "Runtime" :: Value String
  , "DeadLetterConfig" :: Maybe (Value DeadLetterConfig)
  , "Description" :: Maybe (Value String)
  , "Environment" :: Maybe (Value Environment)
  , "FunctionName" :: Maybe (Value String)
  , "KmsKeyArn" :: Maybe (Value String)
  , "Layers" :: Maybe (Value (Array String))
  , "MemorySize" :: Maybe (Value Int)
  , "ReservedConcurrentExecutions" :: Maybe (Value Int)
  , "Tags" :: Maybe (Value (Array Tag))
  , "Timeout" :: Maybe (Value Int)
  , "TracingConfig" :: Maybe (Value TracingConfig)
  , "VpcConfig" :: Maybe (Value VpcConfig)
  }

derive instance newtypeFunction :: Newtype Function _
derive newtype instance writeFunction :: WriteForeign Function
instance resourceFunction :: Resource Function where type_ _ = "AWS::Lambda::Function"

function :: { "Code" :: Value Code, "Handler" :: Value String, "Role" :: Value String, "Runtime" :: Value String } -> Function
function required = Function
  (merge required
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
    })

-- | `AWS::Lambda::Function.Environment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-environment.html
-- |
-- | - `Variables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-environment.html#cfn-lambda-function-environment-variables
type Environment =
  { "Variables" :: Maybe (Value (Object String))
  }

environment :: Environment
environment =
  { "Variables" : Nothing
  }

-- | `AWS::Lambda::Function.TracingConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-tracingconfig.html
-- |
-- | - `Mode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-tracingconfig.html#cfn-lambda-function-tracingconfig-mode
type TracingConfig =
  { "Mode" :: Maybe (Value String)
  }

tracingConfig :: TracingConfig
tracingConfig =
  { "Mode" : Nothing
  }

-- | `AWS::Lambda::Function.Code`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html
-- |
-- | - `S3Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3bucket
-- | - `S3Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3key
-- | - `S3ObjectVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3objectversion
-- | - `ZipFile`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-zipfile
type Code =
  { "S3Bucket" :: Maybe (Value String)
  , "S3Key" :: Maybe (Value String)
  , "S3ObjectVersion" :: Maybe (Value String)
  , "ZipFile" :: Maybe (Value String)
  }

code :: Code
code =
  { "S3Bucket" : Nothing
  , "S3Key" : Nothing
  , "S3ObjectVersion" : Nothing
  , "ZipFile" : Nothing
  }

-- | `AWS::Lambda::Function.DeadLetterConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-deadletterconfig.html
-- |
-- | - `TargetArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-deadletterconfig.html#cfn-lambda-function-deadletterconfig-targetarn
type DeadLetterConfig =
  { "TargetArn" :: Maybe (Value String)
  }

deadLetterConfig :: DeadLetterConfig
deadLetterConfig =
  { "TargetArn" : Nothing
  }

-- | `AWS::Lambda::Function.VpcConfig`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html
-- |
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-securitygroupids
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-subnetids
type VpcConfig =
  { "SecurityGroupIds" :: Value (Array String)
  , "SubnetIds" :: Value (Array String)
  }

vpcConfig :: { "SecurityGroupIds" :: Value (Array String), "SubnetIds" :: Value (Array String) } -> VpcConfig
vpcConfig required =
  required