module CloudFormation.AWS.PinpointEmail.ConfigurationSetEventDestination where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::PinpointEmail::ConfigurationSetEventDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationseteventdestination.html
-- |
-- | - `EventDestinationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationseteventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestinationname
-- | - `ConfigurationSetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationseteventdestination.html#cfn-pinpointemail-configurationseteventdestination-configurationsetname
-- | - `EventDestination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-configurationseteventdestination.html#cfn-pinpointemail-configurationseteventdestination-eventdestination
newtype ConfigurationSetEventDestination = ConfigurationSetEventDestination
  { "EventDestinationName" :: Value String
  , "ConfigurationSetName" :: Value String
  , "EventDestination" :: Maybe (Value EventDestination)
  }

derive instance newtypeConfigurationSetEventDestination :: Newtype ConfigurationSetEventDestination _
derive newtype instance writeConfigurationSetEventDestination :: WriteForeign ConfigurationSetEventDestination
instance resourceConfigurationSetEventDestination :: Resource ConfigurationSetEventDestination where type_ _ = "AWS::PinpointEmail::ConfigurationSetEventDestination"

configurationSetEventDestination :: { "EventDestinationName" :: Value String, "ConfigurationSetName" :: Value String } -> ConfigurationSetEventDestination
configurationSetEventDestination required = ConfigurationSetEventDestination
  (merge required
    { "EventDestination" : Nothing
    })

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
  { "MatchingEventTypes" :: Value (Array String)
  , "SnsDestination" :: Maybe (Value SnsDestination)
  , "CloudWatchDestination" :: Maybe (Value CloudWatchDestination)
  , "Enabled" :: Maybe (Value Boolean)
  , "PinpointDestination" :: Maybe (Value PinpointDestination)
  , "KinesisFirehoseDestination" :: Maybe (Value KinesisFirehoseDestination)
  }

eventDestination :: { "MatchingEventTypes" :: Value (Array String) } -> EventDestination
eventDestination required =
  (merge required
    { "SnsDestination" : Nothing
    , "CloudWatchDestination" : Nothing
    , "Enabled" : Nothing
    , "PinpointDestination" : Nothing
    , "KinesisFirehoseDestination" : Nothing
    })

-- | `AWS::PinpointEmail::ConfigurationSetEventDestination.KinesisFirehoseDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-kinesisfirehosedestination.html
-- |
-- | - `DeliveryStreamArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-kinesisfirehosedestination.html#cfn-pinpointemail-configurationseteventdestination-kinesisfirehosedestination-deliverystreamarn
-- | - `IamRoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-kinesisfirehosedestination.html#cfn-pinpointemail-configurationseteventdestination-kinesisfirehosedestination-iamrolearn
type KinesisFirehoseDestination =
  { "DeliveryStreamArn" :: Value String
  , "IamRoleArn" :: Value String
  }

kinesisFirehoseDestination :: { "DeliveryStreamArn" :: Value String, "IamRoleArn" :: Value String } -> KinesisFirehoseDestination
kinesisFirehoseDestination required =
  required

-- | `AWS::PinpointEmail::ConfigurationSetEventDestination.CloudWatchDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-cloudwatchdestination.html
-- |
-- | - `DimensionConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationseteventdestination-cloudwatchdestination.html#cfn-pinpointemail-configurationseteventdestination-cloudwatchdestination-dimensionconfigurations
type CloudWatchDestination =
  { "DimensionConfigurations" :: Maybe (Value (Array DimensionConfiguration))
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
  { "ApplicationArn" :: Maybe (Value String)
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
  { "TopicArn" :: Value String
  }

snsDestination :: { "TopicArn" :: Value String } -> SnsDestination
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
  { "DimensionValueSource" :: Value String
  , "DefaultDimensionValue" :: Value String
  , "DimensionName" :: Value String
  }

dimensionConfiguration :: { "DimensionValueSource" :: Value String, "DefaultDimensionValue" :: Value String, "DimensionName" :: Value String } -> DimensionConfiguration
dimensionConfiguration required =
  required