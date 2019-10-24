module CloudFormation.AWS.Pinpoint.APNSChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Pinpoint::APNSChannel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html
-- |
-- | - `BundleId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-bundleid
-- | - `PrivateKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-privatekey
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-enabled
-- | - `DefaultAuthenticationMethod`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-defaultauthenticationmethod
-- | - `TokenKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-tokenkey
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-applicationid
-- | - `TeamId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-teamid
-- | - `Certificate`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-certificate
-- | - `TokenKeyId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-apnschannel.html#cfn-pinpoint-apnschannel-tokenkeyid
newtype APNSChannel = APNSChannel
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

derive instance newtypeAPNSChannel :: Newtype APNSChannel _
instance resourceAPNSChannel :: Resource APNSChannel where type_ _ = "AWS::Pinpoint::APNSChannel"

apnscPNSChannel :: { "ApplicationId" :: String } -> APNSChannel
apnscPNSChannel required = APNSChannel
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