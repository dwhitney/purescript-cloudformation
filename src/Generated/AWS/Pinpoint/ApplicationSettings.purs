module CloudFormation.AWS.Pinpoint.ApplicationSettings where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Pinpoint::ApplicationSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-applicationsettings.html
-- |
-- | - `QuietTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-applicationsettings.html#cfn-pinpoint-applicationsettings-quiettime
-- | - `Limits`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-applicationsettings.html#cfn-pinpoint-applicationsettings-limits
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-applicationsettings.html#cfn-pinpoint-applicationsettings-applicationid
-- | - `CampaignHook`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-applicationsettings.html#cfn-pinpoint-applicationsettings-campaignhook
-- | - `CloudWatchMetricsEnabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-applicationsettings.html#cfn-pinpoint-applicationsettings-cloudwatchmetricsenabled
newtype ApplicationSettings = ApplicationSettings
  { "ApplicationId" :: String
  , "QuietTime" :: Maybe QuietTime
  , "Limits" :: Maybe Limits
  , "CampaignHook" :: Maybe CampaignHook
  , "CloudWatchMetricsEnabled" :: Maybe Boolean
  }

derive instance newtypeApplicationSettings :: Newtype ApplicationSettings _
instance resourceApplicationSettings :: Resource ApplicationSettings where type_ _ = "AWS::Pinpoint::ApplicationSettings"

applicationSettings :: { "ApplicationId" :: String } -> ApplicationSettings
applicationSettings required = ApplicationSettings
  (merge required
    { "QuietTime" : Nothing
    , "Limits" : Nothing
    , "CampaignHook" : Nothing
    , "CloudWatchMetricsEnabled" : Nothing
    })

-- | `AWS::Pinpoint::ApplicationSettings.QuietTime`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-quiettime.html
-- |
-- | - `Start`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-quiettime.html#cfn-pinpoint-applicationsettings-quiettime-start
-- | - `End`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-quiettime.html#cfn-pinpoint-applicationsettings-quiettime-end
type QuietTime =
  { "Start" :: String
  , "End" :: String
  }

quietTime :: { "Start" :: String, "End" :: String } -> QuietTime
quietTime required =
  required

-- | `AWS::Pinpoint::ApplicationSettings.CampaignHook`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-campaignhook.html
-- |
-- | - `Mode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-campaignhook.html#cfn-pinpoint-applicationsettings-campaignhook-mode
-- | - `WebUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-campaignhook.html#cfn-pinpoint-applicationsettings-campaignhook-weburl
-- | - `LambdaFunctionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-campaignhook.html#cfn-pinpoint-applicationsettings-campaignhook-lambdafunctionname
type CampaignHook =
  { "Mode" :: Maybe String
  , "WebUrl" :: Maybe String
  , "LambdaFunctionName" :: Maybe String
  }

campaignHook :: CampaignHook
campaignHook =
  { "Mode" : Nothing
  , "WebUrl" : Nothing
  , "LambdaFunctionName" : Nothing
  }

-- | `AWS::Pinpoint::ApplicationSettings.Limits`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html
-- |
-- | - `Daily`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-daily
-- | - `MaximumDuration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-maximumduration
-- | - `Total`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-total
-- | - `MessagesPerSecond`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-applicationsettings-limits.html#cfn-pinpoint-applicationsettings-limits-messagespersecond
type Limits =
  { "Daily" :: Maybe Int
  , "MaximumDuration" :: Maybe Int
  , "Total" :: Maybe Int
  , "MessagesPerSecond" :: Maybe Int
  }

limits :: Limits
limits =
  { "Daily" : Nothing
  , "MaximumDuration" : Nothing
  , "Total" : Nothing
  , "MessagesPerSecond" : Nothing
  }