module CloudFormation.AWS.PinpointEmail.ConfigurationSetEventDestination where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ConfigurationSetEventDestination =
  { "EventDestinationName" :: String
  , "ConfigurationSetName" :: String
  , "EventDestination" :: Maybe EventDestination
  }

configurationSetEventDestination :: { "EventDestinationName" :: String, "ConfigurationSetName" :: String } -> ConfigurationSetEventDestination
configurationSetEventDestination required =
  merge required
    { "EventDestination" : Nothing
    }

type EventDestination =
  { "MatchingEventTypes" :: Array String
  , "SnsDestination" :: Maybe SnsDestination
  , "CloudWatchDestination" :: Maybe CloudWatchDestination
  , "Enabled" :: Maybe Boolean
  , "PinpointDestination" :: Maybe PinpointDestination
  , "KinesisFirehoseDestination" :: Maybe KinesisFirehoseDestination
  }

eventDestination :: { "MatchingEventTypes" :: Array String } -> EventDestination
eventDestination required =
  merge required
    { "SnsDestination" : Nothing
    , "CloudWatchDestination" : Nothing
    , "Enabled" : Nothing
    , "PinpointDestination" : Nothing
    , "KinesisFirehoseDestination" : Nothing
    }

type KinesisFirehoseDestination =
  { "DeliveryStreamArn" :: String
  , "IamRoleArn" :: String
  }

kinesisFirehoseDestination :: { "DeliveryStreamArn" :: String, "IamRoleArn" :: String } -> KinesisFirehoseDestination
kinesisFirehoseDestination required =
  required

type CloudWatchDestination =
  { "DimensionConfigurations" :: Maybe (Array DimensionConfiguration)
  }

cloudWatchDestination :: CloudWatchDestination
cloudWatchDestination =
  { "DimensionConfigurations" : Nothing
  }

type PinpointDestination =
  { "ApplicationArn" :: Maybe String
  }

pinpointDestination :: PinpointDestination
pinpointDestination =
  { "ApplicationArn" : Nothing
  }

type SnsDestination =
  { "TopicArn" :: String
  }

snsDestination :: { "TopicArn" :: String } -> SnsDestination
snsDestination required =
  required

type DimensionConfiguration =
  { "DimensionValueSource" :: String
  , "DefaultDimensionValue" :: String
  , "DimensionName" :: String
  }

dimensionConfiguration :: { "DimensionValueSource" :: String, "DefaultDimensionValue" :: String, "DimensionName" :: String } -> DimensionConfiguration
dimensionConfiguration required =
  required