module CloudFormation.AWS.SES.ConfigurationSetEventDestination where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::SES::ConfigurationSetEventDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationseteventdestination.html
-- |
-- | - `ConfigurationSetName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationseteventdestination.html#cfn-ses-configurationseteventdestination-configurationsetname
-- | - `EventDestination`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ses-configurationseteventdestination.html#cfn-ses-configurationseteventdestination-eventdestination
type ConfigurationSetEventDestination =
  { "ConfigurationSetName" :: String
  , "EventDestination" :: EventDestination
  }

configurationSetEventDestination :: { "ConfigurationSetName" :: String, "EventDestination" :: EventDestination } -> ConfigurationSetEventDestination
configurationSetEventDestination required =
  required

-- | `AWS::SES::ConfigurationSetEventDestination.KinesisFirehoseDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html
-- |
-- | - `IAMRoleARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html#cfn-ses-configurationseteventdestination-kinesisfirehosedestination-iamrolearn
-- | - `DeliveryStreamARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-kinesisfirehosedestination.html#cfn-ses-configurationseteventdestination-kinesisfirehosedestination-deliverystreamarn
type KinesisFirehoseDestination =
  { "IAMRoleARN" :: String
  , "DeliveryStreamARN" :: String
  }

kinesisFirehoseDestination :: { "IAMRoleARN" :: String, "DeliveryStreamARN" :: String } -> KinesisFirehoseDestination
kinesisFirehoseDestination required =
  required

-- | `AWS::SES::ConfigurationSetEventDestination.CloudWatchDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-cloudwatchdestination.html
-- |
-- | - `DimensionConfigurations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationseteventdestination-cloudwatchdestination.html#cfn-ses-configurationseteventdestination-cloudwatchdestination-dimensionconfigurations
type CloudWatchDestination =
  { "DimensionConfigurations" :: Maybe (Array DimensionConfiguration)
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
  { "DimensionValueSource" :: String
  , "DefaultDimensionValue" :: String
  , "DimensionName" :: String
  }

dimensionConfiguration :: { "DimensionValueSource" :: String, "DefaultDimensionValue" :: String, "DimensionName" :: String } -> DimensionConfiguration
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