module CloudFormation.AWS.EC2.TrafficMirrorTarget where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


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
type TrafficMirrorTarget =
  { "NetworkLoadBalancerArn" :: Maybe String
  , "Description" :: Maybe String
  , "NetworkInterfaceId" :: Maybe String
  , "Tags" :: Maybe (Array Tag)
  }

trafficMirrorTarget :: TrafficMirrorTarget
trafficMirrorTarget =
  { "NetworkLoadBalancerArn" : Nothing
  , "Description" : Nothing
  , "NetworkInterfaceId" : Nothing
  , "Tags" : Nothing
  }