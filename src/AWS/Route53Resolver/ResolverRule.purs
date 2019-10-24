module AWS.Route53Resolver.ResolverRule where 

import Data.Maybe (Maybe(..))
import Tag
import Record (merge)


type ResolverRule =
  { "DomainName" :: String
  , "RuleType" :: String
  , "ResolverEndpointId" :: Maybe String
  , "TargetIps" :: Maybe (Array TargetAddress)
  , "Tags" :: Maybe (Array Tag)
  , "Name" :: Maybe String
  }

resolverRule :: { "DomainName" :: String, "RuleType" :: String } -> ResolverRule
resolverRule required =
  merge required
    { "ResolverEndpointId" : Nothing
    , "TargetIps" : Nothing
    , "Tags" : Nothing
    , "Name" : Nothing
    }

type TargetAddress =
  { "Ip" :: String
  , "Port" :: Maybe String
  }

targetAddress :: { "Ip" :: String } -> TargetAddress
targetAddress required =
  merge required
    { "Port" : Nothing
    }