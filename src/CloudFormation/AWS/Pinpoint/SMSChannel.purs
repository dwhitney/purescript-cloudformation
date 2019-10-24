module CloudFormation.AWS.Pinpoint.SMSChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Pinpoint::SMSChannel`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html-- |
-- | - `ShortCode`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html#cfn-pinpoint-smschannel-shortcode
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html#cfn-pinpoint-smschannel-enabled
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html#cfn-pinpoint-smschannel-applicationid
-- | - `SenderId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smschannel.html#cfn-pinpoint-smschannel-senderid
type SMSChannel =
  { "ApplicationId" :: String
  , "ShortCode" :: Maybe String
  , "Enabled" :: Maybe Boolean
  , "SenderId" :: Maybe String
  }

smscMSChannel :: { "ApplicationId" :: String } -> SMSChannel
smscMSChannel required =
  merge required
    { "ShortCode" : Nothing
    , "Enabled" : Nothing
    , "SenderId" : Nothing
    }