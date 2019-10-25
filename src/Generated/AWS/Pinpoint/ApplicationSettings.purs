module CloudFormation.AWS.Pinpoint.ApplicationSettings where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ApplicationId" :: Value String
  , "QuietTime" :: Maybe (Value QuietTime)
  , "Limits" :: Maybe (Value Limits)
  , "CampaignHook" :: Maybe (Value CampaignHook)
  , "CloudWatchMetricsEnabled" :: Maybe (Value Boolean)
  }

derive instance newtypeApplicationSettings :: Newtype ApplicationSettings _
derive newtype instance writeApplicationSettings :: WriteForeign ApplicationSettings
instance resourceApplicationSettings :: Resource ApplicationSettings where type_ _ = "AWS::Pinpoint::ApplicationSettings"

applicationSettings :: { "ApplicationId" :: Value String } -> ApplicationSettings
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
  { "Start" :: Value String
  , "End" :: Value String
  }

quietTime :: { "Start" :: Value String, "End" :: Value String } -> QuietTime
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
  { "Mode" :: Maybe (Value String)
  , "WebUrl" :: Maybe (Value String)
  , "LambdaFunctionName" :: Maybe (Value String)
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
  { "Daily" :: Maybe (Value Int)
  , "MaximumDuration" :: Maybe (Value Int)
  , "Total" :: Maybe (Value Int)
  , "MessagesPerSecond" :: Maybe (Value Int)
  }

limits :: Limits
limits =
  { "Daily" : Nothing
  , "MaximumDuration" : Nothing
  , "Total" : Nothing
  , "MessagesPerSecond" : Nothing
  }