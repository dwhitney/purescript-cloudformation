module AWS.EC2.Subnet where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type Subnet =
  { "CidrBlock" :: String
  , "VpcId" :: String
  , "AssignIpv6AddressOnCreation" :: Maybe Boolean
  , "AvailabilityZone" :: Maybe String
  , "Ipv6CidrBlock" :: Maybe String
  , "MapPublicIpOnLaunch" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tag)
  }

subnet :: { "CidrBlock" :: String, "VpcId" :: String } -> Subnet
subnet required =
  merge required
    { "AssignIpv6AddressOnCreation" : Nothing
    , "AvailabilityZone" : Nothing
    , "Ipv6CidrBlock" : Nothing
    , "MapPublicIpOnLaunch" : Nothing
    , "Tags" : Nothing
    }