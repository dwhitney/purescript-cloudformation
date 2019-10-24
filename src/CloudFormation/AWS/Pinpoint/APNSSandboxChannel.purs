module CloudFormation.AWS.Pinpoint.APNSSandboxChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Pinpoint::APNSSandboxChannel`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html-- |
-- | - `BundleId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-bundleid
-- | - `PrivateKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-privatekey
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-enabled
-- | - `DefaultAuthenticationMethod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-defaultauthenticationmethod
-- | - `TokenKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-tokenkey
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-applicationid
-- | - `TeamId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-teamid
-- | - `Certificate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-certificate
-- | - `TokenKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnssandboxchannel.html#cfn-pinpoint-apnssandboxchannel-tokenkeyid
type APNSSandboxChannel =
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

apnssPNSSandboxChannel :: { "ApplicationId" :: String } -> APNSSandboxChannel
apnssPNSSandboxChannel required =
  merge required
    { "BundleId" : Nothing
    , "PrivateKey" : Nothing
    , "Enabled" : Nothing
    , "DefaultAuthenticationMethod" : Nothing
    , "TokenKey" : Nothing
    , "TeamId" : Nothing
    , "Certificate" : Nothing
    , "TokenKeyId" : Nothing
    }