module CloudFormation.AWS.EC2.TrafficMirrorSession where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import CloudFormation.Tag (Tag)
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "TrafficMirrorTargetId" :: Value String
  , "SessionNumber" :: Value Int
  , "NetworkInterfaceId" :: Value String
  , "TrafficMirrorFilterId" :: Value String
  , "Description" :: Maybe (Value String)
  , "VirtualNetworkId" :: Maybe (Value Int)
  , "PacketLength" :: Maybe (Value Int)
  , "Tags" :: Maybe (Value (Array Tag))
  }

derive instance newtypeTrafficMirrorSession :: Newtype TrafficMirrorSession _
derive newtype instance writeTrafficMirrorSession :: WriteForeign TrafficMirrorSession
instance resourceTrafficMirrorSession :: Resource TrafficMirrorSession where type_ _ = "AWS::EC2::TrafficMirrorSession"

trafficMirrorSession :: { "TrafficMirrorTargetId" :: Value String, "SessionNumber" :: Value Int, "NetworkInterfaceId" :: Value String, "TrafficMirrorFilterId" :: Value String } -> TrafficMirrorSession
trafficMirrorSession required = TrafficMirrorSession
  (merge required
    { "Description" : Nothing
    , "VirtualNetworkId" : Nothing
    , "PacketLength" : Nothing
    , "Tags" : Nothing
    })