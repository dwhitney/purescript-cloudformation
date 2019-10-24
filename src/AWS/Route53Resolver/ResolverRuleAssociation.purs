module AWS.Route53Resolver.ResolverRuleAssociation where 

import Data.Maybe (Maybe(..))
import Record (merge)


type ResolverRuleAssociation =
  { "VPCId" :: String
  , "ResolverRuleId" :: String
  , "Name" :: Maybe String
  }

resolverRuleAssociation :: { "VPCId" :: String, "ResolverRuleId" :: String } -> ResolverRuleAssociation
resolverRuleAssociation required =
  merge required
    { "Name" : Nothing
    }