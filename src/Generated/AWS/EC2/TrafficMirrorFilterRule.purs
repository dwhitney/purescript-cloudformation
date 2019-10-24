module CloudFormation.AWS.EC2.TrafficMirrorFilterRule where 

import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation (class Resource)
import Data.Newtype (class Newtype)


-- | `AWS::EC2::TrafficMirrorFilterRule`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html
-- |
-- | - `DestinationPortRange`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-destinationportrange
-- | - `Description`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-description
-- | - `SourcePortRange`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-sourceportrange
-- | - `RuleAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-ruleaction
-- | - `SourceCidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-sourcecidrblock
-- | - `RuleNumber`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-rulenumber
-- | - `DestinationCidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-destinationcidrblock
-- | - `TrafficMirrorFilterId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorfilterid
-- | - `TrafficDirection`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-trafficdirection
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorfilterrule.html#cfn-ec2-trafficmirrorfilterrule-protocol
newtype TrafficMirrorFilterRule = TrafficMirrorFilterRule
  { "RuleAction" :: String
  , "SourceCidrBlock" :: String
  , "RuleNumber" :: Int
  , "DestinationCidrBlock" :: String
  , "TrafficMirrorFilterId" :: String
  , "TrafficDirection" :: String
  , "DestinationPortRange" :: Maybe TrafficMirrorPortRange
  , "Description" :: Maybe String
  , "SourcePortRange" :: Maybe TrafficMirrorPortRange
  , "Protocol" :: Maybe Int
  }

derive instance newtypeTrafficMirrorFilterRule :: Newtype TrafficMirrorFilterRule _
instance resourceTrafficMirrorFilterRule :: Resource TrafficMirrorFilterRule where type_ _ = "AWS::EC2::TrafficMirrorFilterRule"

trafficMirrorFilterRule :: { "RuleAction" :: String, "SourceCidrBlock" :: String, "RuleNumber" :: Int, "DestinationCidrBlock" :: String, "TrafficMirrorFilterId" :: String, "TrafficDirection" :: String } -> TrafficMirrorFilterRule
trafficMirrorFilterRule required = TrafficMirrorFilterRule
  (merge required
    { "DestinationPortRange" : Nothing
    , "Description" : Nothing
    , "SourcePortRange" : Nothing
    , "Protocol" : Nothing
    })

-- | `AWS::EC2::TrafficMirrorFilterRule.TrafficMirrorPortRange`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html
-- |
-- | - `FromPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorportrange-fromport
-- | - `ToPort`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorportrange-toport
type TrafficMirrorPortRange =
  { "FromPort" :: Int
  , "ToPort" :: Int
  }

trafficMirrorPortRange :: { "FromPort" :: Int, "ToPort" :: Int } -> TrafficMirrorPortRange
trafficMirrorPortRange required =
  required