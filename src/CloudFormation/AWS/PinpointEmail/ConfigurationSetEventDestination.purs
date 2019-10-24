module CloudFormation.AWS.PinpointEmail.ConfigurationSetEventDestination where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::PinpointEmail::ConfigurationSetEventDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationseteventdestination.html
-- |
-- | - `EventDestinationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationseteventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestinationname
-- | - `ConfigurationSetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationseteventdestination.html#cfn-pinpointemail-configurationseteventdestination-configurationsetname
-- | - `EventDestination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationseteventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination
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

-- | `AWS::PinpointEmail::ConfigurationSetEventDestination.EventDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html
-- |
-- | - `SnsDestination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-snsdestination
-- | - `CloudWatchDestination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-cloudwatchdestination
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-enabled
-- | - `MatchingEventTypes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-matchingeventtypes
-- | - `PinpointDestination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-pinpointdestination
-- | - `KinesisFirehoseDestination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-eventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination-kinesisfirehosedestination
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

-- | `AWS::PinpointEmail::ConfigurationSetEventDestination.KinesisFirehoseDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-kinesisfirehosedestination.html
-- |
-- | - `DeliveryStreamArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-kinesisfirehosedestination.html#cfn-pinpointemail-configurationseteventdestination-kinesisfirehosedestination-deliverystreamarn
-- | - `IamRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-kinesisfirehosedestination.html#cfn-pinpointemail-configurationseteventdestination-kinesisfirehosedestination-iamrolearn
type KinesisFirehoseDestination =
  { "DeliveryStreamArn" :: String
  , "IamRoleArn" :: String
  }

kinesisFirehoseDestination :: { "DeliveryStreamArn" :: String, "IamRoleArn" :: String } -> KinesisFirehoseDestination
kinesisFirehoseDestination required =
  required

-- | `AWS::PinpointEmail::ConfigurationSetEventDestination.CloudWatchDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-cloudwatchdestination.html
-- |
-- | - `DimensionConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-cloudwatchdestination.html#cfn-pinpointemail-configurationseteventdestination-cloudwatchdestination-dimensionconfigurations
type CloudWatchDestination =
  { "DimensionConfigurations" :: Maybe (Array DimensionConfiguration)
  }

cloudWatchDestination :: CloudWatchDestination
cloudWatchDestination =
  { "DimensionConfigurations" : Nothing
  }

-- | `AWS::PinpointEmail::ConfigurationSetEventDestination.PinpointDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-pinpointdestination.html
-- |
-- | - `ApplicationArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-pinpointdestination.html#cfn-pinpointemail-configurationseteventdestination-pinpointdestination-applicationarn
type PinpointDestination =
  { "ApplicationArn" :: Maybe String
  }

pinpointDestination :: PinpointDestination
pinpointDestination =
  { "ApplicationArn" : Nothing
  }

-- | `AWS::PinpointEmail::ConfigurationSetEventDestination.SnsDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-snsdestination.html
-- |
-- | - `TopicArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-snsdestination.html#cfn-pinpointemail-configurationseteventdestination-snsdestination-topicarn
type SnsDestination =
  { "TopicArn" :: String
  }

snsDestination :: { "TopicArn" :: String } -> SnsDestination
snsDestination required =
  required

-- | `AWS::PinpointEmail::ConfigurationSetEventDestination.DimensionConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html
-- |
-- | - `DimensionValueSource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html#cfn-pinpointemail-configurationseteventdestination-dimensionconfiguration-dimensionvaluesource
-- | - `DefaultDimensionValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html#cfn-pinpointemail-configurationseteventdestination-dimensionconfiguration-defaultdimensionvalue
-- | - `DimensionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-dimensionconfiguration.html#cfn-pinpointemail-configurationseteventdestination-dimensionconfiguration-dimensionname
type DimensionConfiguration =
  { "DimensionValueSource" :: String
  , "DefaultDimensionValue" :: String
  , "DimensionName" :: String
  }

dimensionConfiguration :: { "DimensionValueSource" :: String, "DefaultDimensionValue" :: String, "DimensionName" :: String } -> DimensionConfiguration
dimensionConfiguration required =
  required