module CloudFormation.AWS.MediaLive.Channel where 

import Data.Maybe (Maybe(..))
import Foreign (Foreign)


type Channel =
  { "InputAttachments" :: Maybe (Array InputAttachment)
  , "InputSpecification" :: Maybe InputSpecification
  , "ChannelClass" :: Maybe String
  , "EncoderSettings" :: Maybe Foreign
  , "Destinations" :: Maybe (Array OutputDestination)
  , "LogLevel" :: Maybe String
  , "RoleArn" :: Maybe String
  , "Tags" :: Maybe Foreign
  , "Name" :: Maybe String
  }

channel :: Channel
channel =
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

type CaptionSelector =
  { "LanguageCode" :: Maybe String
  , "SelectorSettings" :: Maybe CaptionSelectorSettings
  , "Name" :: Maybe String
  }

captionSelector :: CaptionSelector
captionSelector =
  { "LanguageCode" : Nothing
  , "SelectorSettings" : Nothing
  , "Name" : Nothing
  }

type OutputDestination =
  { "Id" :: Maybe String
  , "Settings" :: Maybe (Array OutputDestinationSettings)
  , "MediaPackageSettings" :: Maybe (Array MediaPackageOutputDestinationSettings)
  }

outputDestination :: OutputDestination
outputDestination =
  { "Id" : Nothing
  , "Settings" : Nothing
  , "MediaPackageSettings" : Nothing
  }

type OutputDestinationSettings =
  { "StreamName" :: Maybe String
  , "Username" :: Maybe String
  , "PasswordParam" :: Maybe String
  , "Url" :: Maybe String
  }

outputDestinationSettings :: OutputDestinationSettings
outputDestinationSettings =
  { "StreamName" : Nothing
  , "Username" : Nothing
  , "PasswordParam" : Nothing
  , "Url" : Nothing
  }

type VideoSelector =
  { "SelectorSettings" :: Maybe VideoSelectorSettings
  , "ColorSpace" :: Maybe String
  , "ColorSpaceUsage" :: Maybe String
  }

videoSelector :: VideoSelector
videoSelector =
  { "SelectorSettings" : Nothing
  , "ColorSpace" : Nothing
  , "ColorSpaceUsage" : Nothing
  }

type AudioSelectorSettings =
  { "AudioPidSelection" :: Maybe AudioPidSelection
  , "AudioLanguageSelection" :: Maybe AudioLanguageSelection
  }

audioSelectorSettings :: AudioSelectorSettings
audioSelectorSettings =
  { "AudioPidSelection" : Nothing
  , "AudioLanguageSelection" : Nothing
  }

type Scte20SourceSettings =
  { "Source608ChannelNumber" :: Maybe Int
  , "Convert608To708" :: Maybe String
  }

scte20SourceSettings :: Scte20SourceSettings
scte20SourceSettings =
  { "Source608ChannelNumber" : Nothing
  , "Convert608To708" : Nothing
  }

type NetworkInputSettings =
  { "ServerValidation" :: Maybe String
  , "HlsInputSettings" :: Maybe HlsInputSettings
  }

networkInputSettings :: NetworkInputSettings
networkInputSettings =
  { "ServerValidation" : Nothing
  , "HlsInputSettings" : Nothing
  }

type TeletextSourceSettings =
  { "PageNumber" :: Maybe String
  }

teletextSourceSettings :: TeletextSourceSettings
teletextSourceSettings =
  { "PageNumber" : Nothing
  }

type VideoSelectorSettings =
  { "VideoSelectorProgramId" :: Maybe VideoSelectorProgramId
  , "VideoSelectorPid" :: Maybe VideoSelectorPid
  }

videoSelectorSettings :: VideoSelectorSettings
videoSelectorSettings =
  { "VideoSelectorProgramId" : Nothing
  , "VideoSelectorPid" : Nothing
  }

type CaptionSelectorSettings =
  { "DvbSubSourceSettings" :: Maybe DvbSubSourceSettings
  , "Scte27SourceSettings" :: Maybe Scte27SourceSettings
  , "AribSourceSettings" :: Maybe AribSourceSettings
  , "EmbeddedSourceSettings" :: Maybe EmbeddedSourceSettings
  , "Scte20SourceSettings" :: Maybe Scte20SourceSettings
  , "TeletextSourceSettings" :: Maybe TeletextSourceSettings
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

type DvbSubSourceSettings =
  { "Pid" :: Maybe Int
  }

dvbSubSourceSettings :: DvbSubSourceSettings
dvbSubSourceSettings =
  { "Pid" : Nothing
  }

type AudioPidSelection =
  { "Pid" :: Maybe Int
  }

audioPidSelection :: AudioPidSelection
audioPidSelection =
  { "Pid" : Nothing
  }

type AribSourceSettings =
  { 
  }

aribSourceSettings :: AribSourceSettings
aribSourceSettings = {}

type AudioLanguageSelection =
  { "LanguageCode" :: Maybe String
  , "LanguageSelectionPolicy" :: Maybe String
  }

audioLanguageSelection :: AudioLanguageSelection
audioLanguageSelection =
  { "LanguageCode" : Nothing
  , "LanguageSelectionPolicy" : Nothing
  }

type AudioSelector =
  { "SelectorSettings" :: Maybe AudioSelectorSettings
  , "Name" :: Maybe String
  }

audioSelector :: AudioSelector
audioSelector =
  { "SelectorSettings" : Nothing
  , "Name" : Nothing
  }

type InputSettings =
  { "DeblockFilter" :: Maybe String
  , "FilterStrength" :: Maybe Int
  , "InputFilter" :: Maybe String
  , "SourceEndBehavior" :: Maybe String
  , "VideoSelector" :: Maybe VideoSelector
  , "AudioSelectors" :: Maybe (Array AudioSelector)
  , "CaptionSelectors" :: Maybe (Array CaptionSelector)
  , "DenoiseFilter" :: Maybe String
  , "NetworkInputSettings" :: Maybe NetworkInputSettings
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

type VideoSelectorPid =
  { "Pid" :: Maybe Int
  }

videoSelectorPid :: VideoSelectorPid
videoSelectorPid =
  { "Pid" : Nothing
  }

type Scte27SourceSettings =
  { "Pid" :: Maybe Int
  }

scte27SourceSettings :: Scte27SourceSettings
scte27SourceSettings =
  { "Pid" : Nothing
  }

type InputSpecification =
  { "Codec" :: Maybe String
  , "MaximumBitrate" :: Maybe String
  , "Resolution" :: Maybe String
  }

inputSpecification :: InputSpecification
inputSpecification =
  { "Codec" : Nothing
  , "MaximumBitrate" : Nothing
  , "Resolution" : Nothing
  }

type EmbeddedSourceSettings =
  { "Source608ChannelNumber" :: Maybe Int
  , "Scte20Detection" :: Maybe String
  , "Source608TrackNumber" :: Maybe Int
  , "Convert608To708" :: Maybe String
  }

embeddedSourceSettings :: EmbeddedSourceSettings
embeddedSourceSettings =
  { "Source608ChannelNumber" : Nothing
  , "Scte20Detection" : Nothing
  , "Source608TrackNumber" : Nothing
  , "Convert608To708" : Nothing
  }

type InputAttachment =
  { "InputAttachmentName" :: Maybe String
  , "InputId" :: Maybe String
  , "InputSettings" :: Maybe InputSettings
  }

inputAttachment :: InputAttachment
inputAttachment =
  { "InputAttachmentName" : Nothing
  , "InputId" : Nothing
  , "InputSettings" : Nothing
  }

type VideoSelectorProgramId =
  { "ProgramId" :: Maybe Int
  }

videoSelectorProgramId :: VideoSelectorProgramId
videoSelectorProgramId =
  { "ProgramId" : Nothing
  }

type HlsInputSettings =
  { "BufferSegments" :: Maybe Int
  , "Retries" :: Maybe Int
  , "Bandwidth" :: Maybe Int
  , "RetryInterval" :: Maybe Int
  }

hlsInputSettings :: HlsInputSettings
hlsInputSettings =
  { "BufferSegments" : Nothing
  , "Retries" : Nothing
  , "Bandwidth" : Nothing
  , "RetryInterval" : Nothing
  }

type MediaPackageOutputDestinationSettings =
  { "ChannelId" :: Maybe String
  }

mediaPackageOutputDestinationSettings :: MediaPackageOutputDestinationSettings
mediaPackageOutputDestinationSettings =
  { "ChannelId" : Nothing
  }