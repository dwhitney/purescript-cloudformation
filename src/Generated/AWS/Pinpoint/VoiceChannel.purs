module CloudFormation.AWS.Pinpoint.VoiceChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Pinpoint::VoiceChannel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html
-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html#cfn-pinpoint-voicechannel-enabled
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html#cfn-pinpoint-voicechannel-applicationid
newtype VoiceChannel = VoiceChannel
  { "ApplicationId" :: String
  , "Enabled" :: Maybe Boolean
  }

derive instance newtypeVoiceChannel :: Newtype VoiceChannel _
instance resourceVoiceChannel :: Resource VoiceChannel where type_ _ = "AWS::Pinpoint::VoiceChannel"

voiceChannel :: { "ApplicationId" :: String } -> VoiceChannel
voiceChannel required = VoiceChannel
  (merge required
    { "Enabled" : Nothing
    })