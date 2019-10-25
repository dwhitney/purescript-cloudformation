module CloudFormation.AWS.KinesisAnalyticsV2.ApplicationCloudWatchLoggingOption where 

import CloudFormation (Value)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationcloudwatchloggingoption.html
-- |
-- | - `ApplicationName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationcloudwatchloggingoption.html#cfn-kinesisanalyticsv2-applicationcloudwatchloggingoption-applicationname
-- | - `CloudWatchLoggingOption`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-applicationcloudwatchloggingoption.html#cfn-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption
newtype ApplicationCloudWatchLoggingOption = ApplicationCloudWatchLoggingOption
  { "ApplicationName" :: Value String
  , "CloudWatchLoggingOption" :: Value CloudWatchLoggingOption
  }

derive instance newtypeApplicationCloudWatchLoggingOption :: Newtype ApplicationCloudWatchLoggingOption _
derive newtype instance writeApplicationCloudWatchLoggingOption :: WriteForeign ApplicationCloudWatchLoggingOption
instance resourceApplicationCloudWatchLoggingOption :: Resource ApplicationCloudWatchLoggingOption where type_ _ = "AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption"

applicationCloudWatchLoggingOption :: { "ApplicationName" :: Value String, "CloudWatchLoggingOption" :: Value CloudWatchLoggingOption } -> ApplicationCloudWatchLoggingOption
applicationCloudWatchLoggingOption required = ApplicationCloudWatchLoggingOption
  required

-- | `AWS::KinesisAnalyticsV2::ApplicationCloudWatchLoggingOption.CloudWatchLoggingOption`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption.html
-- |
-- | - `LogStreamARN`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption.html#cfn-kinesisanalyticsv2-applicationcloudwatchloggingoption-cloudwatchloggingoption-logstreamarn
type CloudWatchLoggingOption =
  { "LogStreamARN" :: Value String
  }

cloudWatchLoggingOption :: { "LogStreamARN" :: Value String } -> CloudWatchLoggingOption
cloudWatchLoggingOption required =
  required