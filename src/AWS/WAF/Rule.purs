module AWS.WAF.Rule where 

import Data.Maybe (Maybe(..))
import Record (merge)


type Rule =
  { "MetricName" :: String
  , "Name" :: String
  , "Predicates" :: Maybe (Array Predicate)
  }

rule :: { "MetricName" :: String, "Name" :: String } -> Rule
rule required =
  merge required
    { "Predicates" : Nothing
    }

type Predicate =
  { "DataId" :: String
  , "Negated" :: Boolean
  , "Type" :: String
  }

predicate :: { "DataId" :: String, "Negated" :: Boolean, "Type" :: String } -> Predicate
predicate required =
  required