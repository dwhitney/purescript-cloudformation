module CloudFormation.AWS.Pinpoint.BaiduChannel where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "SecretKey" :: Value String
  , "ApiKey" :: Value String
  , "ApplicationId" :: Value String
  , "Enabled" :: Maybe (Value Boolean)
  }

derive instance newtypeBaiduChannel :: Newtype BaiduChannel _
derive newtype instance writeBaiduChannel :: WriteForeign BaiduChannel
instance resourceBaiduChannel :: Resource BaiduChannel where type_ _ = "AWS::Pinpoint::BaiduChannel"

baiduChannel :: { "SecretKey" :: Value String, "ApiKey" :: Value String, "ApplicationId" :: Value String } -> BaiduChannel
baiduChannel required = BaiduChannel
  (merge required
    { "Enabled" : Nothing
    })