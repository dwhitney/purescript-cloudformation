module CloudFormation.AWS.PinpointEmail.DedicatedIpPool where 

import Data.Maybe (Maybe(..))
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::PinpointEmail::DedicatedIpPool`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-dedicatedippool.html
-- |
-- | - `PoolName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-dedicatedippool.html#cfn-pinpointemail-dedicatedippool-poolname
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-dedicatedippool.html#cfn-pinpointemail-dedicatedippool-tags
newtype DedicatedIpPool = DedicatedIpPool
  { "PoolName" :: Maybe String
  , "Tags" :: Maybe (Array Tags)
  }

derive instance newtypeDedicatedIpPool :: Newtype DedicatedIpPool _
instance resourceDedicatedIpPool :: Resource DedicatedIpPool where type_ _ = "AWS::PinpointEmail::DedicatedIpPool"

dedicatedIpPool :: DedicatedIpPool
dedicatedIpPool = DedicatedIpPool
  { "PoolName" : Nothing
  , "Tags" : Nothing
  }

-- | `AWS::PinpointEmail::DedicatedIpPool.Tags`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-dedicatedippool-tags.html
-- |
-- | - `Value`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-dedicatedippool-tags.html#cfn-pinpointemail-dedicatedippool-tags-value
-- | - `Key`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-dedicatedippool-tags.html#cfn-pinpointemail-dedicatedippool-tags-key
type Tags =
  { "Value" :: Maybe String
  , "Key" :: Maybe String
  }

tags :: Tags
tags =
  { "Value" : Nothing
  , "Key" : Nothing
  }