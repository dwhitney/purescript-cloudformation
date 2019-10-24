module CloudFormation.AWS.Lambda.Alias where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Lambda::Alias`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-description
-- | - `FunctionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-functionname
-- | - `FunctionVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-functionversion
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-name
-- | - `RoutingConfig`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-alias.html#cfn-lambda-alias-routingconfig
type Alias =
  { "FunctionName" :: String
  , "FunctionVersion" :: String
  , "Name" :: String
  , "Description" :: Maybe String
  , "RoutingConfig" :: Maybe AliasRoutingConfiguration
  }

alias :: { "FunctionName" :: String, "FunctionVersion" :: String, "Name" :: String } -> Alias
alias required =
  merge required
    { "Description" : Nothing
    , "RoutingConfig" : Nothing
    }

-- | `AWS::Lambda::Alias.VersionWeight`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html-- |
-- | - `FunctionVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html#cfn-lambda-alias-versionweight-functionversion
-- | - `FunctionWeight`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-versionweight.html#cfn-lambda-alias-versionweight-functionweight
type VersionWeight =
  { "FunctionVersion" :: String
  , "FunctionWeight" :: Number
  }

versionWeight :: { "FunctionVersion" :: String, "FunctionWeight" :: Number } -> VersionWeight
versionWeight required =
  required

-- | `AWS::Lambda::Alias.AliasRoutingConfiguration`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-aliasroutingconfiguration.html-- |
-- | - `AdditionalVersionWeights`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-alias-aliasroutingconfiguration.html#cfn-lambda-alias-aliasroutingconfiguration-additionalversionweights
type AliasRoutingConfiguration =
  { "AdditionalVersionWeights" :: Array VersionWeight
  }

aliasRoutingConfiguration :: { "AdditionalVersionWeights" :: Array VersionWeight } -> AliasRoutingConfiguration
aliasRoutingConfiguration required =
  required