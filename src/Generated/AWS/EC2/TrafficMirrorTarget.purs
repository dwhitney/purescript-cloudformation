module CloudFormation.AWS.EC2.TrafficMirrorTarget where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::TrafficMirrorTarget`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html
-- |
-- | - `NetworkLoadBalancerArn`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html#cfn-ec2-trafficmirrortarget-networkloadbalancerarn
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html#cfn-ec2-trafficmirrortarget-description
-- | - `NetworkInterfaceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html#cfn-ec2-trafficmirrortarget-networkinterfaceid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html#cfn-ec2-trafficmirrortarget-tags
newtype TrafficMirrorTarget = TrafficMirrorTarget
  { "NetworkLoadBalancerArn" :: Maybe (Value String)
  , "Description" :: Maybe (Value String)
  , "NetworkInterfaceId" :: Maybe (Value String)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeTrafficMirrorTarget :: Newtype TrafficMirrorTarget _
derive newtype instance writeTrafficMirrorTarget :: WriteForeign TrafficMirrorTarget
instance resourceTrafficMirrorTarget :: Resource TrafficMirrorTarget where type_ _ = "AWS::EC2::TrafficMirrorTarget"

trafficMirrorTarget :: TrafficMirrorTarget
trafficMirrorTarget = TrafficMirrorTarget
  { "NetworkLoadBalancerArn" : Nothing
  , "Description" : Nothing
  , "NetworkInterfaceId" : Nothing
  , "Tags" : Nothing
  }