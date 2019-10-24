module CloudFormation.AWS.SES.ConfigurationSetEventDestination where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ConfigurationSetEventDestination =
  { "ConfigurationSetName" :: String
  , "EventDestination" :: EventDestination
  }

configurationSetEventDestination :: { "ConfigurationSetName" :: String, "EventDestination" :: EventDestination } -> ConfigurationSetEventDestination
configurationSetEventDestination required =
  required

type KinesisFirehoseDestination =
  { "IAMRoleARN" :: String
  , "DeliveryStreamARN" :: String
  }

kinesisFirehoseDestination :: { "IAMRoleARN" :: String, "DeliveryStreamARN" :: String } -> KinesisFirehoseDestination
kinesisFirehoseDestination required =
  required

type CloudWatchDestination =
  { "DimensionConfigurations" :: Maybe (Array DimensionConfiguration)
  }

cloudWatchDestination :: CloudWatchDestination
cloudWatchDestination =
  { "DimensionConfigurations" : Nothing
  }

type DimensionConfiguration =
  { "DimensionValueSource" :: String
  , "DefaultDimensionValue" :: String
  , "DimensionName" :: String
  }

dimensionConfiguration :: { "DimensionValueSource" :: String, "DefaultDimensionValue" :: String, "DimensionName" :: String } -> DimensionConfiguration
dimensionConfiguration required =
  required

type EventDestination =
  { "MatchingEventTypes" :: Array String
  , "CloudWatchDestination" :: Maybe CloudWatchDestination
  , "Enabled" :: Maybe Boolean
  , "Name" :: Maybe String
  , "KinesisFirehoseDestination" :: Maybe KinesisFirehoseDestination
  }

eventDestination :: { "MatchingEventTypes" :: Array String } -> EventDestination
eventDestination required =
  merge required
    { "CloudWatchDestination" : Nothing
    , "Enabled" : Nothing
    , "Name" : Nothing
    , "KinesisFirehoseDestination" : Nothing
    }