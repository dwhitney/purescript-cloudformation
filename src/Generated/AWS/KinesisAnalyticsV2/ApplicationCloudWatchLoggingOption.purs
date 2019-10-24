module CloudFormation.AWS.KinesisAnalyticsV2.ApplicationCloudWatchLoggingOption where 

import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationcloudwatchloggingoption.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationcloudwatchloggingoption.html#cfn-kinesisanalyticsv2-applicationcloudwatchloggingoption-applicationname
-- | - `CloudWatchLoggingOption`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationcloudwatchloggingoption.html#cfn-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption
newtype ApplicationCloudWatchLoggingOption = ApplicationCloudWatchLoggingOption
  { "ApplicationName" :: String
  , "CloudWatchLoggingOption" :: CloudWatchLoggingOption
  }

derive instance newtypeApplicationCloudWatchLoggingOption :: Newtype ApplicationCloudWatchLoggingOption _
instance resourceApplicationCloudWatchLoggingOption :: Resource ApplicationCloudWatchLoggingOption where type_ _ = "AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption"

applicationCloudWatchLoggingOption :: { "ApplicationName" :: String, "CloudWatchLoggingOption" :: CloudWatchLoggingOption } -> ApplicationCloudWatchLoggingOption
applicationCloudWatchLoggingOption required = ApplicationCloudWatchLoggingOption
  required

-- | `AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption.CloudWatchLoggingOption`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption.html
-- |
-- | - `LogStreamARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption.html#cfn-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption-logstreamarn
type CloudWatchLoggingOption =
  { "LogStreamARN" :: String
  }

cloudWatchLoggingOption :: { "LogStreamARN" :: String } -> CloudWatchLoggingOption
cloudWatchLoggingOption required =
  required