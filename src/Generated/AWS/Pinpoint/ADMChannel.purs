module CloudFormation.AWS.Pinpoint.ADMChannel where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::Pinpoint::ADMChannel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html
-- |
-- | - `ClientSecret`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html#cfn-pinpoint-admchannel-clientsecret
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html#cfn-pinpoint-admchannel-enabled
-- | - `ClientId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html#cfn-pinpoint-admchannel-clientid
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html#cfn-pinpoint-admchannel-applicationid
newtype ADMChannel = ADMChannel
  { "ClientSecret" :: Value String
  , "ClientId" :: Value String
  , "ApplicationId" :: Value String
  , "Enabled" :: Maybe (Value Boolean)
  }

derive instance newtypeADMChannel :: Newtype ADMChannel _
derive newtype instance writeADMChannel :: WriteForeign ADMChannel
instance resourceADMChannel :: Resource ADMChannel where type_ _ = "AWS::Pinpoint::ADMChannel"

admcDMChannel :: { "ClientSecret" :: Value String, "ClientId" :: Value String, "ApplicationId" :: Value String } -> ADMChannel
admcDMChannel required = ADMChannel
  (merge required
    { "Enabled" : Nothing
    })