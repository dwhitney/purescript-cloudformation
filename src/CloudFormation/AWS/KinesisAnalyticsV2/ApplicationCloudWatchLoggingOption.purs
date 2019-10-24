module CloudFormation.AWS.KinesisAnalyticsV2.ApplicationCloudWatchLoggingOption where 




-- | `AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationcloudwatchloggingoption.html-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationcloudwatchloggingoption.html#cfn-kinesisanalyticsv2-applicationcloudwatchloggingoption-applicationname
-- | - `CloudWatchLoggingOption`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationcloudwatchloggingoption.html#cfn-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption
type ApplicationCloudWatchLoggingOption =
  { "ApplicationName" :: String
  , "CloudWatchLoggingOption" :: CloudWatchLoggingOption
  }

applicationCloudWatchLoggingOption :: { "ApplicationName" :: String, "CloudWatchLoggingOption" :: CloudWatchLoggingOption } -> ApplicationCloudWatchLoggingOption
applicationCloudWatchLoggingOption required =
  required

-- | `AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption.CloudWatchLoggingOption`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption.html-- |
-- | - `LogStreamARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption.html#cfn-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption-logstreamarn
type CloudWatchLoggingOption =
  { "LogStreamARN" :: String
  }

cloudWatchLoggingOption :: { "LogStreamARN" :: String } -> CloudWatchLoggingOption
cloudWatchLoggingOption required =
  required