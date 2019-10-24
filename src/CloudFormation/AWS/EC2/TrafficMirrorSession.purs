module CloudFormation.AWS.EC2.TrafficMirrorSession where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)


-- | `AWS::EC2::TrafficMirrorSession`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html
-- |
-- | - `TrafficMirrorTargetId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-trafficmirrortargetid
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-description
-- | - `SessionNumber`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-sessionnumber
-- | - `VirtualNetworkId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-virtualnetworkid
-- | - `PacketLength`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-packetlength
-- | - `NetworkInterfaceId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-networkinterfaceid
-- | - `TrafficMirrorFilterId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-trafficmirrorfilterid
-- | - `Tags`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-tags
type TrafficMirrorSession =
  { "TrafficMirrorTargetId" :: String
  , "SessionNumber" :: Int
  , "NetworkInterfaceId" :: String
  , "TrafficMirrorFilterId" :: String
  , "Description" :: Maybe String
  , "VirtualNetworkId" :: Maybe Int
  , "PacketLength" :: Maybe Int
  , "Tags" :: Maybe (Array Tag)
  }

trafficMirrorSession :: { "TrafficMirrorTargetId" :: String, "SessionNumber" :: Int, "NetworkInterfaceId" :: String, "TrafficMirrorFilterId" :: String } -> TrafficMirrorSession
trafficMirrorSession required =
  merge required
    { "Description" : Nothing
    , "VirtualNetworkId" : Nothing
    , "PacketLength" : Nothing
    , "Tags" : Nothing
    }