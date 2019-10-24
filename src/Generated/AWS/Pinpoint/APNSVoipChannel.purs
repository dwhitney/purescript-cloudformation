module CloudFormation.AWS.Pinpoint.APNSVoipChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Pinpoint::APNSVoipChannel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html
-- |
-- | - `BundleId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-bundleid
-- | - `PrivateKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-privatekey
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-enabled
-- | - `DefaultAuthenticationMethod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-defaultauthenticationmethod
-- | - `TokenKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-tokenkey
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-applicationid
-- | - `TeamId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-teamid
-- | - `Certificate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-certificate
-- | - `TokenKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnsvoipchannel.html#cfn-pinpoint-apnsvoipchannel-tokenkeyid
newtype APNSVoipChannel = APNSVoipChannel
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

derive instance newtypeAPNSVoipChannel :: Newtype APNSVoipChannel _
instance resourceAPNSVoipChannel :: Resource APNSVoipChannel where type_ _ = "AWS::Pinpoint::APNSVoipChannel"

apnsvPNSVoipChannel :: { "ApplicationId" :: String } -> APNSVoipChannel
apnsvPNSVoipChannel required = APNSVoipChannel
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