module CloudFormation.AWS.Pinpoint.GCMChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Pinpoint::GCMChannel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-gcmchannel.html
-- |
-- | - `ApiKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-gcmchannel.html#cfn-pinpoint-gcmchannel-apikey
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-gcmchannel.html#cfn-pinpoint-gcmchannel-enabled
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-gcmchannel.html#cfn-pinpoint-gcmchannel-applicationid
newtype GCMChannel = GCMChannel
  { "ApiKey" :: String
  , "ApplicationId" :: String
  , "Enabled" :: Maybe Boolean
  }

derive instance newtypeGCMChannel :: Newtype GCMChannel _
instance resourceGCMChannel :: Resource GCMChannel where type_ _ = "AWS::Pinpoint::GCMChannel"

gcmcCMChannel :: { "ApiKey" :: String, "ApplicationId" :: String } -> GCMChannel
gcmcCMChannel required = GCMChannel
  (merge required
    { "Enabled" : Nothing
    })