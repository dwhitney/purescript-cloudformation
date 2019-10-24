module AWS.EC2.NetworkAclEntry where 

import Data.Maybe (Maybe(..))
import Record (merge)


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

type Icmp =
  { "Code" :: Maybe Int
  , "Type" :: Maybe Int
  }

icmp :: Icmp
icmp =
  { "Code" : Nothing
  , "Type" : Nothing
  }

type PortRange =
  { "From" :: Maybe Int
  , "To" :: Maybe Int
  }

portRange :: PortRange
portRange =
  { "From" : Nothing
  , "To" : Nothing
  }