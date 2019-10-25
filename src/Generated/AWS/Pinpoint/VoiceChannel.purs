module CloudFormation.AWS.Pinpoint.VoiceChannel where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Pinpoint::VoiceChannel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html
-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html#cfn-pinpoint-voicechannel-enabled
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html#cfn-pinpoint-voicechannel-applicationid
newtype VoiceChannel = VoiceChannel
  { "ApplicationId" :: Value String
  , "Enabled" :: Maybe (Value Boolean)
  }

derive instance newtypeVoiceChannel :: Newtype VoiceChannel _
derive newtype instance writeVoiceChannel :: WriteForeign VoiceChannel
instance resourceVoiceChannel :: Resource VoiceChannel where type_ _ = "AWS::Pinpoint::VoiceChannel"

voiceChannel :: { "ApplicationId" :: Value String } -> VoiceChannel
voiceChannel required = VoiceChannel
  (merge required
    { "Enabled" : Nothing
    })