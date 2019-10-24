module CloudFormation.AWS.Pinpoint.EmailChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Pinpoint::EmailChannel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailchannel.html
-- |
-- | - `ConfigurationSet`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailchannel.html#cfn-pinpoint-emailchannel-configurationset
-- | - `FromAddress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailchannel.html#cfn-pinpoint-emailchannel-fromaddress
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailchannel.html#cfn-pinpoint-emailchannel-enabled
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailchannel.html#cfn-pinpoint-emailchannel-applicationid
-- | - `Identity`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailchannel.html#cfn-pinpoint-emailchannel-identity
-- | - `RoleArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailchannel.html#cfn-pinpoint-emailchannel-rolearn
newtype EmailChannel = EmailChannel
  { "FromAddress" :: String
  , "ApplicationId" :: String
  , "Identity" :: String
  , "ConfigurationSet" :: Maybe String
  , "Enabled" :: Maybe Boolean
  , "RoleArn" :: Maybe String
  }

derive instance newtypeEmailChannel :: Newtype EmailChannel _
instance resourceEmailChannel :: Resource EmailChannel where type_ _ = "AWS::Pinpoint::EmailChannel"

emailChannel :: { "FromAddress" :: String, "ApplicationId" :: String, "Identity" :: String } -> EmailChannel
emailChannel required = EmailChannel
  (merge required
    { "ConfigurationSet" : Nothing
    , "Enabled" : Nothing
    , "RoleArn" : Nothing
    })