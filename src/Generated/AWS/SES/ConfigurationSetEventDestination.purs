module CloudFormation.AWS.SES.ConfigurationSetEventDestination where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)
import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::SES::ConfigurationSetEventDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationseteventdestination.html
-- |
-- | - `ConfigurationSetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationseteventdestination.html#cfn-ses-configurationseteventdestination-configurationsetname
-- | - `EventDestination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationseteventdestination.html#cfn-ses-configurationseteventdestination-eventdestination
newtype ConfigurationSetEventDestination = ConfigurationSetEventDestination
  { "ConfigurationSetName" :: Value String
  , "EventDestination" :: Value EventDestination
  }

derive instance newtypeConfigurationSetEventDestination :: Newtype ConfigurationSetEventDestination _
derive newtype instance writeConfigurationSetEventDestination :: WriteForeign ConfigurationSetEventDestination
instance resourceConfigurationSetEventDestination :: Resource ConfigurationSetEventDestination where type_ _ = "AWS::SES::ConfigurationSetEventDestination"

configurationSetEventDestination :: { "ConfigurationSetName" :: Value String, "EventDestination" :: Value EventDestination } -> ConfigurationSetEventDestination
configurationSetEventDestination required = ConfigurationSetEventDestination
  required

-- | `AWS::SES::ConfigurationSetEventDestination.KinesisFirehoseDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html
-- |
-- | - `IAMRoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html#cfn-ses-configurationseteventdestination-kinesisfirehosedestination-iamrolearn
-- | - `DeliveryStreamARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html#cfn-ses-configurationseteventdestination-kinesisfirehosedestination-deliverystreamarn
type KinesisFirehoseDestination =
  { "IAMRoleARN" :: Value String
  , "DeliveryStreamARN" :: Value String
  }

kinesisFirehoseDestination :: { "IAMRoleARN" :: Value String, "DeliveryStreamARN" :: Value String } -> KinesisFirehoseDestination
kinesisFirehoseDestination required =
  required

-- | `AWS::SES::ConfigurationSetEventDestination.CloudWatchDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-cloudwatchdestination.html
-- |
-- | - `DimensionConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-cloudwatchdestination.html#cfn-ses-configurationseteventdestination-cloudwatchdestination-dimensionconfigurations
type CloudWatchDestination =
  { "DimensionConfigurations" :: Maybe (Value (Array DimensionConfiguration))
  }

cloudWatchDestination :: CloudWatchDestination
cloudWatchDestination =
  { "DimensionConfigurations" : Nothing
  }

-- | `AWS::SES::ConfigurationSetEventDestination.DimensionConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html
-- |
-- | - `DimensionValueSource`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html#cfn-ses-configurationseteventdestination-dimensionconfiguration-dimensionvaluesource
-- | - `DefaultDimensionValue`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html#cfn-ses-configurationseteventdestination-dimensionconfiguration-defaultdimensionvalue
-- | - `DimensionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-dimensionconfiguration.html#cfn-ses-configurationseteventdestination-dimensionconfiguration-dimensionname
type DimensionConfiguration =
  { "DimensionValueSource" :: Value String
  , "DefaultDimensionValue" :: Value String
  , "DimensionName" :: Value String
  }

dimensionConfiguration :: { "DimensionValueSource" :: Value String, "DefaultDimensionValue" :: Value String, "DimensionName" :: Value String } -> DimensionConfiguration
dimensionConfiguration required =
  required

-- | `AWS::SES::ConfigurationSetEventDestination.EventDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html
-- |
-- | - `CloudWatchDestination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-cloudwatchdestination
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-enabled
-- | - `MatchingEventTypes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-matchingeventtypes
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-name
-- | - `KinesisFirehoseDestination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-eventdestination.html#cfn-ses-configurationseteventdestination-eventdestination-kinesisfirehosedestination
type EventDestination =
  { "MatchingEventTypes" :: Value (Array String)
  , "CloudWatchDestination" :: Maybe (Value CloudWatchDestination)
  , "Enabled" :: Maybe (Value Boolean)
  , "Name" :: Maybe (Value String)
  , "KinesisFirehoseDestination" :: Maybe (Value KinesisFirehoseDestination)
  }

eventDestination :: { "MatchingEventTypes" :: Value (Array String) } -> EventDestination
eventDestination required =
  (merge required
    { "CloudWatchDestination" : Nothing
    , "Enabled" : Nothing
    , "Name" : Nothing
    , "KinesisFirehoseDestination" : Nothing
    })