module CloudFormation.AWS.Pinpoint.VoiceChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Pinpoint::VoiceChannel`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html-- |
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html#cfn-pinpoint-voicechannel-enabled
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-voicechannel.html#cfn-pinpoint-voicechannel-applicationid
type VoiceChannel =
  { "ApplicationId" :: String
  , "Enabled" :: Maybe Boolean
  }

voiceChannel :: { "ApplicationId" :: String } -> VoiceChannel
voiceChannel required =
  merge required
    { "Enabled" : Nothing
    }