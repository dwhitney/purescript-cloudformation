module CloudFormation.AWS.KinesisAnalyticsV2.ApplicationCloudWatchLoggingOption where 




type ApplicationCloudWatchLoggingOption =
  { "ApplicationName" :: String
  , "CloudWatchLoggingOption" :: CloudWatchLoggingOption
  }

applicationCloudWatchLoggingOption :: { "ApplicationName" :: String, "CloudWatchLoggingOption" :: CloudWatchLoggingOption } -> ApplicationCloudWatchLoggingOption
applicationCloudWatchLoggingOption required =
  required

type CloudWatchLoggingOption =
  { "LogStreamARN" :: String
  }

cloudWatchLoggingOption :: { "LogStreamARN" :: String } -> CloudWatchLoggingOption
cloudWatchLoggingOption required =
  required