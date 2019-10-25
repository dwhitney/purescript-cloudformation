module CloudFormation.AWS.PinpointEmail.DedicatedIpPool where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::PinpointEmail::DedicatedIpPool`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-dedicatedippool.html
-- |
-- | - `PoolName`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-dedicatedippool.html#cfn-pinpointemail-dedicatedippool-poolname
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpointemail-dedicatedippool.html#cfn-pinpointemail-dedicatedippool-tags
newtype DedicatedIpPool = DedicatedIpPool
  { "PoolName" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tags))
  }

derive instance newtypeDedicatedIpPool :: Newtype DedicatedIpPool _
derive newtype instance writeDedicatedIpPool :: WriteForeign DedicatedIpPool
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
  { "Value" :: Maybe (Value String)
  , "Key" :: Maybe (Value String)
  }

tags :: Tags
tags =
  { "Value" : Nothing
  , "Key" : Nothing
  }