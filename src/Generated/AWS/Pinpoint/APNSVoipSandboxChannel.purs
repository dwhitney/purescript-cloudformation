module CloudFormation.AWS.Pinpoint.APNSVoipSandboxChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Pinpoint::APNSVoipSandboxChannel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html
-- |
-- | - `BundleId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-bundleid
-- | - `PrivateKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-privatekey
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-enabled
-- | - `DefaultAuthenticationMethod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-defaultauthenticationmethod
-- | - `TokenKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-tokenkey
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-applicationid
-- | - `TeamId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-teamid
-- | - `Certificate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-certificate
-- | - `TokenKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipsandboxchannel.html#cfn-pinpoint-apnsvoipsandboxchannel-tokenkeyid
newtype APNSVoipSandboxChannel = APNSVoipSandboxChannel
  { "ApplicationId" :: String
  , "BundleId" :: Maybe String
  , "PrivateKey" :: Maybe String
  , "Enabled" :: Maybe Boolean
  , "DefaultAuthenticationMethod" :: Maybe String
  , "TokenKey" :: Maybe String
  , "TeamId" :: Maybe String
  , "Certificate" :: Maybe String
  , "TokenKeyId" :: Maybe String
  }

derive instance newtypeAPNSVoipSandboxChannel :: Newtype APNSVoipSandboxChannel _
instance resourceAPNSVoipSandboxChannel :: Resource APNSVoipSandboxChannel where type_ _ = "AWS::Pinpoint::APNSVoipSandboxChannel"

apnsvPNSVoipSandboxChannel :: { "ApplicationId" :: String } -> APNSVoipSandboxChannel
apnsvPNSVoipSandboxChannel required = APNSVoipSandboxChannel
  (merge required
    { "BundleId" : Nothing
    , "PrivateKey" : Nothing
    , "Enabled" : Nothing
    , "DefaultAuthenticationMethod" : Nothing
    , "TokenKey" : Nothing
    , "TeamId" : Nothing
    , "Certificate" : Nothing
    , "TokenKeyId" : Nothing
    })