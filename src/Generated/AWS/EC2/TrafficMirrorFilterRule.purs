module CloudFormation.AWS.EC2.TrafficMirrorFilterRule where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


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
  { "RuleAction" :: Value String
  , "SourceCidrBlock" :: Value String
  , "RuleNumber" :: Value Int
  , "DestinationCidrBlock" :: Value String
  , "TrafficMirrorFilterId" :: Value String
  , "TrafficDirection" :: Value String
  , "DestinationPortRange" :: Maybe (Value TrafficMirrorPortRange)
  , "Description" :: Maybe (Value String)
  , "SourcePortRange" :: Maybe (Value TrafficMirrorPortRange)
  , "Protocol" :: Maybe (Value Int)
  }

derive instance newtypeTrafficMirrorFilterRule :: Newtype TrafficMirrorFilterRule _
derive newtype instance writeTrafficMirrorFilterRule :: WriteForeign TrafficMirrorFilterRule
instance resourceTrafficMirrorFilterRule :: Resource TrafficMirrorFilterRule where type_ _ = "AWS::EC2::TrafficMirrorFilterRule"

trafficMirrorFilterRule :: { "RuleAction" :: Value String, "SourceCidrBlock" :: Value String, "RuleNumber" :: Value Int, "DestinationCidrBlock" :: Value String, "TrafficMirrorFilterId" :: Value String, "TrafficDirection" :: Value String } -> TrafficMirrorFilterRule
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
  { "FromPort" :: Value Int
  , "ToPort" :: Value Int
  }

trafficMirrorPortRange :: { "FromPort" :: Value Int, "ToPort" :: Value Int } -> TrafficMirrorPortRange
trafficMirrorPortRange required =
  required