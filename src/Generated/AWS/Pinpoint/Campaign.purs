module CloudFormation.AWS.Pinpoint.Campaign where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Pinpoint::Campaign`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html
-- |
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-description
-- | - `SegmentId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-segmentid
-- | - `IsPaused`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-ispaused
-- | - `AdditionalTreatments`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-additionaltreatments
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-name
-- | - `SegmentVersion`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-segmentversion
-- | - `TreatmentDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-treatmentdescription
-- | - `MessageConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-messageconfiguration
-- | - `Limits`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-limits
-- | - `HoldoutPercent`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-holdoutpercent
-- | - `Schedule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-schedule
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-applicationid
-- | - `CampaignHook`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-campaignhook
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-tags
-- | - `TreatmentName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-campaign.html#cfn-pinpoint-campaign-treatmentname
newtype Campaign = Campaign
  { "SegmentId" :: Value String
  , "Name" :: Value String
  , "MessageConfiguration" :: Value MessageConfiguration
  , "Schedule" :: Value Schedule
  , "ApplicationId" :: Value String
  , "Description" :: Maybe (Value String)
  , "IsPaused" :: Maybe (Value Boolean)
  , "AdditionalTreatments" :: Maybe (Value (Array WriteTreatmentResource))
  , "SegmentVersion" :: Maybe (Value Int)
  , "TreatmentDescription" :: Maybe (Value String)
  , "Limits" :: Maybe (Value Limits)
  , "HoldoutPercent" :: Maybe (Value Int)
  , "CampaignHook" :: Maybe (Value CampaignHook)
  , "Tags" :: Maybe (Value CF.Json)
  , "TreatmentName" :: Maybe (Value String)
  }

derive instance newtypeCampaign :: Newtype Campaign _
derive newtype instance writeCampaign :: WriteForeign Campaign
instance resourceCampaign :: Resource Campaign where type_ _ = "AWS::Pinpoint::Campaign"

campaign :: { "SegmentId" :: Value String, "Name" :: Value String, "MessageConfiguration" :: Value MessageConfiguration, "Schedule" :: Value Schedule, "ApplicationId" :: Value String } -> Campaign
campaign required = Campaign
  (merge required
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
    })

-- | `AWS::Pinpoint::Campaign.WriteTreatmentResource`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html
-- |
-- | - `TreatmentDescription`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-treatmentdescription
-- | - `MessageConfiguration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-messageconfiguration
-- | - `Schedule`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-schedule
-- | - `SizePercent`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-sizepercent
-- | - `TreatmentName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-writetreatmentresource.html#cfn-pinpoint-campaign-writetreatmentresource-treatmentname
type WriteTreatmentResource =
  { "TreatmentDescription" :: Maybe (Value String)
  , "MessageConfiguration" :: Maybe (Value MessageConfiguration)
  , "Schedule" :: Maybe (Value Schedule)
  , "SizePercent" :: Maybe (Value Int)
  , "TreatmentName" :: Maybe (Value String)
  }

writeTreatmentResource :: WriteTreatmentResource
writeTreatmentResource =
  { "TreatmentDescription" : Nothing
  , "MessageConfiguration" : Nothing
  , "Schedule" : Nothing
  , "SizePercent" : Nothing
  , "TreatmentName" : Nothing
  }

-- | `AWS::Pinpoint::Campaign.CampaignEmailMessage`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignemailmessage.html
-- |
-- | - `FromAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignemailmessage.html#cfn-pinpoint-campaign-campaignemailmessage-fromaddress
-- | - `HtmlBody`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignemailmessage.html#cfn-pinpoint-campaign-campaignemailmessage-htmlbody
-- | - `Title`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignemailmessage.html#cfn-pinpoint-campaign-campaignemailmessage-title
-- | - `Body`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignemailmessage.html#cfn-pinpoint-campaign-campaignemailmessage-body
type CampaignEmailMessage =
  { "FromAddress" :: Maybe (Value String)
  , "HtmlBody" :: Maybe (Value String)
  , "Title" :: Maybe (Value String)
  , "Body" :: Maybe (Value String)
  }

campaignEmailMessage :: CampaignEmailMessage
campaignEmailMessage =
  { "FromAddress" : Nothing
  , "HtmlBody" : Nothing
  , "Title" : Nothing
  , "Body" : Nothing
  }

-- | `AWS::Pinpoint::Campaign.CampaignSmsMessage`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html
-- |
-- | - `SenderId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html#cfn-pinpoint-campaign-campaignsmsmessage-senderid
-- | - `Body`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html#cfn-pinpoint-campaign-campaignsmsmessage-body
-- | - `MessageType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignsmsmessage.html#cfn-pinpoint-campaign-campaignsmsmessage-messagetype
type CampaignSmsMessage =
  { "SenderId" :: Maybe (Value String)
  , "Body" :: Maybe (Value String)
  , "MessageType" :: Maybe (Value String)
  }

campaignSmsMessage :: CampaignSmsMessage
campaignSmsMessage =
  { "SenderId" : Nothing
  , "Body" : Nothing
  , "MessageType" : Nothing
  }

-- | `AWS::Pinpoint::Campaign.CampaignEventFilter`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaigneventfilter.html
-- |
-- | - `FilterType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaigneventfilter.html#cfn-pinpoint-campaign-campaigneventfilter-filtertype
-- | - `Dimensions`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaigneventfilter.html#cfn-pinpoint-campaign-campaigneventfilter-dimensions
type CampaignEventFilter =
  { "FilterType" :: Maybe (Value String)
  , "Dimensions" :: Maybe (Value EventDimensions)
  }

campaignEventFilter :: CampaignEventFilter
campaignEventFilter =
  { "FilterType" : Nothing
  , "Dimensions" : Nothing
  }

-- | `AWS::Pinpoint::Campaign.Message`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html
-- |
-- | - `JsonBody`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-jsonbody
-- | - `Action`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-action
-- | - `MediaUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-mediaurl
-- | - `TimeToLive`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-timetolive
-- | - `ImageSmallIconUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-imagesmalliconurl
-- | - `ImageUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-imageurl
-- | - `Title`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-title
-- | - `ImageIconUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-imageiconurl
-- | - `SilentPush`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-silentpush
-- | - `Body`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-body
-- | - `RawContent`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-rawcontent
-- | - `Url`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-message.html#cfn-pinpoint-campaign-message-url
type Message =
  { "JsonBody" :: Maybe (Value String)
  , "Action" :: Maybe (Value String)
  , "MediaUrl" :: Maybe (Value String)
  , "TimeToLive" :: Maybe (Value Int)
  , "ImageSmallIconUrl" :: Maybe (Value String)
  , "ImageUrl" :: Maybe (Value String)
  , "Title" :: Maybe (Value String)
  , "ImageIconUrl" :: Maybe (Value String)
  , "SilentPush" :: Maybe (Value Boolean)
  , "Body" :: Maybe (Value String)
  , "RawContent" :: Maybe (Value String)
  , "Url" :: Maybe (Value String)
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

-- | `AWS::Pinpoint::Campaign.CampaignHook`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignhook.html
-- |
-- | - `Mode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignhook.html#cfn-pinpoint-campaign-campaignhook-mode
-- | - `WebUrl`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignhook.html#cfn-pinpoint-campaign-campaignhook-weburl
-- | - `LambdaFunctionName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-campaignhook.html#cfn-pinpoint-campaign-campaignhook-lambdafunctionname
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

-- | `AWS::Pinpoint::Campaign.QuietTime`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule-quiettime.html
-- |
-- | - `Start`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule-quiettime.html#cfn-pinpoint-campaign-schedule-quiettime-start
-- | - `End`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule-quiettime.html#cfn-pinpoint-campaign-schedule-quiettime-end
type QuietTime =
  { "Start" :: Value String
  , "End" :: Value String
  }

quietTime :: { "Start" :: Value String, "End" :: Value String } -> QuietTime
quietTime required =
  required

-- | `AWS::Pinpoint::Campaign.MessageConfiguration`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html
-- |
-- | - `APNSMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-apnsmessage
-- | - `BaiduMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-baidumessage
-- | - `DefaultMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-defaultmessage
-- | - `EmailMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-emailmessage
-- | - `GCMMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-gcmmessage
-- | - `SMSMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-smsmessage
-- | - `ADMMessage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-messageconfiguration.html#cfn-pinpoint-campaign-messageconfiguration-admmessage
type MessageConfiguration =
  { "APNSMessage" :: Maybe (Value Message)
  , "BaiduMessage" :: Maybe (Value Message)
  , "DefaultMessage" :: Maybe (Value Message)
  , "EmailMessage" :: Maybe (Value CampaignEmailMessage)
  , "GCMMessage" :: Maybe (Value Message)
  , "SMSMessage" :: Maybe (Value CampaignSmsMessage)
  , "ADMMessage" :: Maybe (Value Message)
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

-- | `AWS::Pinpoint::Campaign.AttributeDimension`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-attributedimension.html
-- |
-- | - `AttributeType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-attributedimension.html#cfn-pinpoint-campaign-attributedimension-attributetype
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-attributedimension.html#cfn-pinpoint-campaign-attributedimension-values
type AttributeDimension =
  { "AttributeType" :: Maybe (Value String)
  , "Values" :: Maybe (Value (Array String))
  }

attributeDimension :: AttributeDimension
attributeDimension =
  { "AttributeType" : Nothing
  , "Values" : Nothing
  }

-- | `AWS::Pinpoint::Campaign.Limits`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html
-- |
-- | - `Daily`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-daily
-- | - `MaximumDuration`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-maximumduration
-- | - `Total`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-total
-- | - `MessagesPerSecond`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-limits.html#cfn-pinpoint-campaign-limits-messagespersecond
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

-- | `AWS::Pinpoint::Campaign.Schedule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html
-- |
-- | - `TimeZone`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-timezone
-- | - `QuietTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-quiettime
-- | - `EndTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-endtime
-- | - `StartTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-starttime
-- | - `Frequency`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-frequency
-- | - `EventFilter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-eventfilter
-- | - `IsLocalTime`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-schedule.html#cfn-pinpoint-campaign-schedule-islocaltime
type Schedule =
  { "TimeZone" :: Maybe (Value String)
  , "QuietTime" :: Maybe (Value QuietTime)
  , "EndTime" :: Maybe (Value String)
  , "StartTime" :: Maybe (Value String)
  , "Frequency" :: Maybe (Value String)
  , "EventFilter" :: Maybe (Value CampaignEventFilter)
  , "IsLocalTime" :: Maybe (Value Boolean)
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

-- | `AWS::Pinpoint::Campaign.EventDimensions`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-eventdimensions.html
-- |
-- | - `Metrics`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-eventdimensions.html#cfn-pinpoint-campaign-eventdimensions-metrics
-- | - `EventType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-eventdimensions.html#cfn-pinpoint-campaign-eventdimensions-eventtype
-- | - `Attributes`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-eventdimensions.html#cfn-pinpoint-campaign-eventdimensions-attributes
type EventDimensions =
  { "Metrics" :: Maybe (Value CF.Json)
  , "EventType" :: Maybe (Value SetDimension)
  , "Attributes" :: Maybe (Value CF.Json)
  }

eventDimensions :: EventDimensions
eventDimensions =
  { "Metrics" : Nothing
  , "EventType" : Nothing
  , "Attributes" : Nothing
  }

-- | `AWS::Pinpoint::Campaign.SetDimension`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-setdimension.html
-- |
-- | - `DimensionType`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-setdimension.html#cfn-pinpoint-campaign-setdimension-dimensiontype
-- | - `Values`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-setdimension.html#cfn-pinpoint-campaign-setdimension-values
type SetDimension =
  { "DimensionType" :: Maybe (Value String)
  , "Values" :: Maybe (Value (Array String))
  }

setDimension :: SetDimension
setDimension =
  { "DimensionType" : Nothing
  , "Values" : Nothing
  }

-- | `AWS::Pinpoint::Campaign.MetricDimension`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-metricdimension.html
-- |
-- | - `ComparisonOperator`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-metricdimension.html#cfn-pinpoint-campaign-metricdimension-comparisonoperator
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpoint-campaign-metricdimension.html#cfn-pinpoint-campaign-metricdimension-value
type MetricDimension =
  { "ComparisonOperator" :: Maybe (Value String)
  , "Value" :: Maybe (Value Number)
  }

metricDimension :: MetricDimension
metricDimension =
  { "ComparisonOperator" : Nothing
  , "Value" : Nothing
  }