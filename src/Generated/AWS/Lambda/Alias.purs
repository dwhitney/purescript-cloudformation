module CloudFormation.AWS.Lambda.Alias where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Lambda::Alias`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-description
-- | - `FunctionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-functionname
-- | - `FunctionVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-functionversion
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-name
-- | - `ProvisionedConcurrencyConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-provisionedconcurrencyconfig
-- | - `RoutingConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-routingconfig
newtype Alias = Alias
  { "FunctionName" :: Value String
  , "FunctionVersion" :: Value String
  , "Name" :: Value String
  , "Description" :: Maybe (Value String)
  , "ProvisionedConcurrencyConfig" :: Maybe (Value ProvisionedConcurrencyConfiguration)
  , "RoutingConfig" :: Maybe (Value AliasRoutingConfiguration)
  }

derive instance newtypeAlias :: Newtype Alias _
derive newtype instance writeAlias :: WriteForeign Alias
instance resourceAlias :: Resource Alias where type_ _ = "AWS::Lambda::Alias"

alias :: { "FunctionName" :: Value String, "FunctionVersion" :: Value String, "Name" :: Value String } -> Alias
alias required = Alias
  (merge required
    { "Description" : Nothing
    , "ProvisionedConcurrencyConfig" : Nothing
    , "RoutingConfig" : Nothing
    })

-- | `AWS::Lambda::Alias.VersionWeight`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html
-- |
-- | - `FunctionVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html#cfn-lambda-alias-versionweight-functionversion
-- | - `FunctionWeight`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html#cfn-lambda-alias-versionweight-functionweight
type VersionWeight =
  { "FunctionVersion" :: Value String
  , "FunctionWeight" :: Value Number
  }

versionWeight :: { "FunctionVersion" :: Value String, "FunctionWeight" :: Value Number } -> VersionWeight
versionWeight required =
  required

-- | `AWS::Lambda::Alias.AliasRoutingConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-aliasroutingconfiguration.html
-- |
-- | - `AdditionalVersionWeights`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-aliasroutingconfiguration.html#cfn-lambda-alias-aliasroutingconfiguration-additionalversionweights
type AliasRoutingConfiguration =
  { "AdditionalVersionWeights" :: Value (Array VersionWeight)
  }

aliasRoutingConfiguration :: { "AdditionalVersionWeights" :: Value (Array VersionWeight) } -> AliasRoutingConfiguration
aliasRoutingConfiguration required =
  required

-- | `AWS::Lambda::Alias.ProvisionedConcurrencyConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-provisionedconcurrencyconfiguration.html
-- |
-- | - `ProvisionedConcurrentExecutions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-provisionedconcurrencyconfiguration.html#cfn-lambda-alias-provisionedconcurrencyconfiguration-provisionedconcurrentexecutions
type ProvisionedConcurrencyConfiguration =
  { "ProvisionedConcurrentExecutions" :: Value Int
  }

provisionedConcurrencyConfiguration :: { "ProvisionedConcurrentExecutions" :: Value Int } -> ProvisionedConcurrencyConfiguration
provisionedConcurrencyConfiguration required =
  required