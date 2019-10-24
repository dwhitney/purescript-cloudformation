module AWS.Route53Resolver.ResolverEndpoint where 

import Tag
import Data.Maybe (Maybe(..))
import Record (merge)


type ResolverEndpoint =
  { "IpAddresses" :: Array IpAddressRequest
  , "Direction" :: String
  , "SecurityGroupIds" :: Array String
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  }

resolverEndpoint :: { "IpAddresses" :: Array IpAddressRequest, "Direction" :: String, "SecurityGroupIds" :: Array String } -> ResolverEndpoint
resolverEndpoint required =
  merge required
    { "Tags" : Nothing
    , "Name" : Nothing
    }

type IpAddressRequest =
  { "SubnetId" :: String
  , "Ip" :: Maybe String
  }

ipAddressRequest :: { "SubnetId" :: String } -> IpAddressRequest
ipAddressRequest required =
  merge required
    { "Ip" : Nothing
    }