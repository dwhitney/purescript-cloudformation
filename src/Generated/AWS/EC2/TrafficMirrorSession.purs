module CloudFormation.AWS.EC2.TrafficMirrorSession where 

import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


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
newtype TrafficMirrorSession = TrafficMirrorSession
  { "TrafficMirrorTargetId" :: String
  , "SessionNumber" :: Int
  , "NetworkInterfaceId" :: String
  , "TrafficMirrorFilterId" :: String
  , "Description" :: Maybe String
  , "VirtualNetworkId" :: Maybe Int
  , "PacketLength" :: Maybe Int
  , "Tags" :: Maybe (Array Tag)
  }

derive instance newtypeTrafficMirrorSession :: Newtype TrafficMirrorSession _
instance resourceTrafficMirrorSession :: Resource TrafficMirrorSession where type_ _ = "AWS::EC2::TrafficMirrorSession"

trafficMirrorSession :: { "TrafficMirrorTargetId" :: String, "SessionNumber" :: Int, "NetworkInterfaceId" :: String, "TrafficMirrorFilterId" :: String } -> TrafficMirrorSession
trafficMirrorSession required = TrafficMirrorSession
  (merge required
    { "Description" : Nothing
    , "VirtualNetworkId" : Nothing
    , "PacketLength" : Nothing
    , "Tags" : Nothing
    })