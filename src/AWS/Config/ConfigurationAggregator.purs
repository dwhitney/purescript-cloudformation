module AWS.Config.ConfigurationAggregator where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ConfigurationAggregator =
  { "ConfigurationAggregatorName" :: String
  , "AccountAggregationSources" :: Maybe (Array AccountAggregationSource)
  , "OrganizationAggregationSource" :: Maybe OrganizationAggregationSource
  }

configurationAggregator :: { "ConfigurationAggregatorName" :: String } -> ConfigurationAggregator
configurationAggregator required =
  merge required
    { "AccountAggregationSources" : Nothing
    , "OrganizationAggregationSource" : Nothing
    }

type AccountAggregationSource =
  { "AccountIds" :: Array String
  , "AllAwsRegions" :: Maybe Boolean
  , "AwsRegions" :: Maybe (Array String)
  }

accountAggregationSource :: { "AccountIds" :: Array String } -> AccountAggregationSource
accountAggregationSource required =
  merge required
    { "AllAwsRegions" : Nothing
    , "AwsRegions" : Nothing
    }

type OrganizationAggregationSource =
  { "RoleArn" :: String
  , "AllAwsRegions" :: Maybe Boolean
  , "AwsRegions" :: Maybe (Array String)
  }

organizationAggregationSource :: { "RoleArn" :: String } -> OrganizationAggregationSource
organizationAggregationSource required =
  merge required
    { "AllAwsRegions" : Nothing
    , "AwsRegions" : Nothing
    }