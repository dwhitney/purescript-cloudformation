module CloudFormation.AWS.Lambda.Version where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Lambda::Version`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html
-- |
-- | - `CodeSha256`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-codesha256
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-description
-- | - `FunctionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-functionname
-- | - `ProvisionedConcurrencyConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-provisionedconcurrencyconfig
newtype Version = Version
  { "FunctionName" :: Value String
  , "CodeSha256" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "ProvisionedConcurrencyConfig" :: Maybe (Value ProvisionedConcurrencyConfiguration)
  }

derive instance newtypeVersion :: Newtype Version _
derive newtype instance writeVersion :: WriteForeign Version
instance resourceVersion :: Resource Version where type_ _ = "AWS::Lambda::Version"

version :: { "FunctionName" :: Value String } -> Version
version required = Version
  (merge required
    { "CodeSha256" : Nothing
    , "Description" : Nothing
    , "ProvisionedConcurrencyConfig" : Nothing
    })

-- | `AWS::Lambda::Version.ProvisionedConcurrencyConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-version-provisionedconcurrencyconfiguration.html
-- |
-- | - `ProvisionedConcurrentExecutions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-version-provisionedconcurrencyconfiguration.html#cfn-lambda-version-provisionedconcurrencyconfiguration-provisionedconcurrentexecutions
type ProvisionedConcurrencyConfiguration =
  { "ProvisionedConcurrentExecutions" :: Value Int
  }

provisionedConcurrencyConfiguration :: { "ProvisionedConcurrentExecutions" :: Value Int } -> ProvisionedConcurrencyConfiguration
provisionedConcurrencyConfiguration required =
  required