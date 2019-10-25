module CloudFormation.AWS.Pinpoint.SMSChannel where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Pinpoint::SMSChannel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html
-- |
-- | - `ShortCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html#cfn-pinpoint-smschannel-shortcode
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html#cfn-pinpoint-smschannel-enabled
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html#cfn-pinpoint-smschannel-applicationid
-- | - `SenderId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html#cfn-pinpoint-smschannel-senderid
newtype SMSChannel = SMSChannel
  { "ApplicationId" :: Value String
  , "ShortCode" :: Maybe (Value String)
  , "Enabled" :: Maybe (Value Boolean)
  , "SenderId" :: Maybe (Value String)
  }

derive instance newtypeSMSChannel :: Newtype SMSChannel _
derive newtype instance writeSMSChannel :: WriteForeign SMSChannel
instance resourceSMSChannel :: Resource SMSChannel where type_ _ = "AWS::Pinpoint::SMSChannel"

smscMSChannel :: { "ApplicationId" :: Value String } -> SMSChannel
smscMSChannel required = SMSChannel
  (merge required
    { "ShortCode" : Nothing
    , "Enabled" : Nothing
    , "SenderId" : Nothing
    })