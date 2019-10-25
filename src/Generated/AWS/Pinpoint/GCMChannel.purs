module CloudFormation.AWS.Pinpoint.GCMChannel where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "ApiKey" :: Value String
  , "ApplicationId" :: Value String
  , "Enabled" :: Maybe (Value Boolean)
  }

derive instance newtypeGCMChannel :: Newtype GCMChannel _
derive newtype instance writeGCMChannel :: WriteForeign GCMChannel
instance resourceGCMChannel :: Resource GCMChannel where type_ _ = "AWS::Pinpoint::GCMChannel"

gcmcCMChannel :: { "ApiKey" :: Value String, "ApplicationId" :: Value String } -> GCMChannel
gcmcCMChannel required = GCMChannel
  (merge required
    { "Enabled" : Nothing
    })