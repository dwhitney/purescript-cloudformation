module CloudFormation.AWS.MediaLive.Channel where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation (Json) as CF
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::MediaLive::Channel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html
-- |
-- | - `InputAttachments`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-inputattachments
-- | - `InputSpecification`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-inputspecification
-- | - `ChannelClass`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-channelclass
-- | - `EncoderSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-encodersettings
-- | - `Destinations`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-destinations
-- | - `LogLevel`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-loglevel
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-rolearn
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-tags
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-channel.html#cfn-medialive-channel-name
newtype Channel = Channel
  { "InputAttachments" :: Maybe (Value (Array InputAttachment))
  , "InputSpecification" :: Maybe (Value InputSpecification)
  , "ChannelClass" :: Maybe (Value String)
  , "EncoderSettings" :: Maybe (Value CF.Json)
  , "Destinations" :: Maybe (Value (Array OutputDestination))
  , "LogLevel" :: Maybe (Value String)
  , "RoleArn" :: Maybe (Value String)
  , "Tags" :: Maybe (Value CF.Json)
  , "Name" :: Maybe (Value String)
  }

derive instance newtypeChannel :: Newtype Channel _
derive newtype instance writeChannel :: WriteForeign Channel
instance resourceChannel :: Resource Channel where type_ _ = "AWS::MediaLive::Channel"

channel :: Channel
channel = Channel
  { "InputAttachments" : Nothing
  , "InputSpecification" : Nothing
  , "ChannelClass" : Nothing
  , "EncoderSettings" : Nothing
  , "Destinations" : Nothing
  , "LogLevel" : Nothing
  , "RoleArn" : Nothing
  , "Tags" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::MediaLive::Channel.CaptionSelector`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselector.html
-- |
-- | - `LanguageCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselector.html#cfn-medialive-channel-captionselector-languagecode
-- | - `SelectorSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselector.html#cfn-medialive-channel-captionselector-selectorsettings
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselector.html#cfn-medialive-channel-captionselector-name
type CaptionSelector =
  { "LanguageCode" :: Maybe (Value String)
  , "SelectorSettings" :: Maybe (Value CaptionSelectorSettings)
  , "Name" :: Maybe (Value String)
  }

captionSelector :: CaptionSelector
captionSelector =
  { "LanguageCode" : Nothing
  , "SelectorSettings" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::MediaLive::Channel.OutputDestination`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html
-- |
-- | - `Id`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-id
-- | - `Settings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-settings
-- | - `MediaPackageSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestination.html#cfn-medialive-channel-outputdestination-mediapackagesettings
type OutputDestination =
  { "Id" :: Maybe (Value String)
  , "Settings" :: Maybe (Value (Array OutputDestinationSettings))
  , "MediaPackageSettings" :: Maybe (Value (Array MediaPackageOutputDestinationSettings))
  }

outputDestination :: OutputDestination
outputDestination =
  { "Id" : Nothing
  , "Settings" : Nothing
  , "MediaPackageSettings" : Nothing
  }

-- | `AWS::MediaLive::Channel.OutputDestinationSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html
-- |
-- | - `StreamName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html#cfn-medialive-channel-outputdestinationsettings-streamname
-- | - `Username`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html#cfn-medialive-channel-outputdestinationsettings-username
-- | - `PasswordParam`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html#cfn-medialive-channel-outputdestinationsettings-passwordparam
-- | - `Url`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputdestinationsettings.html#cfn-medialive-channel-outputdestinationsettings-url
type OutputDestinationSettings =
  { "StreamName" :: Maybe (Value String)
  , "Username" :: Maybe (Value String)
  , "PasswordParam" :: Maybe (Value String)
  , "Url" :: Maybe (Value String)
  }

outputDestinationSettings :: OutputDestinationSettings
outputDestinationSettings =
  { "StreamName" : Nothing
  , "Username" : Nothing
  , "PasswordParam" : Nothing
  , "Url" : Nothing
  }

-- | `AWS::MediaLive::Channel.VideoSelector`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html
-- |
-- | - `SelectorSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html#cfn-medialive-channel-videoselector-selectorsettings
-- | - `ColorSpace`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html#cfn-medialive-channel-videoselector-colorspace
-- | - `ColorSpaceUsage`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html#cfn-medialive-channel-videoselector-colorspaceusage
type VideoSelector =
  { "SelectorSettings" :: Maybe (Value VideoSelectorSettings)
  , "ColorSpace" :: Maybe (Value String)
  , "ColorSpaceUsage" :: Maybe (Value String)
  }

videoSelector :: VideoSelector
videoSelector =
  { "SelectorSettings" : Nothing
  , "ColorSpace" : Nothing
  , "ColorSpaceUsage" : Nothing
  }

-- | `AWS::MediaLive::Channel.AudioSelectorSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html
-- |
-- | - `AudioPidSelection`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html#cfn-medialive-channel-audioselectorsettings-audiopidselection
-- | - `AudioLanguageSelection`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html#cfn-medialive-channel-audioselectorsettings-audiolanguageselection
type AudioSelectorSettings =
  { "AudioPidSelection" :: Maybe (Value AudioPidSelection)
  , "AudioLanguageSelection" :: Maybe (Value AudioLanguageSelection)
  }

audioSelectorSettings :: AudioSelectorSettings
audioSelectorSettings =
  { "AudioPidSelection" : Nothing
  , "AudioLanguageSelection" : Nothing
  }

-- | `AWS::MediaLive::Channel.Scte20SourceSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20sourcesettings.html
-- |
-- | - `Source608ChannelNumber`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20sourcesettings.html#cfn-medialive-channel-scte20sourcesettings-source608channelnumber
-- | - `Convert608To708`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20sourcesettings.html#cfn-medialive-channel-scte20sourcesettings-convert608to708
type Scte20SourceSettings =
  { "Source608ChannelNumber" :: Maybe (Value Int)
  , "Convert608To708" :: Maybe (Value String)
  }

scte20SourceSettings :: Scte20SourceSettings
scte20SourceSettings =
  { "Source608ChannelNumber" : Nothing
  , "Convert608To708" : Nothing
  }

-- | `AWS::MediaLive::Channel.NetworkInputSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-networkinputsettings.html
-- |
-- | - `ServerValidation`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-networkinputsettings.html#cfn-medialive-channel-networkinputsettings-servervalidation
-- | - `HlsInputSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-networkinputsettings.html#cfn-medialive-channel-networkinputsettings-hlsinputsettings
type NetworkInputSettings =
  { "ServerValidation" :: Maybe (Value String)
  , "HlsInputSettings" :: Maybe (Value HlsInputSettings)
  }

networkInputSettings :: NetworkInputSettings
networkInputSettings =
  { "ServerValidation" : Nothing
  , "HlsInputSettings" : Nothing
  }

-- | `AWS::MediaLive::Channel.TeletextSourceSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-teletextsourcesettings.html
-- |
-- | - `PageNumber`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-teletextsourcesettings.html#cfn-medialive-channel-teletextsourcesettings-pagenumber
type TeletextSourceSettings =
  { "PageNumber" :: Maybe (Value String)
  }

teletextSourceSettings :: TeletextSourceSettings
teletextSourceSettings =
  { "PageNumber" : Nothing
  }

-- | `AWS::MediaLive::Channel.VideoSelectorSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorsettings.html
-- |
-- | - `VideoSelectorProgramId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorsettings.html#cfn-medialive-channel-videoselectorsettings-videoselectorprogramid
-- | - `VideoSelectorPid`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorsettings.html#cfn-medialive-channel-videoselectorsettings-videoselectorpid
type VideoSelectorSettings =
  { "VideoSelectorProgramId" :: Maybe (Value VideoSelectorProgramId)
  , "VideoSelectorPid" :: Maybe (Value VideoSelectorPid)
  }

videoSelectorSettings :: VideoSelectorSettings
videoSelectorSettings =
  { "VideoSelectorProgramId" : Nothing
  , "VideoSelectorPid" : Nothing
  }

-- | `AWS::MediaLive::Channel.CaptionSelectorSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html
-- |
-- | - `DvbSubSourceSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-dvbsubsourcesettings
-- | - `Scte27SourceSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-scte27sourcesettings
-- | - `AribSourceSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-aribsourcesettings
-- | - `EmbeddedSourceSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-embeddedsourcesettings
-- | - `Scte20SourceSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-scte20sourcesettings
-- | - `TeletextSourceSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-captionselectorsettings.html#cfn-medialive-channel-captionselectorsettings-teletextsourcesettings
type CaptionSelectorSettings =
  { "DvbSubSourceSettings" :: Maybe (Value DvbSubSourceSettings)
  , "Scte27SourceSettings" :: Maybe (Value Scte27SourceSettings)
  , "AribSourceSettings" :: Maybe (Value AribSourceSettings)
  , "EmbeddedSourceSettings" :: Maybe (Value EmbeddedSourceSettings)
  , "Scte20SourceSettings" :: Maybe (Value Scte20SourceSettings)
  , "TeletextSourceSettings" :: Maybe (Value TeletextSourceSettings)
  }

captionSelectorSettings :: CaptionSelectorSettings
captionSelectorSettings =
  { "DvbSubSourceSettings" : Nothing
  , "Scte27SourceSettings" : Nothing
  , "AribSourceSettings" : Nothing
  , "EmbeddedSourceSettings" : Nothing
  , "Scte20SourceSettings" : Nothing
  , "TeletextSourceSettings" : Nothing
  }

-- | `AWS::MediaLive::Channel.DvbSubSourceSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubsourcesettings.html
-- |
-- | - `Pid`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-dvbsubsourcesettings.html#cfn-medialive-channel-dvbsubsourcesettings-pid
type DvbSubSourceSettings =
  { "Pid" :: Maybe (Value Int)
  }

dvbSubSourceSettings :: DvbSubSourceSettings
dvbSubSourceSettings =
  { "Pid" : Nothing
  }

-- | `AWS::MediaLive::Channel.AudioPidSelection`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiopidselection.html
-- |
-- | - `Pid`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiopidselection.html#cfn-medialive-channel-audiopidselection-pid
type AudioPidSelection =
  { "Pid" :: Maybe (Value Int)
  }

audioPidSelection :: AudioPidSelection
audioPidSelection =
  { "Pid" : Nothing
  }

-- | `AWS::MediaLive::Channel.AribSourceSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-aribsourcesettings.html
-- |

type AribSourceSettings =
  { 
  }

aribSourceSettings :: AribSourceSettings
aribSourceSettings = {}

-- | `AWS::MediaLive::Channel.AudioLanguageSelection`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiolanguageselection.html
-- |
-- | - `LanguageCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiolanguageselection.html#cfn-medialive-channel-audiolanguageselection-languagecode
-- | - `LanguageSelectionPolicy`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiolanguageselection.html#cfn-medialive-channel-audiolanguageselection-languageselectionpolicy
type AudioLanguageSelection =
  { "LanguageCode" :: Maybe (Value String)
  , "LanguageSelectionPolicy" :: Maybe (Value String)
  }

audioLanguageSelection :: AudioLanguageSelection
audioLanguageSelection =
  { "LanguageCode" : Nothing
  , "LanguageSelectionPolicy" : Nothing
  }

-- | `AWS::MediaLive::Channel.AudioSelector`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselector.html
-- |
-- | - `SelectorSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselector.html#cfn-medialive-channel-audioselector-selectorsettings
-- | - `Name`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselector.html#cfn-medialive-channel-audioselector-name
type AudioSelector =
  { "SelectorSettings" :: Maybe (Value AudioSelectorSettings)
  , "Name" :: Maybe (Value String)
  }

audioSelector :: AudioSelector
audioSelector =
  { "SelectorSettings" : Nothing
  , "Name" : Nothing
  }

-- | `AWS::MediaLive::Channel.InputSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html
-- |
-- | - `DeblockFilter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-deblockfilter
-- | - `FilterStrength`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-filterstrength
-- | - `InputFilter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-inputfilter
-- | - `SourceEndBehavior`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-sourceendbehavior
-- | - `VideoSelector`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-videoselector
-- | - `AudioSelectors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-audioselectors
-- | - `CaptionSelectors`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-captionselectors
-- | - `DenoiseFilter`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-denoisefilter
-- | - `NetworkInputSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputsettings.html#cfn-medialive-channel-inputsettings-networkinputsettings
type InputSettings =
  { "DeblockFilter" :: Maybe (Value String)
  , "FilterStrength" :: Maybe (Value Int)
  , "InputFilter" :: Maybe (Value String)
  , "SourceEndBehavior" :: Maybe (Value String)
  , "VideoSelector" :: Maybe (Value VideoSelector)
  , "AudioSelectors" :: Maybe (Value (Array AudioSelector))
  , "CaptionSelectors" :: Maybe (Value (Array CaptionSelector))
  , "DenoiseFilter" :: Maybe (Value String)
  , "NetworkInputSettings" :: Maybe (Value NetworkInputSettings)
  }

inputSettings :: InputSettings
inputSettings =
  { "DeblockFilter" : Nothing
  , "FilterStrength" : Nothing
  , "InputFilter" : Nothing
  , "SourceEndBehavior" : Nothing
  , "VideoSelector" : Nothing
  , "AudioSelectors" : Nothing
  , "CaptionSelectors" : Nothing
  , "DenoiseFilter" : Nothing
  , "NetworkInputSettings" : Nothing
  }

-- | `AWS::MediaLive::Channel.VideoSelectorPid`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorpid.html
-- |
-- | - `Pid`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorpid.html#cfn-medialive-channel-videoselectorpid-pid
type VideoSelectorPid =
  { "Pid" :: Maybe (Value Int)
  }

videoSelectorPid :: VideoSelectorPid
videoSelectorPid =
  { "Pid" : Nothing
  }

-- | `AWS::MediaLive::Channel.Scte27SourceSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte27sourcesettings.html
-- |
-- | - `Pid`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte27sourcesettings.html#cfn-medialive-channel-scte27sourcesettings-pid
type Scte27SourceSettings =
  { "Pid" :: Maybe (Value Int)
  }

scte27SourceSettings :: Scte27SourceSettings
scte27SourceSettings =
  { "Pid" : Nothing
  }

-- | `AWS::MediaLive::Channel.InputSpecification`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html
-- |
-- | - `Codec`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html#cfn-medialive-channel-inputspecification-codec
-- | - `MaximumBitrate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html#cfn-medialive-channel-inputspecification-maximumbitrate
-- | - `Resolution`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputspecification.html#cfn-medialive-channel-inputspecification-resolution
type InputSpecification =
  { "Codec" :: Maybe (Value String)
  , "MaximumBitrate" :: Maybe (Value String)
  , "Resolution" :: Maybe (Value String)
  }

inputSpecification :: InputSpecification
inputSpecification =
  { "Codec" : Nothing
  , "MaximumBitrate" : Nothing
  , "Resolution" : Nothing
  }

-- | `AWS::MediaLive::Channel.EmbeddedSourceSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html
-- |
-- | - `Source608ChannelNumber`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html#cfn-medialive-channel-embeddedsourcesettings-source608channelnumber
-- | - `Scte20Detection`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html#cfn-medialive-channel-embeddedsourcesettings-scte20detection
-- | - `Source608TrackNumber`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html#cfn-medialive-channel-embeddedsourcesettings-source608tracknumber
-- | - `Convert608To708`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedsourcesettings.html#cfn-medialive-channel-embeddedsourcesettings-convert608to708
type EmbeddedSourceSettings =
  { "Source608ChannelNumber" :: Maybe (Value Int)
  , "Scte20Detection" :: Maybe (Value String)
  , "Source608TrackNumber" :: Maybe (Value Int)
  , "Convert608To708" :: Maybe (Value String)
  }

embeddedSourceSettings :: EmbeddedSourceSettings
embeddedSourceSettings =
  { "Source608ChannelNumber" : Nothing
  , "Scte20Detection" : Nothing
  , "Source608TrackNumber" : Nothing
  , "Convert608To708" : Nothing
  }

-- | `AWS::MediaLive::Channel.InputAttachment`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputattachment.html
-- |
-- | - `InputAttachmentName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputattachment.html#cfn-medialive-channel-inputattachment-inputattachmentname
-- | - `InputId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputattachment.html#cfn-medialive-channel-inputattachment-inputid
-- | - `InputSettings`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputattachment.html#cfn-medialive-channel-inputattachment-inputsettings
type InputAttachment =
  { "InputAttachmentName" :: Maybe (Value String)
  , "InputId" :: Maybe (Value String)
  , "InputSettings" :: Maybe (Value InputSettings)
  }

inputAttachment :: InputAttachment
inputAttachment =
  { "InputAttachmentName" : Nothing
  , "InputId" : Nothing
  , "InputSettings" : Nothing
  }

-- | `AWS::MediaLive::Channel.VideoSelectorProgramId`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorprogramid.html
-- |
-- | - `ProgramId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorprogramid.html#cfn-medialive-channel-videoselectorprogramid-programid
type VideoSelectorProgramId =
  { "ProgramId" :: Maybe (Value Int)
  }

videoSelectorProgramId :: VideoSelectorProgramId
videoSelectorProgramId =
  { "ProgramId" : Nothing
  }

-- | `AWS::MediaLive::Channel.HlsInputSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html
-- |
-- | - `BufferSegments`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-buffersegments
-- | - `Retries`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-retries
-- | - `Bandwidth`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-bandwidth
-- | - `RetryInterval`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-retryinterval
type HlsInputSettings =
  { "BufferSegments" :: Maybe (Value Int)
  , "Retries" :: Maybe (Value Int)
  , "Bandwidth" :: Maybe (Value Int)
  , "RetryInterval" :: Maybe (Value Int)
  }

hlsInputSettings :: HlsInputSettings
hlsInputSettings =
  { "BufferSegments" : Nothing
  , "Retries" : Nothing
  , "Bandwidth" : Nothing
  , "RetryInterval" : Nothing
  }

-- | `AWS::MediaLive::Channel.MediaPackageOutputDestinationSettings`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackageoutputdestinationsettings.html
-- |
-- | - `ChannelId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackageoutputdestinationsettings.html#cfn-medialive-channel-mediapackageoutputdestinationsettings-channelid
type MediaPackageOutputDestinationSettings =
  { "ChannelId" :: Maybe (Value String)
  }

mediaPackageOutputDestinationSettings :: MediaPackageOutputDestinationSettings
mediaPackageOutputDestinationSettings =
  { "ChannelId" : Nothing
  }