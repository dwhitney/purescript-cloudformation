module CloudFormation.AWS.EC2.NetworkAclEntry where 

import CloudFormation (Value)
import Data.Maybe (Maybe(..))
import Record (merge)
import CloudFormation.Resource (class Resource)
import Data.Newtype (class Newtype)
import Simple.JSON (class WriteForeign)


-- | `AWS::EC2::NetworkAclEntry`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html
-- |
-- | - `CidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-cidrblock
-- | - `Egress`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-egress
-- | - `Icmp`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-icmp
-- | - `Ipv6CidrBlock`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-ipv6cidrblock
-- | - `NetworkAclId`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-networkaclid
-- | - `PortRange`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-portrange
-- | - `Protocol`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-protocol
-- | - `RuleAction`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-ruleaction
-- | - `RuleNumber`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-acl-entry.html#cfn-ec2-networkaclentry-rulenumber
newtype NetworkAclEntry = NetworkAclEntry
  { "CidrBlock" :: Value String
  , "NetworkAclId" :: Value String
  , "Protocol" :: Value Int
  , "RuleAction" :: Value String
  , "RuleNumber" :: Value Int
  , "Egress" :: Maybe (Value Boolean)
  , "Icmp" :: Maybe (Value Icmp)
  , "Ipv6CidrBlock" :: Maybe (Value String)
  , "PortRange" :: Maybe (Value PortRange)
  }

derive instance newtypeNetworkAclEntry :: Newtype NetworkAclEntry _
derive newtype instance writeNetworkAclEntry :: WriteForeign NetworkAclEntry
instance resourceNetworkAclEntry :: Resource NetworkAclEntry where type_ _ = "AWS::EC2::NetworkAclEntry"

networkAclEntry :: { "CidrBlock" :: Value String, "NetworkAclId" :: Value String, "Protocol" :: Value Int, "RuleAction" :: Value String, "RuleNumber" :: Value Int } -> NetworkAclEntry
networkAclEntry required = NetworkAclEntry
  (merge required
    { "Egress" : Nothing
    , "Icmp" : Nothing
    , "Ipv6CidrBlock" : Nothing
    , "PortRange" : Nothing
    })

-- | `AWS::EC2::NetworkAclEntry.Icmp`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html
-- |
-- | - `Code`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html#cfn-ec2-networkaclentry-icmp-code
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html#cfn-ec2-networkaclentry-icmp-type
type Icmp =
  { "Code" :: Maybe (Value Int)
  , "Type" :: Maybe (Value Int)
  }

icmp :: Icmp
icmp =
  { "Code" : Nothing
  , "Type" : Nothing
  }

-- | `AWS::EC2::NetworkAclEntry.PortRange`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html
-- |
-- | - `From`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html#cfn-ec2-networkaclentry-portrange-from
-- | - `To`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-portrange.html#cfn-ec2-networkaclentry-portrange-to
type PortRange =
  { "From" :: Maybe (Value Int)
  , "To" :: Maybe (Value Int)
  }

portRange :: PortRange
portRange =
  { "From" : Nothing
  , "To" : Nothing
  }