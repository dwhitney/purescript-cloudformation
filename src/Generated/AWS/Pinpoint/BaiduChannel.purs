module CloudFormation.AWS.Pinpoint.BaiduChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::Pinpoint::BaiduChannel`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html
-- |
-- | - `SecretKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-secretkey
-- | - `ApiKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-apikey
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-enabled
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-applicationid
newtype BaiduChannel = BaiduChannel
  { "SecretKey" :: String
  , "ApiKey" :: String
  , "ApplicationId" :: String
  , "Enabled" :: Maybe Boolean
  }

derive instance newtypeBaiduChannel :: Newtype BaiduChannel _
instance resourceBaiduChannel :: Resource BaiduChannel where type_ _ = "AWS::Pinpoint::BaiduChannel"

baiduChannel :: { "SecretKey" :: String, "ApiKey" :: String, "ApplicationId" :: String } -> BaiduChannel
baiduChannel required = BaiduChannel
  (merge required
    { "Enabled" : Nothing
    })