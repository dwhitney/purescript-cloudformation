module CloudFormation.AWS.Pinpoint.EmailChannel where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "FromAddress" :: Value String
  , "ApplicationId" :: Value String
  , "Identity" :: Value String
  , "ConfigurationSet" :: Maybe (Value String)
  , "Enabled" :: Maybe (Value Boolean)
  , "RoleArn" :: Maybe (Value String)
  }

derive instance newtypeEmailChannel :: Newtype EmailChannel _
derive newtype instance writeEmailChannel :: WriteForeign EmailChannel
instance resourceEmailChannel :: Resource EmailChannel where type_ _ = "AWS::Pinpoint::EmailChannel"

emailChannel :: { "FromAddress" :: Value String, "ApplicationId" :: Value String, "Identity" :: Value String } -> EmailChannel
emailChannel required = EmailChannel
  (merge required
    { "ConfigurationSet" : Nothing
    , "Enabled" : Nothing
    , "RoleArn" : Nothing
    })