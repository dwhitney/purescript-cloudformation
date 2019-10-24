module CloudFormation.AWS.Pinpoint.SMSChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "ApplicationId" :: String
  , "ShortCode" :: Maybe String
  , "Enabled" :: Maybe Boolean
  , "SenderId" :: Maybe String
  }

derive instance newtypeSMSChannel :: Newtype SMSChannel _
instance resourceSMSChannel :: Resource SMSChannel where type_ _ = "AWS::Pinpoint::SMSChannel"

smscMSChannel :: { "ApplicationId" :: String } -> SMSChannel
smscMSChannel required = SMSChannel
  (merge required
    { "ShortCode" : Nothing
    , "Enabled" : Nothing
    , "SenderId" : Nothing
    })