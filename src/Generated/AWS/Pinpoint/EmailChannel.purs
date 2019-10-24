module CloudFormation.AWS.Pinpoint.EmailChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)


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
type EmailChannel =
  { "FromAddress" :: String
  , "ApplicationId" :: String
  , "Identity" :: String
  , "ConfigurationSet" :: Maybe String
  , "Enabled" :: Maybe Boolean
  , "RoleArn" :: Maybe String
  }

emailChannel :: { "FromAddress" :: String, "ApplicationId" :: String, "Identity" :: String } -> EmailChannel
emailChannel required =
  merge required
    { "ConfigurationSet" : Nothing
    , "Enabled" : Nothing
    , "RoleArn" : Nothing
    }