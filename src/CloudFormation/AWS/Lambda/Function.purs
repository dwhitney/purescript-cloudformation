module CloudFormation.AWS.Lambda.Function where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import Foreign.Object (Object)


-- | `AWS::Lambda::Function`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-function.html-- |
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

-- | `AWS::Lambda::Function.Environment`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-environment.html-- |
-- | - `Variables`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-environment.html#cfn-lambda-function-environment-variables
type Environment =
  { "Variables" :: Maybe (Object String)
  }

environment :: Environment
environment =
  { "Variables" : Nothing
  }

-- | `AWS::Lambda::Function.TracingConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-tracingconfig.html-- |
-- | - `Mode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-tracingconfig.html#cfn-lambda-function-tracingconfig-mode
type TracingConfig =
  { "Mode" :: Maybe String
  }

tracingConfig :: TracingConfig
tracingConfig =
  { "Mode" : Nothing
  }

-- | `AWS::Lambda::Function.Code`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html-- |
-- | - `S3Bucket`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3bucket
-- | - `S3Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3key
-- | - `S3ObjectVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3objectversion
-- | - `ZipFile`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-zipfile
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

-- | `AWS::Lambda::Function.DeadLetterConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-deadletterconfig.html-- |
-- | - `TargetArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-deadletterconfig.html#cfn-lambda-function-deadletterconfig-targetarn
type DeadLetterConfig =
  { "TargetArn" :: Maybe String
  }

deadLetterConfig :: DeadLetterConfig
deadLetterConfig =
  { "TargetArn" : Nothing
  }

-- | `AWS::Lambda::Function.VpcConfig`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html-- |
-- | - `SecurityGroupIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-securitygroupids
-- | - `SubnetIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-vpcconfig.html#cfn-lambda-function-vpcconfig-subnetids
type VpcConfig =
  { "SecurityGroupIds" :: Array String
  , "SubnetIds" :: Array String
  }

vpcConfig :: { "SecurityGroupIds" :: Array String, "SubnetIds" :: Array String } -> VpcConfig
vpcConfig required =
  required