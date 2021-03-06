module CloudFormation.AWS.Config.ConfigurationAggregator where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Config::ConfigurationAggregator`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationaggregator.html
-- |
-- | - `AccountAggregationSources`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationaggregator.html#cfn-config-configurationaggregator-accountaggregationsources
-- | - `ConfigurationAggregatorName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationaggregator.html#cfn-config-configurationaggregator-configurationaggregatorname
-- | - `OrganizationAggregationSource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-config-configurationaggregator.html#cfn-config-configurationaggregator-organizationaggregationsource
newtype ConfigurationAggregator = ConfigurationAggregator
  { "ConfigurationAggregatorName" :: Value String
  , "AccountAggregationSources" :: Maybe (Value (Array AccountAggregationSource))
  , "OrganizationAggregationSource" :: Maybe (Value OrganizationAggregationSource)
  }

derive instance newtypeConfigurationAggregator :: Newtype ConfigurationAggregator _
derive newtype instance writeConfigurationAggregator :: WriteForeign ConfigurationAggregator
instance resourceConfigurationAggregator :: Resource ConfigurationAggregator where type_ _ = "AWS::Config::ConfigurationAggregator"

configurationAggregator :: { "ConfigurationAggregatorName" :: Value String } -> ConfigurationAggregator
configurationAggregator required = ConfigurationAggregator
  (merge required
    { "AccountAggregationSources" : Nothing
    , "OrganizationAggregationSource" : Nothing
    })

-- | `AWS::Config::ConfigurationAggregator.AccountAggregationSource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-accountaggregationsource.html
-- |
-- | - `AllAwsRegions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-accountaggregationsource.html#cfn-config-configurationaggregator-accountaggregationsource-allawsregions
-- | - `AwsRegions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-accountaggregationsource.html#cfn-config-configurationaggregator-accountaggregationsource-awsregions
-- | - `AccountIds`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-accountaggregationsource.html#cfn-config-configurationaggregator-accountaggregationsource-accountids
type AccountAggregationSource =
  { "AccountIds" :: Value (Array String)
  , "AllAwsRegions" :: Maybe (Value Boolean)
  , "AwsRegions" :: Maybe (Value (Array String))
  }

accountAggregationSource :: { "AccountIds" :: Value (Array String) } -> AccountAggregationSource
accountAggregationSource required =
  (merge required
    { "AllAwsRegions" : Nothing
    , "AwsRegions" : Nothing
    })

-- | `AWS::Config::ConfigurationAggregator.OrganizationAggregationSource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-organizationaggregationsource.html
-- |
-- | - `AllAwsRegions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-organizationaggregationsource.html#cfn-config-configurationaggregator-organizationaggregationsource-allawsregions
-- | - `AwsRegions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-organizationaggregationsource.html#cfn-config-configurationaggregator-organizationaggregationsource-awsregions
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configurationaggregator-organizationaggregationsource.html#cfn-config-configurationaggregator-organizationaggregationsource-rolearn
type OrganizationAggregationSource =
  { "RoleArn" :: Value String
  , "AllAwsRegions" :: Maybe (Value Boolean)
  , "AwsRegions" :: Maybe (Value (Array String))
  }

organizationAggregationSource :: { "RoleArn" :: Value String } -> OrganizationAggregationSource
organizationAggregationSource required =
  (merge required
    { "AllAwsRegions" : Nothing
    , "AwsRegions" : Nothing
    })