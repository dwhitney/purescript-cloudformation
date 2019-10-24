module CloudFormation.AWS.Pinpoint.ADMChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
  { "ClientSecret" :: String
  , "ClientId" :: String
  , "ApplicationId" :: String
  , "Enabled" :: Maybe Boolean
  }

derive instance newtypeADMChannel :: Newtype ADMChannel _
instance resourceADMChannel :: Resource ADMChannel where type_ _ = "AWS::Pinpoint::ADMChannel"

admcDMChannel :: { "ClientSecret" :: String, "ClientId" :: String, "ApplicationId" :: String } -> ADMChannel
admcDMChannel required = ADMChannel
  (merge required
    { "Enabled" : Nothing
    })