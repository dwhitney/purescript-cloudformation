module AWS.Pinpoint.Campaign where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)
import Record (merge)


type Campaign =
  { "SegmentId" :: String
  , "Name" :: String
  , "MessageConfiguration" :: MessageConfiguration
  , "Schedule" :: Schedule
  , "ApplicationId" :: String
  , "Description" :: Maybe String
  , "IsPaused" :: Maybe Boolean
  , "AdditionalTreatments" :: Maybe (Array WriteTreatmentResource)
  , "SegmentVersion" :: Maybe Int
  , "TreatmentDescription" :: Maybe String
  , "Limits" :: Maybe Limits
  , "HoldoutPercent" :: Maybe Int
  , "CampaignHook" :: Maybe CampaignHook
  , "Tags" :: Maybe Foreign
  , "TreatmentName" :: Maybe String
  }

campaign :: { "SegmentId" :: String, "Name" :: String, "MessageConfiguration" :: MessageConfiguration, "Schedule" :: Schedule, "ApplicationId" :: String } -> Campaign
campaign required =
  merge required
    { "Description" : Nothing
    , "IsPaused" : Nothing
    , "AdditionalTreatments" : Nothing
    , "SegmentVersion" : Nothing
    , "TreatmentDescription" : Nothing
    , "Limits" : Nothing
    , "HoldoutPercent" : Nothing
    , "CampaignHook" : Nothing
    , "Tags" : Nothing
    , "TreatmentName" : Nothing
    }

type WriteTreatmentResource =
  { "TreatmentDescription" :: Maybe String
  , "MessageConfiguration" :: Maybe MessageConfiguration
  , "Schedule" :: Maybe Schedule
  , "SizePercent" :: Maybe Int
  , "TreatmentName" :: Maybe String
  }

writeTreatmentResource :: WriteTreatmentResource
writeTreatmentResource =
  { "TreatmentDescription" : Nothing
  , "MessageConfiguration" : Nothing
  , "Schedule" : Nothing
  , "SizePercent" : Nothing
  , "TreatmentName" : Nothing
  }

type CampaignEmailMessage =
  { "FromAddress" :: Maybe String
  , "HtmlBody" :: Maybe String
  , "Title" :: Maybe String
  , "Body" :: Maybe String
  }

campaignEmailMessage :: CampaignEmailMessage
campaignEmailMessage =
  { "FromAddress" : Nothing
  , "HtmlBody" : Nothing
  , "Title" : Nothing
  , "Body" : Nothing
  }

type CampaignSmsMessage =
  { "SenderId" :: Maybe String
  , "Body" :: Maybe String
  , "MessageType" :: Maybe String
  }

campaignSmsMessage :: CampaignSmsMessage
campaignSmsMessage =
  { "SenderId" : Nothing
  , "Body" : Nothing
  , "MessageType" : Nothing
  }

type CampaignEventFilter =
  { "FilterType" :: Maybe String
  , "Dimensions" :: Maybe EventDimensions
  }

campaignEventFilter :: CampaignEventFilter
campaignEventFilter =
  { "FilterType" : Nothing
  , "Dimensions" : Nothing
  }

type Message =
  { "JsonBody" :: Maybe String
  , "Action" :: Maybe String
  , "MediaUrl" :: Maybe String
  , "TimeToLive" :: Maybe Int
  , "ImageSmallIconUrl" :: Maybe String
  , "ImageUrl" :: Maybe String
  , "Title" :: Maybe String
  , "ImageIconUrl" :: Maybe String
  , "SilentPush" :: Maybe Boolean
  , "Body" :: Maybe String
  , "RawContent" :: Maybe String
  , "Url" :: Maybe String
  }

message :: Message
message =
  { "JsonBody" : Nothing
  , "Action" : Nothing
  , "MediaUrl" : Nothing
  , "TimeToLive" : Nothing
  , "ImageSmallIconUrl" : Nothing
  , "ImageUrl" : Nothing
  , "Title" : Nothing
  , "ImageIconUrl" : Nothing
  , "SilentPush" : Nothing
  , "Body" : Nothing
  , "RawContent" : Nothing
  , "Url" : Nothing
  }

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

type QuietTime =
  { "Start" :: String
  , "End" :: String
  }

quietTime :: { "Start" :: String, "End" :: String } -> QuietTime
quietTime required =
  required

type MessageConfiguration =
  { "APNSMessage" :: Maybe Message
  , "BaiduMessage" :: Maybe Message
  , "DefaultMessage" :: Maybe Message
  , "EmailMessage" :: Maybe CampaignEmailMessage
  , "GCMMessage" :: Maybe Message
  , "SMSMessage" :: Maybe CampaignSmsMessage
  , "ADMMessage" :: Maybe Message
  }

messageConfiguration :: MessageConfiguration
messageConfiguration =
  { "APNSMessage" : Nothing
  , "BaiduMessage" : Nothing
  , "DefaultMessage" : Nothing
  , "EmailMessage" : Nothing
  , "GCMMessage" : Nothing
  , "SMSMessage" : Nothing
  , "ADMMessage" : Nothing
  }

type AttributeDimension =
  { "AttributeType" :: Maybe String
  , "Values" :: Maybe (Array String)
  }

attributeDimension :: AttributeDimension
attributeDimension =
  { "AttributeType" : Nothing
  , "Values" : Nothing
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

type Schedule =
  { "TimeZone" :: Maybe String
  , "QuietTime" :: Maybe QuietTime
  , "EndTime" :: Maybe String
  , "StartTime" :: Maybe String
  , "Frequency" :: Maybe String
  , "EventFilter" :: Maybe CampaignEventFilter
  , "IsLocalTime" :: Maybe Boolean
  }

schedule :: Schedule
schedule =
  { "TimeZone" : Nothing
  , "QuietTime" : Nothing
  , "EndTime" : Nothing
  , "StartTime" : Nothing
  , "Frequency" : Nothing
  , "EventFilter" : Nothing
  , "IsLocalTime" : Nothing
  }

type EventDimensions =
  { "Metrics" :: Maybe Foreign
  , "EventType" :: Maybe SetDimension
  , "Attributes" :: Maybe Foreign
  }

eventDimensions :: EventDimensions
eventDimensions =
  { "Metrics" : Nothing
  , "EventType" : Nothing
  , "Attributes" : Nothing
  }

type SetDimension =
  { "DimensionType" :: Maybe String
  , "Values" :: Maybe (Array String)
  }

setDimension :: SetDimension
setDimension =
  { "DimensionType" : Nothing
  , "Values" : Nothing
  }

type MetricDimension =
  { "ComparisonOperator" :: Maybe String
  , "Value" :: Maybe Number
  }

metricDimension :: MetricDimension
metricDimension =
  { "ComparisonOperator" : Nothing
  , "Value" : Nothing
  }