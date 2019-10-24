module CloudFormation.AWS.Pinpoint.BaiduChannel where 

import Data.Maybe (Maybe(..))
import Record (merge)


-- | `AWS::Pinpoint::BaiduChannel`http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html-- |
-- | - `SecretKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-secretkey
-- | - `ApiKey`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-apikey
-- | - `Enabled`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-enabled
-- | - `ApplicationId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-applicationid
type BaiduChannel =
  { "SecretKey" :: String
  , "ApiKey" :: String
  , "ApplicationId" :: String
  , "Enabled" :: Maybe Boolean
  }

baiduChannel :: { "SecretKey" :: String, "ApiKey" :: String, "ApplicationId" :: String } -> BaiduChannel
baiduChannel required =
  merge required
    { "Enabled" : Nothing
    }