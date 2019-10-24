module AWS.EC2.NetworkInterface where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type NetworkInterface =
  { "SubnetId" :: String
  , "Description" :: Maybe String
  , "GroupSet" :: Maybe (Array String)
  , "InterfaceType" :: Maybe String
  , "Ipv6AddressCount" :: Maybe Int
  , "Ipv6Addresses" :: Maybe InstanceIpv6Address
  , "PrivateIpAddress" :: Maybe String
  , "PrivateIpAddresses" :: Maybe (Array PrivateIpAddressSpecification)
  , "SecondaryPrivateIpAddressCount" :: Maybe Int
  , "SourceDestCheck" :: Maybe Boolean
  , "Tags" :: Maybe (Array Tag)
  }

networkInterface :: { "SubnetId" :: String } -> NetworkInterface
networkInterface required =
  merge required
    { "Description" : Nothing
    , "GroupSet" : Nothing
    , "InterfaceType" : Nothing
    , "Ipv6AddressCount" : Nothing
    , "Ipv6Addresses" : Nothing
    , "PrivateIpAddress" : Nothing
    , "PrivateIpAddresses" : Nothing
    , "SecondaryPrivateIpAddressCount" : Nothing
    , "SourceDestCheck" : Nothing
    , "Tags" : Nothing
    }

type PrivateIpAddressSpecification =
  { "Primary" :: Boolean
  , "PrivateIpAddress" :: String
  }

privateIpAddressSpecification :: { "Primary" :: Boolean, "PrivateIpAddress" :: String } -> PrivateIpAddressSpecification
privateIpAddressSpecification required =
  required

type InstanceIpv6Address =
  { "Ipv6Address" :: String
  }

instanceIpv6Address :: { "Ipv6Address" :: String } -> InstanceIpv6Address
instanceIpv6Address required =
  required