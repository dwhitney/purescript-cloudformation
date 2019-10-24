module CloudFormation.AWS.EC2.NetworkAclEntry where 

import Data.Maybe (Maybe(..))
import Record (merge)


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
type NetworkAclEntry =
  { "CidrBlock" :: String
  , "NetworkAclId" :: String
  , "Protocol" :: Int
  , "RuleAction" :: String
  , "RuleNumber" :: Int
  , "Egress" :: Maybe Boolean
  , "Icmp" :: Maybe Icmp
  , "Ipv6CidrBlock" :: Maybe String
  , "PortRange" :: Maybe PortRange
  }

networkAclEntry :: { "CidrBlock" :: String, "NetworkAclId" :: String, "Protocol" :: Int, "RuleAction" :: String, "RuleNumber" :: Int } -> NetworkAclEntry
networkAclEntry required =
  merge required
    { "Egress" : Nothing
    , "Icmp" : Nothing
    , "Ipv6CidrBlock" : Nothing
    , "PortRange" : Nothing
    }

-- | `AWS::EC2::NetworkAclEntry.Icmp`
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html
-- |
-- | - `Code`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html#cfn-ec2-networkaclentry-icmp-code
-- | - `Type`
-- |   - http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkaclentry-icmp.html#cfn-ec2-networkaclentry-icmp-type
type Icmp =
  { "Code" :: Maybe Int
  , "Type" :: Maybe Int
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
  { "From" :: Maybe Int
  , "To" :: Maybe Int
  }

portRange :: PortRange
portRange =
  { "From" : Nothing
  , "To" : Nothing
  }