module CloudFormation.AWS.Pinpoint.ApplicationSettings where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ApplicationSettings =
  { "ApplicationId" :: String
  , "QuietTime" :: Maybe QuietTime
  , "Limits" :: Maybe Limits
  , "CampaignHook" :: Maybe CampaignHook
  , "CloudWatchMetricsEnabled" :: Maybe Boolean
  }

applicationSettings :: { "ApplicationId" :: String } -> ApplicationSettings
applicationSettings required =
  merge required
    { "QuietTime" : Nothing
    , "Limits" : Nothing
    , "CampaignHook" : Nothing
    , "CloudWatchMetricsEnabled" : Nothing
    }

type QuietTime =
  { "Start" :: String
  , "End" :: String
  }

quietTime :: { "Start" :: String, "End" :: String } -> QuietTime
quietTime required =
  required

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