module CloudFormation.AWS.EC2.TrafficMirrorTarget where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)


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