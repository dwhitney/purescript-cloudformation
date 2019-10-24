module AWS.WAFRegional.RateBasedRule where 

import Data.Maybe (Maybe(..))
import Record (merge)


type RateBasedRule =
  { "MetricName" :: String
  , "RateLimit" :: Int
  , "RateKey" :: String
  , "Name" :: String
  , "MatchPredicates" :: Maybe (Array Predicate)
  }

rateBasedRule :: { "MetricName" :: String, "RateLimit" :: Int, "RateKey" :: String, "Name" :: String } -> RateBasedRule
rateBasedRule required =
  merge required
    { "MatchPredicates" : Nothing
    }

type Predicate =
  { "Type" :: String
  , "DataId" :: String
  , "Negated" :: Boolean
  }

predicate :: { "Type" :: String, "DataId" :: String, "Negated" :: Boolean } -> Predicate
predicate required =
  required